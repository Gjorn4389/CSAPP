#include <stdio.h>
#include <stdlib.h>
#include <stdarg.h>
#include <sys/time.h>

#include "cachelab.h"

#define LINE_BUF    1024

#define POWER_2(n) 1 << n
#define SET_INDEX(a, s, b) (a >> b) & ((1 << s) - 1)
#define TAG_INFO(a, s, b) a >> (s + b)

int verbose_flag = 1, timestamp = 0;
int hit_count = 0, miss_count = 0, eviction_count = 0;

void debug(const char *__restrict __fmt, ...) {
    if (verbose_flag) {
        va_list args;
        va_start(args, __fmt);
        vfprintf(stdout, __fmt, args);
        va_end(args);
    }
}

// line struct
typedef struct {
    int valid;
    int tag;      // use to check line and address
    int timestamp;
} Block, *Set;

typedef struct {
    int s, E, b;
    Set *head;
} Cache;

typedef struct {
    char op;
    int size;
    unsigned long address;
} Operation;

int contains_verbose(char *s) {
    char *cp = s;
    while (*cp != '\0') {
        if (*cp++ == 'v') {
            return 1;
        }
    }
    return 0;
}

Cache allocate_set(int s, int E, int b) {
    int S = 1 << s;
    Set *head = calloc(S, sizeof(Set));
    for (int i = 0; i < S; i++) {
        head[i] = calloc(E, sizeof(Block));
    }
    Cache c = {s, E, b, head};
    return c;
}

void free_set(Cache *c) {
    int S = 1 << c->s;
    for (int i = 0; i < S; i++) {
        free(c->head[i]);
        c->head[i] = NULL;
    }
    free(c->head);
    c->head = NULL;
}

Block* find_same_block(Set s, int E, int tag) {
    for (int i = 0; i < E; i++) {
        if (s[i].valid && s[i].tag == tag) {
            return s + i;
        }
    }
    return NULL;
}

Block* find_empty_block(Set s, int E) {
    for (int i = 0; i < E; i++) {
        if (!(s[i].valid)) {
            return s + i;
        }
    }
    return NULL;
}

Block* find_evict_block(Set s, int E) {
    int index = 0;
    for (int i = 1; i < E; i++) {
        if (s[i].timestamp < s[index].timestamp) {
            index = i;
        }
    }
    return s + index;
}

void load(Cache *c, Operation *op, int from_main) {
    int set_index = SET_INDEX(op->address, c->s, c->b);
    int tag_info = TAG_INFO(op->address, c->s, c->b);

    if (from_main) {
        debug("%c %lx,%d ", op->op, op->address, op->size);
    }

    Block* tag_pt = find_same_block(c->head[set_index], c->E, tag_info);
    if (tag_pt) {
        hit_count++;
        debug("hit ");
    } else {
        miss_count++;
        debug("miss ");

        tag_pt = find_empty_block(c->head[set_index], c->E);
        if (tag_pt) {
            tag_pt->valid = 1;
        } else {
            eviction_count++;
            tag_pt = find_evict_block(c->head[set_index], c->E);
            debug("eviction ");
        }

        tag_pt->tag = tag_info;
    }
    tag_pt->timestamp = timestamp++;
    if (from_main) {
        debug("\n");
    }
}

void modify(Cache *c, Operation *op) {
    debug("%c %lx,%d ", op->op, op->address, op->size);
    load(c, op, 0);
    load(c, op, 0);
    debug("\n");
}

int main(int argc, char *argv[])
{
    if (contains_verbose(argv[1]) || contains_verbose(argv[2])) {
        verbose_flag = 1;
    }

    // init values
    char cmd;
    unsigned long address = 0;
    int size = 0;

    // init cache
    char *s_str = argv[argc - 7];   int s = atoi(s_str);
    char *e_str = argv[argc - 5];   int E = atoi(e_str);
    char *b_str = argv[argc - 3];   int b = atoi(b_str);
    char *trace_file = argv[argc - 1];

    Cache cache = allocate_set(s, E, b);
    
    // read trace file
    FILE* read_fp = fopen(trace_file, "r");
    char *line = malloc(sizeof(char) * LINE_BUF);
    while (fgets(line, LINE_BUF, read_fp)) {
        // get operations
        sscanf(line, "\n%c %lx, %d", &cmd, &address, &size);
        Operation op = {cmd, size, address};
        // recpgnize by command
        if (cmd == 'M') {
            modify(&cache, &op);
        } else if (cmd == 'L' || cmd == 'S') {
            load(&cache, &op, 1);
        } else if (cmd == 'I') {
            continue;
        }
    }
    fclose(read_fp);
    free_set(&cache);

    // debug("%d %d %d\n", hit_count, miss_count, eviction_count);
    printSummary(hit_count, miss_count, eviction_count);
    return 0;
}
