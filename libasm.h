#ifndef LIBASM_H
#define LIBASM_H

#include <unistd.h>
#include <stdio.h>
#include <errno.h>

size_t ft_write(int fd, void *buf, size_t size);
size_t ft_strlen(char *str);
int    ft_strcmp(char *s1, char *s2);
ssize_t ft_read(int fd, char *buf, size_t size);
#endif