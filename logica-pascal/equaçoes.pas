Program equacoes;

var
    aasb,basb,casb:real;
    deltaasb:real;
    x1asb,x2asb:real;
    respasb:char;

Begin
    repeat
        clrscr;
        writeln('----------------------------------------------------');
        writeln('            PROGRAMA EQUAÇÕES DO 2o GRAU            ');
        writeln('----------------------------------------------------');
        writeln(' EQUAÇÃO 2o GRAU : ax²+bx+c=0 ');
        repeat
            write(' Digite o Valor de a : ');
            readln(aasb);
            if (aasb=0) then writeln (' ESSA EQUAÇÃO NÃO É DO 2o GRAU (a NÃO PODE SER ZERO) ');
        until (aasb<>0);
        write(' Digite o Valor de b : ');
        readln(basb);
        write(' Digite o Valor de c : ');
        readln(casb);
        writeln('----------------------------------------------------');

        deltaasb:=basb*basb - 4*aasb*casb;
        writeln(' VALOR DE DELTA : ',deltaasb:0:2);
        if (deltaasb<0) then begin
                                writeln(' ESSA EQUAÇÃO NÃO POSSUI RAIZ REAL ( delta < 0 ) ');
                                end
                        else begin
                            x1asb:=(-basb+sqrt(deltaasb))/(2*aasb);
                            x2asb:=(-basb-sqrt(deltaasb))/(2*aasb);
                            writeln(' X1 = ',x1asb:0:2);
                            writeln(' X2 = ',x2asb:0:2);
                            end;
        writeln('----------------------------------------------------');
        write(' DIGITE S PARA RESOLVER OUTRA EQUAÇÃO : ');
        readln(respasb);
    until (respasb='N');
    writeln(' FIM DO PROGRAMA !!!!!!! ');

End.