Program ContadorParImparNegativoPositivo;

var contadorpar, contadorimpar, contadornegativo, contadorpositivo : integer;
var n1, cont : integer;
Begin   

n1:= 0;

	while (cont < 5) do
   begin

  writeln('Informe o ', cont+1 ,' numero');
  readln(n1);
  
  
 {enquanto cont 0 < 5, depois o  cont:= cont +1}
  
  	
  if  (n1 mod 2 = 0) then
  	begin
  	  //  writeln('Par');                                 {Par}
  	    contadorpar:= contadorpar+1;
  	end
  else  
  	begin                                               {Impar}
  	//    writeln('Impar');
  	    contadorimpar:= contadorimpar+1;
  	end;  

  if  (n1 < 0) then
  	begin
  	//    writeln('Negativo');                      {Negativo}
  	    contadornegativo:= contadornegativo+1;
  	end
    else if (n1 > 0) then 
  	begin
  	//    writeln('Positivo');                           {Positivo}  
  	    contadorpositivo:= contadorpositivo+1;
  	end  	
  	
  else
  	begin
  	//    writeln('Neutro');                           {Neutro}
  	end;   	
		    cont:= cont+1;
		end;
				textcolor(red);		    
		    writeln(contadorpar,' valor(es)',' par(es)'); 
		    writeln(contadorimpar,' valor(es)',' impar(es)'); 
		    writeln(contadorpositivo,' valor(es)',' positivo(es)');	
		    writeln(contadornegativo,' valor(es)',' negativo(es)');
			 
 
End.

