Program Pzim ;
uses CRT;
var
	calc : real;
	i, x : integer;
	
	function Raiz(num : real) : real;		
	begin
		Raiz := SQRT(num);
	end;
	
Begin
   calc := Raiz(9);
   writeln('Raiz: ',calc);
End.