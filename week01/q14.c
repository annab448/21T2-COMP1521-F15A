//Week 1 Q14 - copying command line arguments to struct
//Written by Anna Brew for COMP1521
//Date: 4/06/21 (21T2)

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#define MAX_NAME_LEN 100
#define MAX_TYPE_LEN 100

struct pet {
    char name[MAX_NAME_LEN];
    char type[MAX_TYPE_LEN];
    int age;
    int weight;
};

//Function to print pet struct contents
void print_pet(struct pet *my_pet);

int main(int argc, char *argv[]) {
    //Checking the correct number of command line args are entered
    if (argc != 5) {
        printf("Expected 4 Command Line Arguments: Name Type Age Weight\n");
        return 1;
    }
    
    struct pet my_pet;
    
    //strings cannot be assigned directly, strcpy is used instead
    strcpy(my_pet.name, argv[1]);
    strcpy(my_pet.type, argv[2]);
    
    //the strtol function converts the string command line arguments into
    //long integers
    my_pet.age = strtol(argv[3], NULL, 10);
    my_pet.weight = strtol(argv[4], NULL, 10);
    
    //print pet to show that the fields are filled correctly
    print_pet(&my_pet);
    return 0;
}

//prints all the fields of a pet struct
void print_pet(struct pet *my_pet) {
    printf("Name: %s\n", my_pet->name);
    printf("Type: %s\n", my_pet->type);
    printf("Age: %d\n", my_pet->age);
    printf("Weight: %d\n", my_pet->weight);
}
