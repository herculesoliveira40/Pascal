Program Ordenar_10_valores;
//Caso tenha d�vidas no funcionamento l�gico deste programa pode contactar-me: andrefreitas@ptwebtech.com
Var num:array[1..11] of integer;// Coloquei at� 11 para que em baixo n�o d� erro a ultrapassar a dimens�o
x,y,imenor,troca:integer;
Begin
writeln('Este programa permite ordenar 10 valores introduzidos, prima ENTER');
readln; // Para aguardar por uma tecla  (N/a)
writeln; // Para dar um espa�o (N/a)
//Obter N�meros
writeln('Introduza os n�meros');
for x:=1 to 10 do
Begin
	writeln('N�mero ',x);
	readln(num[x]);
End;
//Ordenar Array
for x:=1 to 10 do
Begin
	imenor:=x;
	for y:=x+1 to 10 do // Ciclo para comparar o valor no �ndice x com os restantes n�meros dos �ndices superiores
	Begin
		if num[y]<num[imenor] then imenor:=y; // Se ver que o valor contido no �ndice y � menor do que o valor do �ndice definido com o imenor, muda
	End;
	if num[x]<>num[imenor] then // Se realmente forem diferentes muda
	Begin
		troca:=num[x]; // Tem-se de declarar uma vari�vel para a troca, n�o perdendo-se assim valores
		num[x]:=num[imenor];
		num[imenor]:=troca;
	End;
End;
//Imprimir Valores
writeln('Valores Ordenados');
for x:=1 to 10 do
Begin
	writeln(num[x]);
End;
readln;
// Em suma, podemos ver que o algoritmo comparar os valores do vector por partes, ordenadamente
End.