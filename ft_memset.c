void	*memset(void *dst, int val, size_t len)
{
unsigned char *p = dst;
while (len-- > 0)
*p++ = val;
return dst;
}
