Program SomaVetorParImpar ;

var i, resp, par,impar, spar, simpar :integer;
  Nvet:Array [1..10] of integer;
Begin 
	
  for i:= 1 to 5 do
  	begin
       
    writeln('Digite o ', i, ' numero: ');
    readln( Nvet[i]);
     
     
    if Nvet[i] mod 2= 0  then
    begin
    par:= par+1;
    spar:= spar+Nvet[i];
		end
      else
       begin
    impar:= impar+1;
    simpar:= simpar+Nvet[i];
		end;
      
      
    end;

									     
									     
									     writeln();
									     writeln('O impar numero é o: ', impar, ' Soma Impar: ', simpar);
									       writeln('O par numero é o: ', par,  ' Soma Par: ', spar);     
End.