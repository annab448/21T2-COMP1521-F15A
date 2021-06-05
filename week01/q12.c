//Week 1 Q12 - creating simple structs
//Q13 - writing a function that changes a struct
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NAME_LEN 100
#define MAX_TYPE_LEN 100

//defining the struct
struct pet {
    char name[MAX_NAME_LEN];
    char type[MAX_TYPE_LEN];
    int age;
    int weight;
};

void print_pet(struct pet *my_pet);
void age_up(struct pet *fluffy);

int main(void) {

    struct pet fluffy;
    //filling in the fields
    strcpy(fluffy.name, "Fluffy");
    strcpy(fluffy.type, "Axolotl");
    fluffy.age = 7;
    fluffy.weight = 300;
    
    print_pet(&fluffy);
    
    //calling a function that will edit the struct - the function
    //needs a struct pointer, so we pass in the address of the
    //struct
    age_up(&fluffy);
    print_pet(&fluffy);
    return 0;
}

void age_up(struct pet *fluffy) {
    //accessing fields of a struct using a struct pointer
    //fluffy->age is the same as (*fluffy).age
    double old_age = fluffy->age;
    fluffy->age ++;
    double increase = fluffy->age/old_age;
    fluffy->weight = increase*fluffy->weight;
}

void print_pet(struct pet *my_pet) {
    printf("Name: %s\n", my_pet->name);
    printf("Type: %s\n", my_pet->type);
    printf("Age: %d\n", my_pet->age);
    printf("Weight: %d\n", my_pet->weight);
}
