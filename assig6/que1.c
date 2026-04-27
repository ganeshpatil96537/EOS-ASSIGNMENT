
#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int i,ret;

    for (i = 0; i < 5; i++) {
        ret = fork();

        if (ret < 0) {
            perror("fork failed");
            exit(1);
        }
        else if (ret == 0) {
            
            printf("Child %d: PID = %d, Parent PID = %d\n",
                   i, getpid(), getppid());
            exit(0);  
        }
    }

   
    for (i = 0; i < 5; i++) {
        wait(NULL);
    }

    printf("Parent process (PID = %d): All children finished.\n", getpid());

    return 0;
}




















