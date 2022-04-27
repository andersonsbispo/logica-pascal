Program Sistema_Seguradora;

var
    nomeasb:string;
    idadeasb:integer;
    sexoasb:char;
    cascoasb:real;
    brutoasb:real;
    vistaasb:real;
    valor3xasb:real;
    valor12xasb:real;
    franqasb:real;
    respasb:char;

Begin
    repeat
        clrscr;
        writeln('                           SISTEMA SEGURADORA                           ');
        writeln('                          ANDERSON SANTOS BISPO                         ');
        writeln('------------------------------------------------------------------------');
        writeln('ENTRADAS :');
        write('NOME DO SEGURADO.:');
        readln(nomeasb);
        write('IDADE............:');
        readln(idadeasb);
        write('SEXO.............:');
        readln(sexoasb);
        write('CASCO............:');
        readln(cascoasb);
        writeln('------------------------------------------------------------------------');
    
        if (sexoasb= 'M') and (idadeasb>= 18) and (idadeasb< 30) then begin
                                                                    brutoasb:=cascoasb*0.09;
                                                                        franqasb:=brutoasb*0.10;
                                                                            end;
        
        if (sexoasb= 'F') and (idadeasb>= 18) and (idadeasb< 30) then begin
                                                                    brutoasb:=cascoasb*0.07;
                                                                        franqasb:=brutoasb*0.08;
                                                                            end;
        
        if (idadeasb>= 30) and (idadeasb<= 60) then begin
                                                brutoasb:= cascoasb*0.05;
                                                    franqasb:=brutoasb*0.07;
                                                        end;
                         
        if (idadeasb> 60) or ((idadeasb> 55) and (sexoasb= 'F')) then begin
                                                                    brutoasb:= cascoasb*0.08;
                                                                        franqasb:=brutoasb*0.09;
                                                                            end;

        if (franqasb< 400.00) then franqasb:=400.00;

        vistaasb:=brutoasb*0.90;
        valor3xasb:=brutoasb/3;
        valor12xasb:=brutoasb*1.15/12;

        clrscr;
        writeln('------------------------------------------------------------------------');
        writeln('SAÍDAS :');
        writeln('BRUTO............................:',brutoasb:0:2);
        writeln('VALOR A VISTA....................:',vistaasb:0:2);
        writeln('VALOR para 3x....................:',valor3xasb:0:2);
        writeln('VALOR para 12x...................:',valor12xasb:0:2);
        writeln('FRANQUIA.........................:',franqasb:0:2);
        writeln('------------------------------------------------------------------------');
        write('MENSAGEM : Deseja Realizar Nova Consulta <S/N>?');
        readln(respasb);
    until (respasb = 'N');
	writeln(' FIM DE PROGRAMA !!!!! ');

End.