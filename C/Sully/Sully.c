#include <stdio.h>
#include <stdlib.h>

#define FILENAME "Sully_"
#define STDOUT 1
#define COMPILE "gcc -Wall -Werror -Wextra %1$s -o Sully && ./Sully\n"
#define COPY() char *replicate(char *file, int i) {sprintf(file,"%s%d.c",FILENAME,i);FILE*f=fopen(file,"w");if (f == NULL) return (NULL);if (fprintf(f,SOURCE,10,34,SOURCE,FILENAME,92,i) < 0) {fclose(f); return (NULL);} if (fclose(f) != 0) return (NULL);return (file);}
#define MAIN() COPY() int main() {char command[100];char file[100];char *filename;int i = 5;if (--i < 0) return(0);filename = replicate(file,i);if (filename == NULL) return (1);sprintf(command,COMPILE,filename);dprintf(STDOUT,"%s",command);if (system(command) != 0) return (1);return (0);}
#define SOURCE "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c#define FILENAME %2$c%4$s%2$c%1$c#define STDOUT 1%1$c#define COMPILE %2$cgcc -Wall -Werror -Wextra %%1$s -o Sully && ./Sully%5$cn%2$c%1$c#define COPY() char *replicate(char *file, int i) {sprintf(file,%2$c%%s%%d.c%2$c,FILENAME,i);FILE*f=fopen(file,%2$cw%2$c);if (f == NULL) return (NULL);if (fprintf(f,SOURCE,10,34,SOURCE,FILENAME,92,i) < 0) {fclose(f); return (NULL);} if (fclose(f) != 0) return (NULL);return (file);}%1$c#define MAIN() COPY() int main() {char command[100];char file[100];char *filename;int i = %6$i;if (--i < 0) return(0);filename = replicate(file,i);if (filename == NULL) return (1);sprintf(command,COMPILE,filename);dprintf(STDOUT,%2$c%%s%2$c,command);if (system(command) != 0) return (1);return (0);}%1$c#define SOURCE %2$c%3$s%2$c%1$cMAIN()%1$c"
MAIN()
