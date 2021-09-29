Program Pzim ;
type
	cadastro = record
	ano: integer;
  mes: integer;
  dia: integer;

	end;
	
var	i : integer;

	data: array[1..10] of cadastro;

	 // -----------------------------
Begin
i:=1;
  for i:=1 to 2 do
	begin
		 	writeln('Informe o ano: ');
		  readln(data[i].ano);
			writeln('Informe o mes: '); 
		  readln(data[i].mes);	
		  writeln('Informe o dia: ');
		  readln(data[i].dia); 
	 
 end;      
   // -----------------------------
 for i:=1 to 2 do
		begin      
// 	writeln( 'Ano e: ', data[i].ano, 'Mes e: ', data[i].mes, 'Dia e: ', data[i].dia  );
//	  writeln( 'Data e: ', data[i].ano, '/', data[i].mes, '/', data[i].dia  );

	  writeln( data[i].dia, '/',  data[i].mes, '/', data[i].ano );

 //	  writeln( 'Data e: ', data[i].ano, '-', data[i].mes, '-', data[i].dia  ); 
//	writeln( 'Mes e: ', data[i].mes);
//	writeln( 'Dia e: ', data[i].dia);	
		end;
End.