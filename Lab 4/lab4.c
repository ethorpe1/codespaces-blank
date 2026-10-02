#include <stdio.h>
#include <stdlib.h>

// assembly function that adds up the array
extern int sum_array(int *arr, int count);

int main(int argc, char *argv[]) {

    // make sure a file was given
    if (argc < 2) {
        printf("Usage: %s <filename>\n", argv[0]);
        return 1;
    }

    // open the file
    FILE *fp = fopen(argv[1], "r");
    if (fp == NULL) {
        printf("Error: could not open file\n");
        return 1;
    }

    // first line is the number of integers
    int count;
    fscanf(fp, "%d", &count);

    // allocate array and read the integers in
    int *arr = malloc(count * sizeof(int));
    for (int i = 0; i < count; i++) {
        fscanf(fp, "%d", &arr[i]);
    }

    fclose(fp);

    // call assembly function to sum everything
    int total = sum_array(arr, count);
    printf("Sum = %d\n", total);

    free(arr);
    return 0;
}

