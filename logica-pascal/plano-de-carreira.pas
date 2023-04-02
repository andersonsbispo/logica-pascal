Program Pano_de_carreira;
var
  nomeasb:string;
  sbaseasb:real;
  tempoasb:integer;
  escolaasb:integer;
  classeasb:string;
  sbrutoasb:real;
  respasb:char;
Begin
  repeat
    clrscr;
    writeln('-------------------------------------------');
    writeln('            PLANO DE CARREIRA              ');
    writeln('-------------------------------------------');
    writeln('    ENTRADAS : ');
    write(' NOME DO FUNCIONÁRIO......: ');
    readln(nomeasb);
    write(' SALÁRIO BASE.............: ');
    readln(sbaseasb);
    write(' TEMPO DE TRABALHO........: ');
		readln(tempoasb);
		write(' ESCOLARIDADE.............: ');
		readln(escolaasb);
		writeln('-------------------------------------------');
	
		if (tempoasb<3) or (escolaasb<3) then begin
		                                    classeasb:='JUNIOR';
																				sbrutoasb:=sbaseasb;
																				end;
		if (tempoasb>=3) and (escolaasb>=3) then begin
		                                       classeasb:='PLENO';
																				   sbrutoasb:=sbaseasb*1.5;
																				   end;
		if ((tempoasb>=15) and (escolaasb>=4)) or (escolaasb=6) then begin
		                                                          classeasb:='SENIOR';
																				                      sbrutoasb:=sbaseasb*2;
																				                      end;

		writeln('    SAÍDAS : ');
		writeln(' CLASSE.................: ', classeasb);
		writeln(' SALÁRIO BRUTO..........: ',sbrutoasb:0:2);
		writeln('-------------------------------------------');
		write(' DIGITE S PARA NOVO FUNCIONÁRIO : ');
		readln(respasb);
	until (respasb = 'n');
	writeln(' FIM DE PROGRAMA !!!!! '); 
End.