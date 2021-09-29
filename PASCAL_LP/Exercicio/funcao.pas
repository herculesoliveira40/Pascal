Program Pzim ;
uses crt;
var
	calc, x : real;
	
	function Raiz : real;
	begin
		Raiz := SQRT(x);
	end;
	
Begin
    writeln('Digite um valor para calcular a raiz');
    readln(x);
    if x < 0 then
    begin
    	writeln('Não existe raiz quadrada');
    end
    else
    begin
    	 calc := Raiz;
    	 writeln('Raiz de ',x,' = ',calc);
    end;
    
End.