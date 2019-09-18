/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/17 00:37:46 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/17 00:52:19 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_memcmp(const void *buf1, const void *buf2, size_t n)
{
	unsigned char s1;
	unsigned char s2;

	while (n--)
	{
		s1 = * (unsigned char *) buf1;
		s2 = * (unsigned char *) buf2;
		if (s1 != s2)
			return (s1 - s2);
	}
	return (0);
}