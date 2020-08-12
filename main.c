#include "libasm.h"
#include <unistd.h>
#include <fcntl.h>
#include <string.h>

int main()
{
	int fd;
	errno = 0;
	fd = open("test.txt", O_RDWR);

	char buf[100];
	printf("write_rv = %zu\n",ft_write(1, "42tokyo\n", 8));
	printf("strlen_rv = %zu\n",ft_strlen("42tokyo\n"));
	fd = -1;
	printf("read_rv = %d\n",ft_read(fd, buf, -100));
	printf("%s\n",strerror(errno));
	buf[10] = '\0';
	printf("%s\n", buf);
	printf("strcmp_rv_zero = %d\n",strcmp("12345", "12345"));
	printf("strcmp_rv_min = %d\n",strcmp("12345", "54321"));
	printf("strcmp_rv_pozi = %d\n",strcmp("54321", "12345"));
	close(fd);

}
