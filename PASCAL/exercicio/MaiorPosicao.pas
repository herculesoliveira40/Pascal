Program MaiorPosicao ;
var  num, posicao, maior, i : integer;
  //Hercules Oliveira das Merc�s 
Begin
     i:= 1;
     maior:= -99999999999;
  while i <= 100 do   			  // At� 100

  begin
  writeln('Digite o ',i,' numero:                               ///OBS: 100Numeros brow kkk');
  readln(num);
    if (num > maior) then
    begin
        maior:= num;
        posicao:= i;
    end
    else
    begin
        maior:= maior;
       // posicao:= posicao+1;
    end;    
    
      i:= i+1;
  end;   
    textcolor(blue);   writeln('Maior numero �: ',maior);
       writeln('posicao: ', posicao);
  
End.