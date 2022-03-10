/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: cchromos <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/05/05 16:50:18 by cchromos          #+#    #+#             */
/*   Updated: 2021/05/05 16:50:21 by cchromos         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <string.h>

extern int ft_strlen(char *);
extern char *ft_strcpy(char *, char *);
extern int ft_strcmp(char *, char *);
extern ssize_t ft_write(int, const void *, size_t);
extern ssize_t ft_read(int, void *, size_t);
extern char *ft_strdup(const char *);

int main()
{
	char i[11] = "qrgglsssss";
	int x;

	x = ft_strlen(i);
	printf("strlen (%s) = %d\n", i, x);

	char j[11] = "qqqqqqqqqq";
	char *a = ft_strcpy(j, i);
	printf("strcpy (%s) = %s\n", j, a);

	char c[11] = "Tripouille";
	char d[10] = "Tripouill";
	int b = ft_strcmp(c, d);
	printf("ft_strcmp (%s, %s) = %d\n", c, d, b);

	int fd = open("text", O_WRONLY);
	char g[8] = "thes#p#";
	ssize_t e = ft_write(1, NULL, 3);
	printf("ft_write (%s) = %ld\n", NULL, e);
	ssize_t f = write(fd, NULL, 3);
	printf("write (%s) = %ld\n", NULL, f);
	close(fd);

	// int fd = open("text", O_RDONLY);
	// char buf[1024];
	// // printf("buf before = %s\n", buf);
	// // ssize_t h = ft_read(0, buf, 1024);
	// // printf("ft_read (%s) = %ld\n", buf, h);
	// close(fd);
	// char buffer[1024];
	// // printf("buffer before = %s\n", buffer);
	// fd = open("text", O_RDONLY);
	// ssize_t k = read(fd, buffer, 1024);
	// printf("read (%s) = %ld\n", buffer, k);
	// close(fd);

	char l[4] = "abc";
	printf("strdup (%s) = %s|\n", l, strdup(l));
	char *m = ft_strdup(l);
	printf("ft_strdup (%s) = %s|\n", l, m);

	return (0);
}

