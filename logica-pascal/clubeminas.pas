Program Clube_Minas;

var
    nomeasb:string;
    idadeasb:integer;
    tempotreinoasb:integer;
    matriculaasb:real;
    categoriaasb:string;
    mensalidadeasb:real;
    valor5mesesasb:real;
    valor10mesesasb:real;
    respasb:char;

Begin
    repeat
        clrscr;
        writeln('                                CLUBE MINAS                             ');
        writeln('                          ANDERSON SANTOS BISPO                         ');
        writeln('------------------------------------------------------------------------');   
        writeln('ENTRADAS :');
        write('NOME DO ATLETA...:');
        readln(nomeasb);
        write('IDADE............:');
        readln(idadeasb);
        write('TEMPO DE TREINO..:');
        readln(tempotreinoasb);
        write('MATRÍCULA........:');
        readln(matriculaasb);
        writeln('------------------------------------------------------------------------');
        
        if (idadeasb <5) then begin 
														writeln ('ATLETAS MENORES QUE 5 ANOS NÃO SÃO ADMITIDOS NO CLUBE');
															categoriaasb:= 'NÃO PREENCHE OS REQUESITOS MÍNIMOS PARA SE MATRICULAR AO CLUBE';
																mensalidadeasb:= matriculaasb*0;
																	end;
        
        if (idadeasb >=5) and (idadeasb <=11) then begin
                                                categoriaasb:= 'INFANTIL';
                                                    mensalidadeasb:= matriculaasb*0.50;
                                                        end;
        
        if ((idadeasb >=12) and (idadeasb <=17)) or ((idadeasb >=18) and (tempotreinoasb <12)) then begin
                                                                                                categoriaasb:= 'JUVENIL';
                                                                                                    mensalidadeasb:= matriculaasb*0.75;
                                                                                                        end;
        
        if ((idadeasb >=18) and (tempotreinoasb >=12)) or ((idadeasb >=15) and (tempotreinoasb >120)) then begin
                                                                                                        categoriaasb:= 'ADULTO';
                                                                                                            mensalidadeasb:= matriculaasb;
                                                                                                                end;
        
        valor5mesesasb:= mensalidadeasb*5*0.90;
        valor10mesesasb:= mensalidadeasb*10*0.95;

        writeln('SAÍDAS :');
        writeln('CATEGORIA......:',categoriaasb);
        writeln('MENSALIDADE....:',mensalidadeasb:0:2);
        writeln('VALOR 5 MESES...:',valor5mesesasb:0:2);
        writeln('VALOR 10 MESES..:',valor10mesesasb:0:2);
        writeln('------------------------------------------------------------------------');
        write('MENSAGEM : DESEJA ENCERRAR O PROGRAMA <S/N>?');
        readln(respasb);
    until (respasb = 'S');

End.