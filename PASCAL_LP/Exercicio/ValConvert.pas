Program ValConvert ;
var num1 : integer;
var num2 : string;
 var c, d : integer;
 
 
 
//Procedure Ler (Var Saida:Integer);
Procedure Converter (Var Saida:Integer);
Var
  Receb:String;
  Erro:Integer;
Begin
  Repeat
    writeln('digite outro numero');
    ReadLn(num2);  //ler uma string
    Val(num2, d, Erro);  //converter para integer
  Until (Erro=0);    //repetir até não haver erro
End;



Begin

    writeln('digite um numero');
    readln(num1); 
		Converter(d);
		
	//	c:= (d + num2);
		
		writeln('Resultado: ', d + num1);    
End.


{


Program Pzim ;
var num1 : integer;
var num2 : string;
 var c, d : real;
   Erro:Integer;
Begin
     writeln('digite um numero');
    readln(num1);
    
    writeln('digite outro numero');
    ReadLn(num2);  //ler uma string
    Val(num2, d, Erro);  //converter para integer
 
  
	writeln('Soma: ', num1 + d :9:2 );	 
End.




}


