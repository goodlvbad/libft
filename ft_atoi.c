/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/17 01:21:01 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/17 01:34:33 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_atoi(const char *str)
{
	int res;
	int flag;

	res = 0;
	flag = 0;
	while (*str >= 0 && *str <= 32)
		str++;
	if (*str == '+')
	{
		flag = 1;
		str++;
	}
	if (*str == '-')
	{
		flag = -1;
		str++;
	}
	while (*str >= '0' && *str <= '9')
		res = res * 10 + (*str - '0');
	return (res * flag);
}
