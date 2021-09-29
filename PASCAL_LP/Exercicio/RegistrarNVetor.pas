Program Pzim ;
	var op,i, resp :integer;
  numeros:Array [1..10] of integer;
Begin 
//   repeat  
	 		writeln(' Rotinas para Vetor ');     
     	writeln('1- Para cadastrar valores');
     	writeln('2- Para exibir valores');
      writeln('3- Para remover valores ');
      writeln('4- Para sair');
      readln(op);
	      begin
	      Case op of
	      
	      1:Begin
	      for i:=1 to 10 do
	      begin
	      	if numeros[i] = 0 then
	        begin
	        	writeln('Informe um valor');
	        	readln(numeros[i]);
	          writeln('Cadsatro realizado com Sucesso!'); break;

	     		end; 
	     	end; 
	     end; 
	     
	      2:Begin
	      for i:=1 to 10 do
	      begin
	      	if numeros[i] > 0 then
	        begin
	          writeln('Valores: ', numeros[i]); 
	     		end; 
	    	end; 
	    end; 	     
	 	  end;	 
			 
					 
			writeln('Deseja continuar? ');
				readln(resp);     
	//     clrscr;
	//    until upCase(resp) = 'N';
	//    begin
	 //     writeln(' Finalizando...'); 
	//    end;
	       		  
      end; 
      
End.