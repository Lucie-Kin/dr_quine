#include <stdio.h>
#define FILENAME "Grace_kid.c"//one comment
#define WRITE() int main(){FILE*f=fopen(FILENAME,"w");fprintf(f,SOURCE,10,34,SOURCE,47);fclose(f);return (0);}
#define SOURCE "#include <stdio.h>%1$c#define FILENAME %2$cGrace_kid.c%2$c%4$c%4$cone comment%1$c#define WRITE() int main(){FILE*f=fopen(FILENAME,%2$cw%2$c);fprintf(f,SOURCE,10,34,SOURCE,47);fclose(f);return (0);}%1$c#define SOURCE %2$c%3$s%2$c%1$cWRITE()%1$c"
WRITE()
