/**
 * Calculate the max arguments amount of print.
 * Print the symbol table.
 */

#include "prog1.h"
#include "slp.h"
#include "util.h"
#include <stdio.h>

typedef struct M_table_ *M_table;
typedef struct M_intAndTable_ *M_intAndTable;

struct M_table_ {
  string id;
  int value;
  M_table tail;
};
struct M_intAndTable_ {
  int i;
  M_table t;
};

M_table M_Table(string id, int value, M_table tail) {
  M_table t = checked_malloc(sizeof(*t));
  t->id = id;
  t->value = value;
  t->tail = tail;
  return t;
}
M_intAndTable M_IntAndTable(int i, M_table t) {
  M_intAndTable it = checked_malloc(sizeof(*it));
  it->i = i;
  it->t = t;
  return it;
}

// Function declarations
int maxargs(A_stm s);
void interp(A_stm s);
int lookup(M_table t, string key);

// Return the max arguments number of print statement.
int maxargs(A_stm s) {
  // TODO:
}


// Interpreter
void interp(A_stm s) {
  // Symbol table
  M_table t = checked_malloc(sizeof(*t));
  t->tail = NULL;
  // Scan the grammar tree.
  // TODO:
  // Print the symbol table.
  while (t->tail != NULL) {
    printf("%d", t->value);
    t = t->tail;
  }
}


// Return the value of the symbol node.
int lookup(M_table t, string key) {
  while (t->tail != NULL) {
    if (t->id == key) {
      return t->value;
    }
    t = t->tail;
  }
  return 0;
}

int main(void) {
  // Instance of grammar tree
  A_stm s = prog();
  // First scanning: calculate the arguments number.
  // The maximum amount of arguments 
  printf("%d", maxargs(s));
  // Second scanning: print the symbol table.
  interp(s);

  return 0;
}
