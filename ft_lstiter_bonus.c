#include "libft.h"

void	ft_lstiter(t_list *lst, void (*f)(void *))
{
	if (!lst)
		return ;
	while (lst)
	{
		f(lst->content);
		lst = lst->next;
	}
}

/*

->	The use of this is to apply a function that expects to 
	work with any kind of data, to the content of each node on a list.
	We'd need to make sure the function can work with 
	the data type of the content. 
	In a main, we'd feed it with the list and the function. 
	This function then would get the ->content value for us.

*/