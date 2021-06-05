//Week01 Q6 - structs, malloc, sizeof revision
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)

struct node {
    int data;
    int whatever;
};

int main(void) {
    struct node *a, *b, *c, *d;
    a = NULL;
    b = malloc(sizeof *b);              // dereference the pointer before using sizeof
    c = malloc(sizeof (struct node));   // (struct node) must be in brackets
    d = malloc(8);                      // no guarantee that an integer is 4 bytes on every system
    c = a;
    d.data = 42;                        //d is a pointer, cannot access fields directly
    c->data = 42;                       //works! using stab notation to access fields of a struct from pointer
    (*c).data = 42;                     //dereferencing first then using . also works
    return 0;
}
