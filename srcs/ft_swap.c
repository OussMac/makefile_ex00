#include "../includes/ft.h"

void	ft_swap(int *a, int *b)
{
	int	kaskhawy;

	kaskhawy = *a;
	*a = *b;
	*b = kaskhawy;
}