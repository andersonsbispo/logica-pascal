Program boletim;

var
    nomeasb:string;
    p1asb:real;
    p2asb:real;
    previasasb:real;
    atividadesasb:real;
    faltasasb:integer;
    mediaasb:real;
    situacaoasb:string;

Begin
    clrscr;
    writeln('     PRÁTICA II - PROGRAMAÇÃO I - BOLETIM     ');
    writeln('______________________________________________');
    write(' Nome do Aluno........: ');
    readln(nomeasb);
    write(' Prova 1..............: ');
    readln(p1asb);
    write(' Prova 2..............: ');
    readln(p2asb);
    write(' Prévias..............: ');
    readln(previasasb);
    write(' Atividades...........: ');
    readln(atividadesasb);
    write(' Faltas...............: ');
    readln(faltasasb);
    writeln('______________________________________________');
    write(' TECLE ENTER PARA GERAR O BOLETIM ');
    readln;

    mediaasb := p1asb*0.3 + p2asb*0.3 + previasasb*0.2 + atividadesasb*0.2;
    if (faltasasb > 10) then situacaoasb:='REPROVADO FREQUÊNCIA'
    										else if (mediaasb>=7) then situacaoasb:='APROVADO'
    																					else situacaoasb:='REPROVADO NOTA';
    
    clrscr;
    writeln('     PRÁTICA II - PROGRAMAÇÃO I - BOLETIM     ');
    writeln('______________________________________________');    
    writeln(' ALUNO..........: ',nomeasb);
    writeln(' MÉDIA FINAL....: ', mediaasb:0:2);
    writeln(' FALTAS.........: ', faltasasb);
    writeln;
    writeln(' SITUAÇÃO FINAL.: ',situacaoasb);
    writeln;
		writeln('______________________________________________');
    writeln(' FIM DO PROGRAMA !!! ');

End.