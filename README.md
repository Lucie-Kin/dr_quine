#
## COLLEEN
### ASM
| Code | Name | Ascii |
|:--------:|:---------:|:---------:|
| 34 | quote | " |
| 10 | backlash n | \n |
| 59 | semi-colomn | ; |
| 9 | tab | \t |
| 92 | backlash | \ |
| 47 | slash | / |
| 42 | asterisk | * |

| Register | Ref | code |
|:--------:|:---------:|:---------:|
| rsi | %1$s | string src |
| rdx | %2$c | char 34 |
| rcx | %3$c | char 10 |
| r8 | %4$c | char 47 |
| r9 | %5$c | char 9 |

Commande pour tester:<br>
```bash
nasm -f elf64 Colleen.s -o test.o; gcc test.o -o test;./test > tmp; diff -u Colleen.s tmp  && echo "QUINE OK"
```
#
## SULLY

Commandes pour tester:<br>
```bash
gcc -Wall -Werror -Wextra Sully.c -o Sully; ./Sully

git diff --no-index --word-diff=porcelain Sully.c Sully_1.c | grep -E '^[+-][^+-]'

git diff --no-index --word-diff=plain Sully_2.c Sully_5.c | grep -oE '\[-[^]]*-\]|\{\+[^}]*\+\}'
```
