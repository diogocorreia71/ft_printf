/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: diodos-s <diodos-s@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/05/02 14:30:40 by diodos-s          #+#    #+#             */
/*   Updated: 2023/05/03 11:46:47 by diodos-s         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include <stdarg.h>
# include "libft/libft.h"

int	ft_printchar(char c);
int	ft_printstr(char *s);
int	ft_printpercent(void);
int	ft_print_hex(unsigned int num, const char format);
int	ft_print_unsigned(unsigned int n);
int	ft_print_ptr(unsigned long ptr);
int	ft_printf(const char *format, ...);
int	ft_printnbr(int num);

#endif
