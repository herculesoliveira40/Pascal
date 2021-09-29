Program Ordenar_10_valores;
//Caso tenha dúvidas no funcionamento lógico deste programa pode contactar-me: andrefreitas@ptwebtech.com
Var num:array[1..11] of integer;// Coloquei até 11 para que em baixo não dê erro a ultrapassar a dimensão
x,y,imenor,troca:integer;
Begin
writeln('Este programa permite ordenar 10 valores introduzidos, prima ENTER');
readln; // Para aguardar por uma tecla  (N/a)
writeln; // Para dar um espaço (N/a)
//Obter Números
writeln('Introduza os números');
for x:=1 to 10 do
Begin
	writeln('Número ',x);
	readln(num[x]);
End;
//Ordenar Array
for x:=1 to 10 do
Begin
	imenor:=x;
	for y:=x+1 to 10 do // Ciclo para comparar o valor no índice x com os restantes números dos índices superiores
	Begin
		if num[y]<num[imenor] then imenor:=y; // Se ver que o valor contido no índice y é menor do que o valor do índice definido com o imenor, muda
	End;
	if num[x]<>num[imenor] then // Se realmente forem diferentes muda
	Begin
		troca:=num[x]; // Tem-se de declarar uma variável para a troca, não perdendo-se assim valores
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