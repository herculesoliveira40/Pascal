Program Pzim ;
var
	i, posima, posime, qtd, codigo : integer;
	compras : array[1..10] of real;
	subtotal, total, maior, menor : real;
	resp : string;
Begin
  	repeat
  		writeln('CODIGO  DESCRIÇÃO   PREÇO');
  		writeln('1       Camisa      15.00');
			writeln('2       Short       35.50');  		
			writeln('3       Calça       45.90');			
			writeln('4       Sapato      35.60');
			writeln('Informe o codigo do produto');
			readln(codigo);
			writeln('Informe a quantidade do produto');
			readln(qtd);
			
			case codigo of
				1:Begin
					//camisa 15.00
					subtotal := qtd * 15;
				End;
				2:Begin
					//Short 35.50
					subtotal := qtd * 35.50;
				End;
				3:Begin
					//Calça 45.90
					subtotal := qtd * 45.90;					
				End;
				4:Begin
					//Sapato 35.60
					subtotal := qtd * 35.60;					
				End;
			end; //Fim do Case
			
			writeln('Compra realizada, Subtotal: ',subtotal:9:2);
			//Adicionando a compra no vetor
			for i:=1 to 10 do
			begin
				if compras[i] = 0 then
				begin
					compras[i] := subtotal;
					break;
				end;	
			end;
						
			writeln('Deseja realizar uma nova compra? [S/ N]');
			readln(resp);
			clrscr;
  	until upCase(resp) = 'N';
  	
  	//calcular total, pegar a menor e maior compra e suas posições.
  	menor := compras[1];
		posime := 1;
  	for i:=1 to 10 do
  	begin
  		if compras[i] > 0 then
  		begin
  			if maior < compras[i] then
  			begin
  				maior := compras[i];
  				posima := i;
  			end;
  			if menor > compras[i] then
  			begin
  				menor := compras[i];
  				posime := i;
  			end;
  			total := total + compras[i];		
  		end;
  	end;
  	
  	writeln('Total a pagar: ',total:9:2);
  	writeln('Maior valor: ',maior:9:2,' posição: ',posima);
  	writeln('Menor valor: ',menor:9:2,' posição: ',posime);
  	  	  	
End.