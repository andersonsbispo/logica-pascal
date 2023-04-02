Program Descontos;

var
    nomeasb:string;
    prodasb:string;
    precoasb:real;
    quantasb:integer;
    totalasb:real;
    descasb:real;
    liquidoasb:real;

Begin
    writeln(' SISTEMA DESCONTOS ');
    writeln('---------------------------------------------');
    write(' Nome do Cliente......: ');
    readln(nomeasb);
    write(' Produto..............: ');
    readln(prodasb);
    write(' Preço Unitário.......: R$ ');
    readln(precoasb);
    write(' Quantidade...........: ');
    readln(quantasb);
    writeln('---------------------------------------------');
    write(' TECLE ENTER PARA GERAR NOTA FISCAL ');
 readln;

    totalasb := quantasb*precoasb;
    if (totalasb<=10) then descasb := totalasb*0.05
                        else if (totalasb<=50) then descasb := totalasb*0.10
                                                else descasb := totalasb*0.20;
   
    liquidoasb := totalasb - descasb;

    clrscr;
    writeln(' SISTEMA DESCONTOS ');
    writeln('---------------------------------------------');
    writeln(' Cliente............: ',nomeasb);
    writeln(' Total..............: R$ ',totalasb:0:2);
    writeln(' Desconto...........: R$ ',descasb:0:2);
    writeln(' Total Liquido......: R$ ', liquidoasb:0:2);
    writeln('---------------------------------------------');
    writeln(' FIM DE PROCESSAMENTO ');
    readln;
End.