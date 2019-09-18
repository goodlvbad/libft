#ifndef LIBFT_H
# define LIBFT_H

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>


void	*ft_memset(void *dst, int c, size_t len);
void	ft_bzero(void *b, size_t len);
void	*ft_memcpy(void *dst, const void *src, size_t n);
void	*ft_memccpy(void *dst, const void *src, int c, size_t n);
void	*ft_memmove(void *s1, const void *s2, size_t n);
void	*ft_memchr(const void *arr, int c, size_t n);

size_t	ft_strlen(const char *str);
size_t	ft_strlcat(char *dst, const char *src, size_t size);

char	*ft_strdup(const char *src);
char	*ft_strcpy(char *dst, const char *src);

int ft_memcmp(const void *buf1, const void *buf2, size_t n);
int	ft_strcmp(const char *s1, const char *s2);
int	ft_atoi(const char *str);
int ft_isascii(int c);

int	ft_isdigit(int c);


void	ft_putchar_fd(char c, int fd);
void	ft_putstr_fd(const char *str, int fd);
void	ft_putnbr_fd(int nb, int fd);

void	ft_putchar(char c);
void	ft_putstr(const char *str);
void	ft_putnbr(int nb);

void	*ft_memalloc(size_t size);

#endif