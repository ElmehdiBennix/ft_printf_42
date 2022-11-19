/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ebennix <ebennix@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2022/11/14 18:45:45 by ebennix           #+#    #+#             */
/*   Updated: 2022/11/19 04:50:14 by ebennix          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFT_H
# define LIBFT_H

# include <stdio.h>
# include <unistd.h>
# include <stdarg.h>

int ft_printchar(char c);
int ft_printstr(char *c);
int ft_printunsigned(unsigned int n);
int ft_printnbr(int n);
int ft_printptr(unsigned long n);
int ft_lowhex(unsigned int n);
int ft_caphex(unsigned int n);
int check(const char str, va_list arg);
int ft_printf(const char *, ...);
#endif