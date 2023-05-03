/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printstd.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: diodos-s <diodos-s@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/02 14:38:22 by diodos-s          #+#    #+#             */
/*   Updated: 2023/05/03 11:45:02 by diodos-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "ft_printf.h"

int	ft_printchar(char c)
{
	return (write(1, &c, 1));
}

int	ft_printstr(char *s)
{
	if (!s)
		return (write(1, "(null)", 6));
	return (write(1, s, ft_strlen(s)));
}

int	ft_printnbr(int num)
{
	char	*num_to_str;
	int		length;

	ft_putnbr_fd(num, 1);
	num_to_str = ft_itoa(num);
	length = ft_strlen(num_to_str);
	free(num_to_str);
	return (length);
}

int	ft_printpercent(void)
{
	return (write(1, &"%", 1));
}
