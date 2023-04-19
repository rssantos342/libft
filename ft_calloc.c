/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_calloc.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ride-sou <ride-sou@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/04/18 17:39:42 by ride-sou          #+#    #+#             */
/*   Updated: 2023/04/18 19:47:56 by ride-sou         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_calloc(size_t nmemb, size_t size)
{
	char	*memory;
	size_t	i;

	i = 0;
	memory = malloc(nmemb * size);
	if (memory == NULL)
		return (0);
	while (i < nmemb * size)
	{
		memory[i] = 0;
		i++;
	}
	return (memory);
}
