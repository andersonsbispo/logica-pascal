Program Compra_e_Venda ;

Var
	prodasb:string;
	precoasb:real;
	quantasb:integer;
	totalpasb:real;
	totalcasb:real;
	descasb:real;
	totallasb:real;
	respasb:char;

Begin
	repeat
		clrscr;
		writeln('--------------------------------------------------------');
		writeln('          SISTEMA COMPRA/VENDA - TELA ENTRADA           ');
		writeln('--------------------------------------------------------');
		write(' PRODUTO...........: ');
		readln(prodasb);
		write(' PREÇO UNITÁRIO....: ');
		readln(precoasb);
		write(' QUANTIDADE........: ');
		readln(quantasb);
		writeln('--------------------------------------------------------');
		
		totalpasb := precoasb * quantasb;
		totalcasb := totalcasb + totalpasb;
  
  	writeln(' TOTAL PARCIAL...: ', totalpasb:0:2);
  	writeln(' TOTAL DA COMPRA.: ', totalcasb:0:2);
  	writeln('--------------------------------------------------------');
  	write(' OUTRO PRODUTO ( s / n ) : ');
  	readln(respasb);
	until (respasb = 'n');

	if (totalcasb < 100) then descasb := totalcasb * 0.10
												else descasb := totalcasb * 0.20;
	totallasb := totalcasb - descasb;
	
	clrscr;
	writeln('--------------------------------------------------------');
	writeln('          SISTEMA COMPRA/VENDA - TELA SAIDA             ');
	writeln('--------------------------------------------------------');
	writeln(' TOTAL DA COMPRA.......: ', totalcasb:0:2);
	writeln('--------------------------------------------------------');
	writeln(' DESCONTO..............: ', descasb:0:2);
	writeln('--------------------------------------------------------');
	writeln(' TOTAL LÍQUIDO..........: ', totallasb:0:2);
	writeln('--------------------------------------------------------');
	writeln(' FIM DE PROGRAMA, TECLE ENTER ');
	readln;
	
End.