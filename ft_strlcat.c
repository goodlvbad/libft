/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/18 21:53:14 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/18 21:57:39 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	const size_t srclen;
	const size_t dstlen;

	srclen = ft_strlen(src);
	dstlen = ft_strnlen(dst, size);
	if (dstlen == size)
		return (size + srclen);
	if (srclen < size - dstlen)
		ft_memcpy((dst + dstlen), src, (srclen + 1));
	else
	{
		ft_memcpy((dst + dstlen), src, (size - 1));
		dst[dstlen + size - 1] = '\0';
	}
	return (dstlen + srclen);
}