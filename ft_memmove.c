/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/17 00:22:52 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/18 00:13:49 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memmove(void *dst, const void *src, size_t n)
{
	char *d;
	char *s;

	d = (void *)dst;
	s = (void *)src;
	while (n--)
		*d++ = *s++;
	return (dst);
}