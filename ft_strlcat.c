/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strlcat.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ride-sou <ride-sou@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/14 15:25:14 by ride-sou          #+#    #+#             */
/*   Updated: 2023/04/18 16:43:38 by ride-sou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

size_t	ft_strlcat(char *dst, const char *src, size_t size)
{
	size_t	i;
	size_t	len_src;
	size_t	len_dst;
	size_t	j;

	len_dst = ft_strlen(dst);
	len_src = ft_strlen(src);
	i = len_dst;
	if (size > 0 && i < (size - 1))
	{
		j = 0;
		while (i < (size - 1) && src[j] != '\0')
		{
			dst[i] = src[j];
			i++;
			j++;
		}
		dst[i] = '\0';
	}
	if (len_dst > size)
		return (size + len_src);
	return (len_dst + len_src);
}
