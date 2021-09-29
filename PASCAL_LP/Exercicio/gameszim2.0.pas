program jogos;
uses crt;
var
flag,dado,ent,cont,soma:integer;
game:string;


                     {PROCEDIMENTO JOGO MATEMATICA}
procedure matematica;
var
game:string;
begin
   repeat
     case soma of
       1 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write('@');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('1 - JOGUE O DADO DINOVO');
             flag:=1;
           end;
       2 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write('@');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('2 - JOGUE O DADO DINOVO');
             flag:=1;
           end; 
       3 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write('@');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('3 - REGREDIR 2 CASAS');
             soma:=soma-2;
           end;
       4 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write('@');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('4 - PERGUNTA: QUAL A RAIZ');
             gotoxy(49,17); write('QUADRADA DE 25?');
             textcolor(12); gotoxy(65,17); readln(game);
             if game = '5' then
             begin
                  delay(1000);
                  soma:=soma + 1;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 1 CASA...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end;
       5 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write('@');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('5 - PERGUNTA: QUAL A META-');
             gotoxy(49,17); write('DE 6 MAIS 9?');
             textcolor(12); gotoxy(62,17); readln(game);
             if game = '12' then
             begin
                  delay(1000);
                  soma:=soma + 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end;
       6 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write('@');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('6 - RESOLVA: (9*10)/2=?');
             textcolor(12); gotoxy(49,17); readln(game);
             if game = '45' then
             begin
                  delay(1000);
                  soma:=soma + 3;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 3 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 1;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 1 CASA...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end; 
       7 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write('@');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('7 - JOGUE O DADO DINOVO');
             flag:=1;
           end;
       8 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write('@');
             gotoxy(25,14); write(' ');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('8 - AVANCAR 1 CASA');
             soma:=soma+1;
           end; 
       9 : begin
             textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(19,10); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write('@');
             gotoxy(31,14); write(' ');
             gotoxy(31,10); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('9 - RESOLVA: A EXPRESSAO:');
             gotoxy(49,17); write('(2*(4+5)-3*(4*3+1)=?');
             textcolor(12); gotoxy(49,18); readln(game);
             if game = '-21' then
             begin
                  delay(1000);
                  soma:=soma + 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAs...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end;
       10 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write('@');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('10 - AVANCAR 1 CASA');
              soma:=soma+1;
            end;
       11 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write('@');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('11 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       12 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write('@');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('12 - REGREDIR 1 CASA');
              soma:=soma-1;
            end;
       13 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write('@');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('13 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       14 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write('@');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('14 - PERGUNTA: QUAL O FA-');
              gotoxy(49,17); write('TORIAL DE 6?');
              textcolor(12); gotoxy(49,18); readln(game);
              if game = '720' then
              begin
                   delay(1000);
                   soma:=soma + 1;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('AVANCAR 1 CASA...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 1;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 1 CASA...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end;
       15 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write('@');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('15 - PERGUNTA: QUAL A RAIZ');
              gotoxy(49,17); write('CUBICA DE 8?');
              textcolor(12); gotoxy(49,18); readln(game);
              if game = '2' then
              begin
                   delay(1000);
                   soma:=soma + 2;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 2;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end; 
       16 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write('@');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('16 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       17 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write('@');
              gotoxy(43,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('17 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       18 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write('@');
              gotoxy(31,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('18 - REGREDIR 5 CASAS');
              soma:=soma-5;
            end; 
     end;
   until(flag = 1)or(soma>18);  
end;

                     {PROCEDIMENTO JOGO MATEMATICA 2}
procedure matematica2;
var
game:string;
begin
   repeat
     case soma of
       19 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write('@');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('19 - AVANCAR 1 CASA');
              soma:=soma+1;;
            end;
       20 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write('@');
              gotoxy(25,22); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('20 - PERGUNTA: QUAL A MINHA');
              gotoxy(49,17); write('COR PREDILETA?');
              textcolor(12); gotoxy(49,18); readln(game);
              if(game = 'AZUL')or(game = 'azul')then
              begin
                   delay(1000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('JOGUE O DADO DINOVO');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   flag:=1;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 7;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 7 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end;
       21 : begin
              textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,18); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,6); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(19,10); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(31,14); write(' ');
              gotoxy(31,10); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write('@');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('21 - REGREDIR 8 CASAS');
              soma:=soma-8;
            end; 
     end;
   until(flag=1)or(soma>21)or(soma<19);
end;


                     {PROCEDIMENTO JOGO PROGRAMACAO}
procedure programacao;
var
game:string;
begin
   repeat
     case soma of
       1 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write('@');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('1 - MENOS 1 TENTATIVA');
             gotoxy(49,17); write('JOGUE O DADO DINOVO');
             cont:=cont-1;
             flag:=1;
           end;
       2 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write('@');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('2 - PERGUNTA: EM PASCAL COMO');
             gotoxy(49,17); write('SE CHAMA UMA VARIAVEL');
             gotoxy(49,18); write('CARACTER?');
             textcolor(12); gotoxy(49,19); readln(game);
             if(game = 'STRING')or(game = 'string')then
             begin
                  delay(1000);
                  soma:=soma + 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 1;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 1 CASA...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end; 
       3 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write('@');
             gotoxy(7,6); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('3 - JOGUE O DADO DINOVO');
             flag:=1;
           end;
       4 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,18); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,6); write('@');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('4 - AVANCAR 2 CASAS');
             soma:=soma+2;
           end;
       5 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,6); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,18); write(' ');
             gotoxy(13,6); write('@');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('5 - PERGUNTA: QUE FERRAMENTA');
             gotoxy(49,17); write('DE REPETICAO USA-SE SEM INI-');
             gotoxy(49,18); write('CIALIZAR CONTADORES?');
             textcolor(12); gotoxy(49,19); readln(game);
             if(game = 'FOR')or(game = 'for')then
             begin
                  delay(1000);
                  soma:=soma + 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end;
       6 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,6); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,18); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write('@');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('6 - MENOS 1 TENTATIVA');
             gotoxy(49,17); write('JOGUE O DADO DINOVO');
             cont:=cont-1;
             flag:=1;
           end; 
       7 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,6); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,18); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write('@');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('7 - JOGUE O DADO DINOVO');
             flag:=1;
           end;
       8 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,6); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,18); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write('@');
             gotoxy(37,6); write(' ');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('8 - PERGUNTA: EM PASCAL COMO');
             gotoxy(49,17); write('SE CHAMA A VARIAVEL LOGICA?');
             textcolor(12); gotoxy(49,18); readln(game);
             if(game = 'BOOLEAN')or(game = 'boolean')then
             begin
                  delay(1000);
                  soma:=soma + 3;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                  textcolor(15); gotoxy(49,17); write('AVANCAR 3 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end
             else
             begin
                  delay(1000);
                  soma:=soma - 2;
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
                  textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                  textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                  delay(2000);
                  for ent:=16 to 23 do
                  begin
                       gotoxy(48,ent);
                       write('                             ');
                  end;
             end;
           end; 
       9 : begin
             textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
             delay(3000);
             gotoxy(48,12); write('                           ');
             textcolor(10); gotoxy(7,6); write(' ');
             gotoxy(7,10); write(' ');
             gotoxy(7,14); write(' ');
             gotoxy(7,18); write(' ');
             gotoxy(13,6); write(' ');
             gotoxy(19,6); write(' ');
             gotoxy(25,6); write(' ');
             gotoxy(31,6); write(' ');
             gotoxy(37,6); write('@');
             gotoxy(43,6); write(' ');
             gotoxy(43,10); write(' ');
             gotoxy(43,14); write(' ');
             gotoxy(43,18); write(' ');
             gotoxy(43,22); write(' ');
             gotoxy(37,22); write(' ');
             gotoxy(31,22); write(' ');
             gotoxy(25,22); write(' ');
             gotoxy(19,22); write(' ');
             gotoxy(19,18); write(' ');
             gotoxy(19,14); write(' ');
             gotoxy(25,14); write(' ');
             gotoxy(7,22); write(' ');
             textcolor(15); gotoxy(49,16); write('8 - REGREDIR 2 CASAS');
             soma:=soma-2;
           end;
       10 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write('@');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('10 - PERGUNTA: QUE FUNCAO');
              gotoxy(49,17); write('LIMPA TOTALMENTE A TELA DO');
              gotoxy(49,18); write('PASCAL?');
              textcolor(12); gotoxy(49,19); readln(game);
              if(game = 'CLRSCR')or(game = 'clrscr')then
              begin
                   delay(1000);
                   soma:=soma + 2;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('AVANCAR 2 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 4;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 4 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end; 
       11 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write('@');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('11 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       12 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write('@');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('12 - JOGUE O DADO DINOVO');
              flag:=1;
            end;
       13 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write('@');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('13 - REGREDIR 2 CASAS');
              soma:=soma-2;
            end;
       14 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write('@');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('14 - PERGUNTA: ANTES DE "IF"');
              gotoxy(49,17); write('NAO PRECISA DE ";".');
              gotoxy(49,18); write('VERDADEIRO OU FALSO?');
              textcolor(12); gotoxy(49,19); readln(game);
              if(game = 'FALSO')or(game = 'falso')then
              begin
                   delay(1000);
                   soma:=soma + 1;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('AVANCAR 1 CASA...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 2;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 2 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end;
       15 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write('@');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('15 - JOGUE O DADO DINOVO');
              flag:=1;
            end; 
       16 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write('@');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('16 - AVANCAR 2 CASAS');
              soma:=soma+2;
            end;
       17 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write('@');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('17 - REGREDIR 2 CASAS');
              soma:=soma-2;
            end;
       18 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write('@');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('18 - JOGUE O DADO DINOVO');
              flag:=1;
            end; 
     end;
   until(flag = 1)or(soma>18);  
end;

                     {PROCEDIMENTO JOGO PROGRAMACAO 2}
procedure programacao2;
var
game:string;
begin
   repeat
     case soma of
       19 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write('@');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('19 - AVANCAR 1 CASA');
              soma:=soma+1;
            end;
       20 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write('@');
              gotoxy(25,14); write(' ');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('20 - PERGUNTA: A MELHOR FOR-');
              gotoxy(49,17); write('MA DE CRITICAR UMA VARIAVEL');
              gotoxy(49,18); write('EH USANDO O "IF".');
              gotoxy(49,19); write('VERDADEIRO OU FALSO?');
              textcolor(12); gotoxy(49,20); readln(game);
              if(game = 'FALSO')or(game = 'falso')then
              begin
                   delay(1000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA CERTA');
                   textcolor(15); gotoxy(49,17); write('JOGUE O DADO DINOVO');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   flag:=1;
              end
              else
              begin
                   delay(1000);
                   soma:=soma - 8;
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
                   textcolor(14); gotoxy(49,16); write('RESPOSTA ERRADA');
                   textcolor(15); gotoxy(49,17); write('REGREDIR 8 CASAS...');
                   delay(2000);
                   for ent:=16 to 23 do
                   begin
                        gotoxy(48,ent);
                        write('                             ');
                   end;
              end;
            end;
       21 : begin
              textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
              delay(3000);
              gotoxy(48,12); write('                           ');
              textcolor(10); gotoxy(7,6); write(' ');
              gotoxy(7,10); write(' ');
              gotoxy(7,14); write(' ');
              gotoxy(7,18); write(' ');
              gotoxy(13,6); write(' ');
              gotoxy(19,6); write(' ');
              gotoxy(25,6); write(' ');
              gotoxy(31,6); write(' ');
              gotoxy(37,6); write(' ');
              gotoxy(43,6); write(' ');
              gotoxy(43,10); write(' ');
              gotoxy(43,14); write(' ');
              gotoxy(43,18); write(' ');
              gotoxy(43,22); write(' ');
              gotoxy(37,22); write(' ');
              gotoxy(31,22); write(' ');
              gotoxy(25,22); write(' ');
              gotoxy(19,22); write(' ');
              gotoxy(19,18); write(' ');
              gotoxy(19,14); write(' ');
              gotoxy(25,14); write('@');
              gotoxy(7,22); write(' ');
              textcolor(15); gotoxy(49,16); write('21 - REGREDIR 8 CASAS');
             soma:=soma-8;
            end; 
     end;
   until(flag=1)or(soma>21)or(soma<19);
end;



   
                      {PROCEDIMENTO PARA SAIR DO PROGRAMA}
procedure finaliza;
begin
     delay(1000);
     clrscr;
     if soma > 21 then
     begin
          textcolor(14); 
          gotoxy(17,8); write('PARABENS - VOCE VENCEU -  O JOGO ERA MUITO DIFICIL');
          delay(3000);
     end;
     if(cont = 0)and(soma<=21)then
     begin
          textcolor(14); 
          gotoxy(22,8); write('VOCE ESGOTOU TODAS  AS SUAS TENTATIVAS');
          delay(3000);
     end;
     textcolor(15);
     gotoxy(21,10); write('AGUARDE ENQUANDO O PROGRAMA EH ENCERRADO');
     delay(2000);
     TEXTCOLOR(3);
     GOTOXY(29,16);
     WRITE('CARLOS EDERSON DOS SANTOS');
     GOTOXY(18,18);
     WRITE('Estudante do curso CIENCIAS DA COMPUTACAO - UEVA');
     TEXTCOLOR(4);
     GOTOXY(34,12);
     WRITE('FINALIZANDO');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     GOTOXY(45,12);
     WRITE('   ');
     GOTOXY(45,12);
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     GOTOXY(45,12);
     WRITE('   ');
     GOTOXY(45,12);
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(500);
     WRITE('.');
     DELAY(1000);
end;

      {PROGRAMA PRINCIPAL}  
begin
     clrscr;
     textcolor(14);
     GOTOXY(17,8);
     write('AGUARDE ENQUANTO O PROGRAMA CARREGA SUAS CONFIGURACOES');
     textcolor(12); gotoxy(35,13); write('RECOMENDACOES');
     textcolor(15); gotoxy(18,14); write('Quando for pedido para digitar um numero, digite');
     gotoxy(18,15); write('um numero e nao uma letra.');
     gotoxy(18,16); write('E nao tecle enter antes de digitar o numero');
     gotoxy(18,17); write('desejado.');
     gotoxy(18,18); write('Pois erros poderao ocorrer ja que ainda desconheco');
     gotoxy(18,19); write('ferramentas que melhorem o programa.');
     gotoxy(18,20); write('Desenvolvido por Carlos Ederson - Itarema-CE');
     gotoxy(18,21); write('1o. semestre do curso Ciencias da computacao - UEVA');

     textbackground(14);
     GOTOXY(34,10);
     write('               ');
     delay(700);
     textbackground(9);
     GOTOXY(34,10);
     write('  ');
     delay(4000);
     GOTOXY(36,10);
     write('   ');
     delay(2000);
     GOTOXY(39,10);
     write(' ');
     delay(5000);
     GOTOXY(40,10);
     write('     ');
     delay(5000);
     GOTOXY(45,10);
     write('    ');
     delay(1000);
     textbackground(0);     

     clrscr;
     repeat
       textcolor(14);
       for ent:=2 to 23 do
       begin
            gotoxy(2,ent);
            write('.');
       end;
       for ent:=2 to 23 do
       begin
            gotoxy(79,ent);
            write('.');
       end;
       for ent:=2 to 79 do
       begin
            gotoxy(ent,2);
            write('.');
       end;
       for ent:=2 to 79 do
       begin
            gotoxy(ent,23);
            write('.');
       end;
       textcolor(15); gotoxy(16,6); write('[ 1 ]');
       textcolor(12); gotoxy(11,8); write('GAME MATEMATICA');
       textcolor(15); gotoxy(61,6); write('[ 2 ]');
       textcolor(5); gotoxy(56,8); write('GAME PROGRAMACAO');
       textcolor(10); gotoxy(35,8); write('____________');
       gotoxy(36,7); write('__________');
       gotoxy(37,6); write('________');
       gotoxy(38,5); write('______');
       gotoxy(39,4); write('____');
       gotoxy(36,9); write('__________');
       gotoxy(37,10); write('________');
       gotoxy(38,11); write('______');
       gotoxy(39,12); write('____');
      
       textcolor(15); GOTOXY(15,15); WRITE('DIGITE O NUMERO CORRESPONDENTE AO JOGO QUE QUER JOGAR');
       textcolor(10); gotoxy(40,16); readln(game);
     
   
       if(game<>'1')and(game<>'2')then
       begin
            GOTOXY(39,16); WRITE('                 ');
            delay(500);
            TEXTCOLOR(14); GOTOXY(24,22); WRITE('VOCE DIGITOU ERRADO, TENTE NOVAMENTE');
            delay(500);
            TEXTCOLOR(12); GOTOXY(24,22); WRITE('VOCE DIGITOU ERRADO, TENTE NOVAMENTE');
            delay(500);
            TEXTCOLOR(3); GOTOXY(24,22); WRITE('VOCE DIGITOU ERRADO, TENTE NOVAMENTE');
            delay(500);
            TEXTCOLOR(5); GOTOXY(24,22); WRITE('VOCE DIGITOU ERRADO, TENTE NOVAMENTE');
            delay(1000);
            GOTOXY(20,22); WRITE('                                          ');
       end;
       clrscr;
     until(game='1')or(game='2');      

     clrscr;
     cont:= 8;
     if game = '1' then
             begin
               clrscr;
               textcolor(12);
               GOTOXY(34,12);
               write('GAME MATEMATICA');
               textcolor(15);gotoxy(22,16); write('Aguarde enquanto o jogo eh inicializado');
               textbackground(14);
               GOTOXY(34,14);
               write('               ');
               delay(700);
               textbackground(9);
               GOTOXY(34,14);
               write('  ');
               delay(1000);
               GOTOXY(36,14);
               write('   ');
               delay(2000);
               GOTOXY(39,14);
               write(' ');
               delay(2000);
               GOTOXY(40,14);
               write('     ');
               delay(1000);
               GOTOXY(45,14);
               write('    ');
               delay(1000);
               textbackground(0);
              
               clrscr;
               textbackground(12);
               for ent:=4 to 20 do
               begin
                    gotoxy(4,ent); 
                    write(' ');
               end;
               for ent:=4 to 20 do
               begin
                    gotoxy(10,ent); 
                    write(' ');
               end;
               gotoxy(4,4); write('                  ');
     	       gotoxy(4,8); write('                  ');
               gotoxy(4,12); write('      ');
     	       gotoxy(4,16); write('      ');
     	       gotoxy(4,20); write('      ');
     	       gotoxy(11,4); write('      ');
     	       gotoxy(11,8); write('      ');
               for ent:=4 to 16 do
               begin
                    gotoxy(16,ent); 
                    write(' ');
               end;
               for ent:=4 to 16 do
               begin
                    gotoxy(22,ent); 
                    write(' ');
               end;
               gotoxy(17,12); write('                 ');
               gotoxy(17,16); write('                 ');
               for ent:=4 to 16 do
               begin
                    gotoxy(28,ent); 
                    write(' ');
               end;
               for ent:=4 to 16 do
               begin
                    gotoxy(34,ent); 
                    write(' ');
               end;
               gotoxy(28,4); write('                  ');
               gotoxy(28,8); write('                  ');
               for ent:=4 to 24 do
               begin
                    gotoxy(40,ent); 
                    write(' ');
               end;
               for ent:=4 to 24 do
               begin
                    gotoxy(46,ent); 
                    write(' ');
               end;
               gotoxy(22,20); write('                        ');
               gotoxy(22,24); write('                        ');
               gotoxy(40,12); write('      ');
               gotoxy(40,16); write('      ');
               for ent:=20 to 24 do
               begin
                    gotoxy(34,ent); 
                    write(' ');
               end;
               for ent:=20 to 24 do
               begin 
                    gotoxy(28,ent); 
                    write(' ');
               end;
               for ent:=20 to 24 do
               begin
                    gotoxy(22,ent); 
                    write(' ');
               end;
               textbackground(0);
               textcolor(14);
               gotoxy(5,5); write('4');
               gotoxy(5,9); write('3');
               gotoxy(5,13); write('2');
               gotoxy(5,17); write('1');
               gotoxy(11,5); write('5');
               gotoxy(17,5); write('6');
               gotoxy(17,9); write('7');
               gotoxy(17,13); write('8');
               gotoxy(23,13); write('9');
               gotoxy(29,13); write('10');
               gotoxy(29,9); write('11');
               gotoxy(29,5); write('12');
               gotoxy(35,5); write('13');
               gotoxy(41,5); write('14');
               gotoxy(41,9); write('15');
               gotoxy(41,13); write('16');
               gotoxy(41,17); write('17');
               gotoxy(41,21); write('18');
               gotoxy(35,21); write('19');
               gotoxy(29,21); write('20');
               gotoxy(23,21); write('21');
               textcolor(15); gotoxy(4,23); write('-INICIO');
               gotoxy(18,21); write('F');
               gotoxy(18,22); write('I');
               gotoxy(18,23); write('M');
               textcolor(10); gotoxy(7,22); write('@');
               textcolor(12); gotoxy(18,2); write('GAME MATEMATICA');
               textcolor(15); gotoxy(49,5); write('[ 1 ]');
               gotoxy(49,8); write('[ 2 ]');
               textcolor(10); gotoxy(52,6); write('Jogar o dado');
               gotoxy(52,9); write('Sair do game');
               textcolor(15);
               for ent:=4 to 10 do
               begin
                    gotoxy(66,ent);
                    write('.');
               end;
               for ent:=48 to 78 do
               begin
                    gotoxy(ent,14); 
                    write('.');
               end;
               soma:=0;
               repeat
                 flag:= 0;
                 textcolor(11); gotoxy(70,5); write('VOCE TEM');
                 gotoxy(73,7); write(cont);
                 gotoxy(69,9); write('TENTATIVAS');
                 textcolor(9); gotoxy(49,12); write('DIGITE 1 PRA JOGAR O DADO');
                 gotoxy(49,13); write('OU 2 PARA ABANDONAR O GAME');
                 textcolor(14); gotoxy(76,13); readln(game);
                 while(game<>'1')and(game<>'2')do
                 begin
                      GOTOXY(76,13); WRITE('  ');
                      gotoxy(49,12); write('                         ');
                      gotoxy(49,13); write('                          ');
                      delay(500);
                      TEXTCOLOR(14); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(12); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(3); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(5); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(1000);
                      GOTOXY(49,12); WRITE('                              ');
                      gotoxy(49,13); write('           ');
                      textcolor(9); gotoxy(49,12); write('DIGITE 1 PRA JOGAR O DADO');
                      gotoxy(49,13); write('OU 2 PARA ABANDONAR O GAME');
                      textcolor(14); 
                      gotoxy(76,13); 
                      readln(game);
                 end;
                 gotoxy(76,13); write('  ');
                 gotoxy(49,12); write('                         ');
                 gotoxy(49,13); write('                          ');
                 if game = '1' then
                 begin
                      textcolor(4); gotoxy(50,12); write('JOGANDO O DADO...');
                      delay(3000);
                      cont:=cont - 1;
                      gotoxy(50,12); write('                 ');
                      randomize;
                      dado:=random(07);
                      while dado = 0 do
                           dado:=random(7);
                      textcolor(14); gotoxy(49,13); write('O numero que saiu foi - ');
                      textcolor(12); write(dado);
                      delay(2000);
                      for ent:=16 to 23 do
                      begin
                           gotoxy(48,ent);
                           write('                             ');
                      end;
                      soma:=dado+soma;
                      repeat
                            matematica;
                            matematica2;
                      until(flag = 1)or(soma > 21);
                 end
                 else
                 begin
                      finaliza;
                      exit;
                 end;         
               until(soma>21)or(cont=0);
               if soma > 21 then
               begin
                    textcolor(4); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
                    delay(3000);
                    gotoxy(48,12); write('                           ');
                    textcolor(10); gotoxy(7,18); write(' ');
                    gotoxy(7,14); write(' ');
                    gotoxy(7,10); write(' ');
                    gotoxy(7,6); write(' ');
                    gotoxy(13,6); write(' ');
                    gotoxy(19,6); write(' ');
                    gotoxy(19,10); write(' ');
                    gotoxy(19,14); write(' ');
                    gotoxy(25,14); write(' ');
                    gotoxy(31,14); write(' ');
                    gotoxy(31,10); write(' ');
                    gotoxy(31,6); write(' ');
                    gotoxy(37,6); write(' ');
                    gotoxy(43,6); write(' ');
                    gotoxy(43,10); write(' ');
                    gotoxy(43,14); write(' ');
                    gotoxy(43,18); write(' ');
                    gotoxy(43,22); write(' ');
                    gotoxy(31,22); write(' ');
                    gotoxy(37,22); write(' ');
                    gotoxy(25,22); write(' ');
                    gotoxy(19,22); write('@');
                    finaliza;
                    exit;
               end;
               if cont = 0 then
               begin
                    textcolor(11); gotoxy(70,5); write('VOCE TEM');
                    gotoxy(73,7); write(cont);
                    gotoxy(69,9); write('TENTATIVAS');
                    delay(300);
                    finaliza;
                    exit;
               end;
             end;
        if game = '2' then  
             begin
               textcolor(9);
               GOTOXY(33,12);
               write('GAME  PROGRAMACAO');
               textcolor(15);gotoxy(22,16); write('Aguarde enquanto o jogo eh inicializado');
               textbackground(14);
               GOTOXY(34,14);
               write('               ');
               delay(700);
               textbackground(12);
               GOTOXY(34,14);
               write('  ');
               delay(1000);
               GOTOXY(36,14);
               write('   ');
               delay(2000);
               GOTOXY(39,14);
               write(' ');
               delay(2000);
               GOTOXY(40,14);
               write('     ');
               delay(1000);
               GOTOXY(45,14);
               write('    ');
               delay(1000);
               textbackground(0);

               clrscr;
               textbackground(1);
               for ent:=4 to 20 do
               begin
                    gotoxy(4,ent); 
                    write(' ');
               end;
               for ent:=4 to 20 do
               begin
                    gotoxy(10,ent); 
                    write(' ');
               end;
               gotoxy(4,4); write('                                          ');
               gotoxy(4,8); write('                                          ');
               gotoxy(5,12); write('     ');
               gotoxy(5,16); write('     ');
               gotoxy(5,20); write('     ');  
               for ent:=4 to 24 do
               begin
                    gotoxy(40,ent); 
                    write(' ');
               end;
               for ent:=4 to 24 do
               begin
                    gotoxy(46,ent); 
                    write(' ');
               end;
               gotoxy(41,12); write('     ');
               gotoxy(41,16); write('     ');
               gotoxy(16,20); write('                              ');  
               gotoxy(16,24); write('                              '); 
               for ent:=4 to 8 do
               begin
                    gotoxy(16,ent); 
                    write(' ');
               end;
               for ent:=4 to 8 do
               begin
                    gotoxy(22,ent); 
                    write(' ');
               end;
               for ent:=4 to 8 do
               begin
                    gotoxy(28,ent); 
                    write(' ');
               end;
               for ent:=4 to 8 do
               begin
                    gotoxy(34,ent); 
                    write(' ');
               end;      
               for ent:=12 to 24 do
               begin
                    gotoxy(16,ent); 
                    write(' ');
               end;
               for ent:=12 to 24 do
               begin
                    gotoxy(22,ent); 
                    write(' ');
               end;
               for ent:=20 to 24 do
               begin
                    gotoxy(28,ent); 
                    write(' ');
               end;
               for ent:=20 to 24 do
               begin
                    gotoxy(34,ent); 
                    write(' ');
               end;    
               for ent:=12 to 16 do
               begin
                    gotoxy(28,ent); 
                    write(' ');
               end; 
               gotoxy(17,12); write('           '); 
               gotoxy(17,16); write('           ');

               textbackground(0);
               textcolor(14);
               gotoxy(5,5); write('4');
               gotoxy(5,9); write('3');
               gotoxy(5,13); write('2');
               gotoxy(5,17); write('1');
               gotoxy(11,5); write('5');
               gotoxy(17,5); write('6');
               gotoxy(23,5); write('7');
               gotoxy(29,5); write('8');
               gotoxy(35,5); write('9');
               gotoxy(41,5); write('10');
               gotoxy(41,9); write('11');
               gotoxy(41,13); write('12');
               gotoxy(41,17); write('13');
               gotoxy(41,21); write('14');
               gotoxy(35,21); write('15');
               gotoxy(29,21); write('16');
               gotoxy(23,21); write('17');
               gotoxy(17,21); write('18');
               gotoxy(17,17); write('19');
               gotoxy(17,13); write('20');
               gotoxy(23,13); write('21');
               textcolor(15); gotoxy(4,23); write('-INICIO');
               gotoxy(32,13); write('F');
               gotoxy(32,14); write('I');
               gotoxy(32,15); write('M');
               textcolor(10); gotoxy(7,22); write('@');
               textcolor(9); gotoxy(18,2); write('GAME PROGRAMACAO');
               textcolor(15); gotoxy(49,5); write('[ 1 ]');
               gotoxy(49,8); write('[ 2 ]');
               textcolor(10); gotoxy(52,6); write('Jogar o dado');
               gotoxy(52,9); write('Sair do game');
               textcolor(15);
               for ent:=4 to 10 do
               begin
                    gotoxy(66,ent);
                    write('.');
               end;
               for ent:=48 to 78 do
               begin
                    gotoxy(ent,14); 
                    write('.');
               end;
               soma:=0;
               repeat
                 flag:= 0;
                 textcolor(11); gotoxy(70,5); write('VOCE TEM');
                 gotoxy(73,7); write(cont);
                 gotoxy(69,9); write('TENTATIVAS');
                 textcolor(12); gotoxy(49,12); write('DIGITE 1 PRA JOGAR O DADO');
                 gotoxy(49,13); write('OU 2 PARA ABANDONAR O GAME');
                 textcolor(14); gotoxy(76,13); readln(game);
                 while(game<>'1')and(game<>'2')do
                 begin
                      GOTOXY(76,13); WRITE('  ');
                      gotoxy(49,12); write('                         ');
                      gotoxy(49,13); write('                          ');
                      delay(500);
                      TEXTCOLOR(14); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(12); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(3); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(900);
                      TEXTCOLOR(5); GOTOXY(49,12); WRITE('VOCE DIGITOU ERRADO');
                      gotoxy(49,13); write('TENTE NOVAMENTE');
                      delay(1000);
                      GOTOXY(49,12); WRITE('                              ');
                      gotoxy(49,13); write('           ');
                      textcolor(9); gotoxy(49,12); write('DIGITE 1 PRA JOGAR O DADO');
                      gotoxy(49,13); write('OU 2 PARA ABANDONAR O GAME');
                      textcolor(14); 
                      gotoxy(76,13); 
                      readln(game);
                 end;
                 gotoxy(76,13); write('  ');
                 gotoxy(49,12); write('                         ');
                 gotoxy(49,13); write('                          ');
                 if game = '1' then
                 begin
                      textcolor(4); gotoxy(50,12); write('JOGANDO O DADO...');
                      delay(3000);
                      cont:=cont - 1;
                      gotoxy(50,12); write('                 ');
                      randomize;
                      dado:=random(07);
                      while dado = 0 do
                           dado:=random(7);
                      textcolor(14); gotoxy(49,13); write('O numero que saiu foi - ');
                      textcolor(12); write(dado);
                      delay(2000);
                      for ent:=16 to 23 do
                      begin
                           gotoxy(48,ent);
                           write('                             ');
                      end;
                      soma:=dado+soma;
                      repeat
                            programacao;
                            programacao2;
                      until(flag = 1)or(soma > 21);
                 end
                 else
                 begin
                      finaliza;
                      exit;
                 end;         
               until(soma>21)or(cont=0);
               if soma > 21 then
               begin
                    textcolor(1); gotoxy(48,12); write('MUDANDO O CURSOR DE CASA...');
                    delay(3000);
                    gotoxy(48,12); write('                           ');
                    textcolor(10); gotoxy(7,6); write(' ');
                    gotoxy(7,10); write(' ');
                    gotoxy(7,14); write(' ');
                    gotoxy(7,18); write(' ');
                    gotoxy(13,6); write(' ');
                    gotoxy(19,6); write(' ');
                    gotoxy(25,6); write(' ');
                    gotoxy(31,6); write(' ');
                    gotoxy(37,6); write(' ');
                    gotoxy(43,6); write(' ');
                    gotoxy(43,10); write(' ');
                    gotoxy(43,14); write(' ');
                    gotoxy(43,18); write(' ');
                    gotoxy(43,22); write(' ');
                    gotoxy(37,22); write(' ');
                    gotoxy(31,22); write(' ');
                    gotoxy(25,22); write(' ');
                    gotoxy(19,22); write(' ');
                    gotoxy(19,18); write(' ');
                    gotoxy(19,14); write(' ');
                    gotoxy(25,14); write(' ');
                    gotoxy(31,14); write('@');
                    finaliza;
                    exit;
               end;
               if cont = 0 then
               begin
                    textcolor(11); gotoxy(70,5); write('VOCE TEM');
                    gotoxy(73,7); write(cont);
                    gotoxy(69,9); write('TENTATIVAS');
                    delay(300);
                    finaliza;
                    exit;
               end;
             end;
     readkey;
end.