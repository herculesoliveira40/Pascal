Program TABELA_ASCII;
uses crt;
var
i, x, y : integer;
begin

     // Site: http://programjm.blogspot.com.br/



     // Inicializando as variáveis, atribuindo valor 1.
     x := 1;
     y := 1;


     // Programa imprimi os caracteres da tabela ASCII de 1 até 216.
     for i := 1 to 216 do begin
         // Gotoxy(COLUNA, LINHA);
         gotoxy(x, y);

         {
          O comando chr é o responsável por obter o caractere
          da tabela ASCII, de acordo com seu parâmetro.
         }
         write(i, ': ', chr(i) );
         x := x + 9; // Incrementando o contador.

         // Como é inicializado com 1, temos: 1 + 9 * 9 = 82.
         if (x = 82) then begin
            x := 1;
            y := y + 1;
         end;

     end;
     
readkey;
end.