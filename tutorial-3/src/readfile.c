#include <stdio.h>

int main()
{
	FILE *fp = NULL;
	int c;

	fp = fopen("a.data","r");
	if (fp) {
		while ((c = getc(fp)) != EOF){
			putchar(c);
		}
		fclose(fp);
	}
}
