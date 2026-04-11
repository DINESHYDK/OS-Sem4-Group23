#include <stdio.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char *argv[])
{
    if (argc != 3) {
        printf("Usage: custom_cp <source> <destination>\n");
        return 1;
    }

    int src = open(argv[1], O_RDONLY);
    if (src < 0) {
        printf("Error: Cannot open source file %s\n", argv[1]);
        return 1;
    }

    int dest = open(argv[2], O_WRONLY | O_CREAT | O_TRUNC, 0666);
    if (dest < 0) {
        printf("Error: Cannot create destination file %s\n", argv[2]);
        close(src);
        return 1;
    }

    char buffer[1024];
    int bytes;
    while ((bytes = read(src, buffer, sizeof(buffer))) > 0) {
        write(dest, buffer, bytes);
    }

    close(src);
    close(dest);
    printf("File copied successfully: %s -> %s\n", argv[1], argv[2]);
    return 0;
}