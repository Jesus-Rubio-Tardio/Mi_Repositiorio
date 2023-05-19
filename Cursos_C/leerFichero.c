#include <fcntl.h>
#include <unistd.h>
#include <stdio.h>

int main(void)
{
    int fd;
    char buf[10];
    ssize_t number_bytes;

    fd = open("/home/jesus/Escritorio/Cursos_C/miFichero", O_RDONLY);

    if(fd == -1)
    {
        printf("Error al abrir el archivo");
    }
    else
    {
        number_bytes = read(fd,buf, 5);
        close(fd);
        if(number_bytes == 0)
        {
            printf("Archivo vacio");
        }
        else
        {
            printf("El numero de caracteres es %d , contenido: %s \n", (int)number_bytes. buf);
        }
    }

    return 0;

}