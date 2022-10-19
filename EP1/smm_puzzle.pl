/*
 * PCS3838 - Inteligência Artificial
 * Exercício Prático 1
 * Lucas de Menezes Cavalcante
 * NUSP: 10770180
 */

/*
 *   C1 C2 C3
 *    S  E  N  D
 *    M  O  R  E +
 * _______________
 * M  O  N  E  Y 
 */
smm_puzzle(S, E, N, D, M, O, R, Y) :-
	/* Começando as constraints pelos algarismos menos significativos */
	/* D e E são algarismos diferentes entre si */
	between(0, 9, D),
	between(0, 9, E),
	D\=E,
	/* Fazendo a soma e passando o carry para a variável C3 */
	/* D + E = 10*C3 + Y */
	C3 is (D+E) div 10,
	Y is (D+E) mod 10,
	
	/* N e R também são algarismos diferentes entre si,
	 * e diferentes de D e E */
	between(0, 9, N),
	N\=D, N\=E,
	between(0, 9, R),
	R\=N, R\=D, R\=E,
	/* Fazendo a soma e passando o carry para a variável C2 */
	/* N + R + C3 = 10*C2 + E */
	C2 is (N+R+C3) div 10,
	E is (N+R+C3) mod 10,
	
	/* O é algarismo diferente dos já inicializados */
	between(0, 9, O),
	O\=R, O\=N, O\=D, O\=E,
	/* Fazendo a soma e passando o carry para a variável C1 */
	/* E + O + C2 = 10*C1 + N */
	C1 is (E+O+C2) div 10,
	N is (E+O+C2) mod 10,
	
	/* S e M são algarismos diferentes dos já inicializados.
	 * Ambos devem ser diferentes de 0,
	 * porque números não começam com 0. */
	between(1, 9, S),
	S\=O, S\=R, S\=N, S\=D, S\=E,
	between(1, 9, M),
	M\=S, M\=O, M\=R, M\=N, M\=D, M\=E,
	/* Y também deve ser diferente dos outros algarismos */
	between(0, 9, Y),
	Y\=M, Y\=S, Y\=O, Y\=R, Y\=N, Y\=D, Y\=E,
	/* Fazendo a soma e passando o carry para a variável M */
	/* S + M + C1 = 10*M + O */
	M is (S+M+C1) div 10,
	O is (S+M+C1) mod 10.


smm_puzzle_ocd(S, E, N, D, M, O, R, Y) :-
	/* Começando as constraints pelos algarismos menos significativos */
	/* D e E são algarismos diferentes entre si */
	between(0, 9, D),
	between(0, 9, E),
	
	/* N e R também são algarismos diferentes entre si,
	 * e diferentes de D e E */
	between(0, 9, N),
	between(0, 9, R),
	/* O é algarismo diferente dos já inicializados */
	between(0, 9, O),
	/* S e M são algarismos diferentes dos já inicializados.
	 * Ambos devem ser diferentes de 0,
	 * porque números não começam com 0. */
	between(1, 9, S),
	between(1, 9, M),
	/* Y também deve ser diferente dos outros algarismos */
	between(0, 9, Y),
	D\=E,
	N\=D, N\=E,
	R\=N, R\=D, R\=E,
	O\=R, O\=N, O\=D, O\=E,
	S\=O, S\=R, S\=N, S\=D, S\=E,
	M\=S, M\=O, M\=R, M\=N, M\=D, M\=E,
	Y\=M, Y\=S, Y\=O, Y\=R, Y\=N, Y\=D, Y\=E,
	
	/* Fazendo a soma e passando o carry para a variável C3 */
	/* D + E = 10*C3 + Y */
	C3 is (D+E) div 10,
	Y is (D+E) mod 10,
	
	/* Fazendo a soma e passando o carry para a variável C2 */
	/* N + R + C3 = 10*C2 + E */
	C2 is (N+R+C3) div 10,
	E is (N+R+C3) mod 10,
	
	/* Fazendo a soma e passando o carry para a variável C1 */
	/* E + O + C2 = 10*C1 + N */
	C1 is (E+O+C2) div 10,
	N is (E+O+C2) mod 10,
	
	/* Fazendo a soma e passando o carry para a variável M */
	/* S + M + C1 = 10*M + O */
	M is (S+M+C1) div 10,
	O is (S+M+C1) mod 10.

/*
 *   C1 C2 C3 C4
 *    P  O  I  N  T
 *       Z  E  R  O +
 * __________________
 * E  N  E  R  G  Y
 */
pze_puzzle(P, O, I, N, T, Z, E, R, G, Y) :-
	/* Começando as constraints pelos algarismos menos significativos */
	/* T e O são algarismos diferentes entre si */
	between(0, 9, T),
	between(0, 9, O),
	T\=O,
	/* Fazendo a soma e passando o carry para a variável C4 */
	/* T + O = 10*C4 + Y */
	C4 is (T+O) div 10,
	Y is (T+O) mod 10,
	
	/* N e R também são algarismos diferentes entre si,
	 * e diferentes de T e O */
	between(0, 9, N),
	N\=T, N\=O,
	between(0, 9, R),
	R\=N, R\=T, R\=O,
	/* Fazendo a soma e passando o carry para a variável C3 */
	/* N + R + C4 = 10*C3 + G */
	C3 is (N+R+C4) div 10,
	G is (N+R+C4) mod 10,
	
	/* I e E são algarismos diferentes dos já inicializados
	 * E também deve ser diferente de 0,
	 * porque números não começam com 0. */
	between(0, 9, I),
	I\=R, I\=N, I\=T, I\=O,
	between(1, 9, E),
	E\=I, E\=R, E\=N, E\=T, E\=O,
	/* Fazendo a soma e passando o carry para a variável C2 */
	/* I + E + C3 = 10*C2 + R */
	C2 is (I+E+C3) div 10,
	R is (I+E+C3) mod 10,
	
	/* Z é um algarismo diferente dos já inicializados.
	 * Também deve ser diferente de 0,
	 * porque números não começam com 0.
	 * O já foi inicializado. */
	between(1, 9, Z),
	Z\=E, Z\=I, Z\=R, Z\=N, Z\=T, Z\=O,
	/* Fazendo a soma e passando o carry para a variável C1 */
	/* O + Z + C2 = 10*C1 + E */
	C1 is (O+Z+C2) div 10,
	E is (O+Z+C2) mod 10,
	
	/* P é um algarismo diferente dos já inicializados.
	 * Também deve ser diferente de 0,
	 * porque números não começam com 0. */
	between(1, 9, P),
	P\=Z, P\=E, P\=I, P\=R, P\=N, P\=T, P\=O,
	/* G e Y também devem ser diferentes dos outros algarismos */
	between(0, 9, G),
	G\=P, G\=Z, G\=E, G\=I, G\=R, G\=N, G\=T, G\=O,
	between(0, 9, Y),
	Y\=G, Y\=P, Y\=Z, Y\=E, Y\=I, Y\=R, Y\=N, Y\=T, Y\=O,
	/* Fazendo a soma e passando o carry para a variável E */
	/* P + C1 = 10*E + N */
	E is (P+C1) div 10,
	N is (P+C1) mod 10.

pze_puzzle_ocd(P, O, I, N, T, Z, E, R, G, Y) :-
	/* Betweens */
	between(0, 9, T),
	between(0, 9, O),
	between(0, 9, N),
	between(0, 9, R),
	between(0, 9, I),
	between(1, 9, E),
	between(1, 9, Z),
	between(1, 9, P),
	between(0, 9, G),
	between(0, 9, Y),
	
	/* Inequalidades */
	T\=O,
	N\=T, N\=O,
	R\=N, R\=T, R\=O,
	I\=R, I\=N, I\=T, I\=O,
	E\=I, E\=R, E\=N, E\=T, E\=O,
	Z\=E, Z\=I, Z\=R, Z\=N, Z\=T, Z\=O,
	P\=Z, P\=E, P\=I, P\=R, P\=N, P\=T, P\=O,
	G\=P, G\=Z, G\=E, G\=I, G\=R, G\=N, G\=T, G\=O,
	Y\=G, Y\=P, Y\=Z, Y\=E, Y\=I, Y\=R, Y\=N, Y\=T, Y\=O,
	
	/* Somas */
	C4 is (T+O) div 10,
	Y is (T+O) mod 10,
	C3 is (N+R+C4) div 10,
	G is (N+R+C4) mod 10,
	C2 is (I+E+C3) div 10,
	R is (I+E+C3) mod 10,
	C1 is (O+Z+C2) div 10,
	E is (O+Z+C2) mod 10,
	E is (P+C1) div 10,
	N is (P+C1) mod 10.
