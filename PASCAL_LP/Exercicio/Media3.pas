Program Pzim ;

var 
	nota1, nota2, nota3, soma, media:real;

Begin
	writeln('Digite sua primeira nota:');
	readln (nota1); 
	 
	writeln('Digite sua segunda nota nota:');
	readln (nota2);	 
	
	writeln('Digite sua teceira nota nota:');
	readln (nota3);	
	
	media:= (nota1+nota2+nota3)/3;
	
//   writeln('A media é:',media);
   
	   if (media >= 7) and (media <=10)  then
	   begin
			 writeln('A media é: ', media, 'e voce foi aprovado PARABENS');
		end	 
		
		else;
		begin
		   writeln;
		end;	
		
		if (media >= 3) and (media <=7)  then
	 begin	 	
		writeln('A media é: ', media, 'e voce esta na recuepracao :X ');	 
	 end
	                                          	 
		else if  (media >= 0) and (media <=2.9)  then
	begin
		writeln('A media é: ', media, 'e voce foi reprovado ;-;');	 
	end 
	 
	 
End.