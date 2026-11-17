#define src "#define tpl "
#define tpl "#define src "
#define p q"%s"q
#define pp "p"
#define q "\""
#define qq "q"
#define l "\\"
#define ll "l"
#define h "#include <stdio.h>"
#define hh "h"
#define m "int main(void) {"
#define mm "m"
#define b "}"
#define bb "b"
#define n "\n"
#define nn "n"
#define t "\t"
#define tt "t"
#define ss "s"
#define dd "d"
#define sd "tpl p n src p n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n, src, tpl, pp, qq p qq, pp pp, q pp q, qq, q l q q, qq qq, q qq q, ll, q l l q, ll ll, q ll q,hh, q h q,hh hh, q hh q,mm, q m q, mm mm, q mm q, bb,q b q, bb bb,q bb q, nn, q l nn q, nn nn, q nn q, tt, q l tt q, tt tt, q tt q, ss ss, q ss q, dd dd, q dd q, ss dd, q sd q, ss bb, q sb q, ff, q f q, ff ff, q ff q, zz, p, zz zz, q zz q, ee, q e q, ee ee, q ee q, rr , q r q, rr rr, q rr q, dd ff, q df q, ss ll, q sl q, ss tt, q st q, bb ll, q bl q, ff nn, q fn q, nn ff, q nf q"
#define sb "n h n sl st n t bl n st sl n fn f z e b n m n t nf e n t f z e n t r n t sl st n t t bl n t st sl n b n, sd, sb"
#define f "printf("
#define ff "f"
#define z "%s"
#define zz "z"
#define e ");"
#define ee "e"
#define r "return (0);"
#define rr "r"
#define df "#define %s %s"
#define sl "/"
#define st "*"
#define bl "This program will print its own source when run."
#define fn "static void _f(void) {"
#define nf "_f("

#include <stdio.h>
/*
	This program will print its own source when run.
*/
static void _f(void) {printf(tpl p n src p n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n df n, src, tpl, pp, qq p qq, pp pp, q pp q, qq, q l q q, qq qq, q qq q, ll, q l l q, ll ll, q ll q,hh, q h q,hh hh, q hh q,mm, q m q, mm mm, q mm q, bb,q b q, bb bb,q bb q, nn, q l nn q, nn nn, q nn q, tt, q l tt q, tt tt, q tt q, ss ss, q ss q, dd dd, q dd q, ss dd, q sd q, ss bb, q sb q, ff, q f q, ff ff, q ff q, zz, p, zz zz, q zz q, ee, q e q, ee ee, q ee q, rr , q r q, rr rr, q rr q, dd ff, q df q, ss ll, q sl q, ss tt, q st q, bb ll, q bl q, ff nn, q fn q, nn ff, q nf q);}
int main(void) {
	_f();
	printf(n h n sl st n t bl n st sl n fn f z e b n m n t nf e n t f z e n t r n t sl st n t t bl n t st sl n b n, sd, sb);
	return (0);
	/*
		This program will print its own source when run.
	*/
}
