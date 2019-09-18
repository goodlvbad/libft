/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/16 23:47:36 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/18 01:15:10 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	char *p;
	char *d;
	char *s;

	p = (char *)ft_memchr(src, c, n);
	if (p != NULL)
	{
		d = (void *)dst;
		s = (void *)src;
		while (n--)
			*d++ = *s++;
		return (dst);
	}
	else
		return (NULL);
}