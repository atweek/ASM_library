#include <stdio.h>

size_t ft_strlen(const char *s);
char *ft_strcpy(char * dst, char * src);
int ft_strcmp(const char *s1, const char *s2);

int main(void)
{
	char *str = "hello world!";
	char dst[511];
	printf("ft_strlen -> %s [len = %zu]\n",str,ft_strlen(str));
	printf("ft_strcpy -> %s [dst = %s]\n",str,ft_strcpy(dst, str));
	return 0;
}