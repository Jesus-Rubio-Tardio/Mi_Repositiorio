#include <sys/inotify.h>
#include <unistd.h>
#include <stdio.h>

int main(void)
{
    int fd, wd;
    char buf[200];

    fd = inotify_init();
    wd = inotify_add_watch(fd, "/home/jesus/Escritorio/Cursos_C", IN_CLOSE_WRITE);

    while(1)
    {
        read(fd, buf, 200);
        printf("Archivo escrito y cerrado es: %s \n", ((struct inotify_event)buf)->name);

    }

    return 0;
}