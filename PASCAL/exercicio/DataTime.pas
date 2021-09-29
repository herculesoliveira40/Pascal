Program DataTime ;    
Procedure DataTime;
	//Uses CRT, DOS; {A unit DOS contem os comandos de data e hora} 
Var 
Dia, 
Mes, 
Ano, 
Dia_Semana, 
Hora, 
Minuto, 
Segundo, 
Dec_Segundo : Word; {O tipo das variáveis deve ser WORD 
pois até agora não vi data negativa...} 

Begin 
GetDate(Ano, Mes, Dia, Dia_Semana);  
GetTime(Hora, Minuto, Segundo, Dec_Segundo);
Writeln(Hora, ':', Minuto, ':', Segundo); {Escreve a hora} 
Writeln(Dia, '/', Mes, '/', Ano, '/'); {Escreve a data} 
Readln; 
End;
				


Begin  
 	
 		begin 		

		 
   DataTime; 
  end; 
End.

///////////////////////////////////////////
{
Program MatrizDataHorario ;


	var	v : integer;
	Data : array[1..10, 1..10] of word;    // ou word clientes[v,1]
	Tempo : array[1..10, 1..10] of word; 
Begin
v:=1;
	   
       GetTime(Tempo[v,1], Tempo[v,2],Tempo[v,3], Tempo[v,4]);
       GetDate(Data[v,1], Data[v,2],Data[v,3], Data[v,4]);
       
       writeln(Tempo[v,1], ':', Tempo[v,2], ':', Tempo[v,3]);   
			 writeln(Data[v,3],'/', Data[v,2],'/',Data[v,1]); 
       readln();
  
End.

		}

