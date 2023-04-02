Program holerite;

var
    funcasb: string;
    horasasb: integer;
    shoraasb: real;
    filhosasb: integer;
    sbrutosasb: real;
    inssasb: real;
    irrfasb: real;
    sfamiliaasb: real;
    sliquidoasb: real;
    respasb: char;

Begin
    repeat
        clrscr;
        writeln('---------------------------------------------------------------------');
        writeln('                             EMPRESA BRASIL                          ');
        writeln('---------------------------------------------------------------------');
        write('FUNCIONÁRIO..................:');
        readln(funcasb);
        write('HORAS TRABALHADAS............:');
        readln(horasasb);
        write('SALÁRIO HORA.................:');
        readln(shoraasb);
        write('Filhos.......................:');
        readln(filhosasb);
        writeln('---------------------------------------------------------------------');
        writeln('DIGITE ENTER PARA GERAR O RELATÓDIO');
        readln;

        sbrutosasb:=horasasb*shoraasb;
        if (sbrutosasb<=1174.86) then inssasb:=sbrutosasb*0.08;
        if (sbrutosasb>=1174.87) and (sbrutosasb<=1958.10) then inssasb:=sbrutosasb*0.09;
        if (sbrutosasb>=1958.11) and (sbrutosasb<=3916.20) then inssasb:=sbrutosasb*0.11;
        if (sbrutosasb>3916.20) then inssasb:=430.78;

        if (sbrutosasb<=1313.69) then irrfasb:=0;
        if (sbrutosasb>=1313.70) and (sbrutosasb<=2625.12) then irrfasb:=sbrutosasb*0.15-197.05;
        if (sbrutosasb > 2625.12) then irrfasb := sbrutosasb * 0.275-525.19;

        if (sbrutosasb<=608.80) then sfamiliaasb:=31.22*filhosasb;
        if (sbrutosasb>=608.81) and (sbrutosasb<=915.05) then sfamiliaasb:=22*filhosasb;
        if (sbrutosasb>915.05) then sfamiliaasb:=0;

        sliquidoasb:=sbrutosasb-inssasb-irrfasb+sfamiliaasb;

        clrscr;
        writeln('---------------------------------------------------------------------');
        writeln('                      EMPRESA BRASIL - TELA SAÍDA                    ');
        writeln('---------------------------------------------------------------------');
        writeln('FUNCIONÁRIO.......:',funcasb);
        writeln('SALÁRIO BRUTO.....:',sbrutosasb:0:2);
        writeln('DESCONTO INSS.....:',inssasb:0:2);
        writeln('IRRF..............:',irrfasb:0:2);
        writeln('SALÁRIO FAMILIA...:',sfamiliaasb:0:2);
        writeln('SALÁRIO LIQUIDO...:',sliquidoasb:0:2);
        writeln('---------------------------------------------------------------------');
        writeln('TECLE S PARA REINICIAR O SISTEMA');
        readln (respasb);
    until (respasb = 'N');

End.