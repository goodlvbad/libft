/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: oearlene <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/09/17 01:21:01 by oearlene          #+#    #+#             */
/*   Updated: 2019/09/20 04:52:16 by oearlene         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_atoi(const char *str)
{
	signed char		flag;
	long long int	res;

	flag = 1;
	res = 0;
	while (*str == '\n' || *str == '\t' || *str == '\v' || *str == ' ' ||
		   *str == '\f' || *str == '\r')
		str++;
	if (*str == '-' || *str == '+')
	{
		if (*str == '-')
			flag = -1;
		str++;
	}
	while (ft_isdigit((int)*str))
	{
		res = res * 10 + *str - '0';
		str++;
	}
	return (res * flag);
}
