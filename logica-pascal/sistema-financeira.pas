Program Sistema_Financeira;

var
	tipoclienteasb:char;
	valoremprestimoasb:real;
	numparcelasasb:integer;
	taxaasb:real;
	valorparcelaasb:real;
	valortotalasb:real;
	respasb:char;

Begin
    repeat
        clrscr;
        writeln('                 Sistema Financeira                 ');
        writeln('----------------------------------------------------');
        write('TIPO DE CLIENTE (F / J) :');
        readln(tipoclienteasb);
        write('VALOR DO EMPRESTIMO :');
        readln(valoremprestimoasb);
        write('NÚMERO DE PARCELAS :');
        readln(numparcelasasb);
        writeln('----------------------------------------------------');
        write('TECLE ENTER PARA SIMULAR');

        if (tipoclienteasb= 'F') and (valoremprestimoasb< 1000) then taxaasb := 1.5
            else if (tipoclienteasb= 'F') and (valoremprestimoasb< 5000) then taxaasb := 1.4
            	else if (tipoclienteasb= 'J') and (valoremprestimoasb< 5000) or (tipoclienteasb= 'F') and (valoremprestimoasb> 5000) then taxaasb := 1.3
            		else if (tipoclienteasb= 'J') and (valoremprestimoasb> 5000) then taxaasb := 1;

        valortotalasb:=valoremprestimoasb*exp(numparcelasasb*ln(1+taxaasb/100));
        valorparcelaasb:=valortotalasb/numparcelasasb;

        clrscr;
        writeln('                 Sistema Financeira                 ');
        writeln('----------------------------------------------------');
        writeln('VALOR EMPRESTIMO...............:',valoremprestimoasb:0:2);
        writeln('TAXA...........................:',taxaasb:0:1);
        writeln('NUMERO DE PARCELAS...............:',numparcelasasb:0:2);
        writeln('VALOR PARCELA....................:',valorparcelaasb:0:2);
        writeln('VALOR TOTAL......................:',valortotalasb:0:2);
        write('TECLE S PARA NOVA SIMULAÇÃO :');
        readln(respasb);
    until (respasb = 'N');
    writeln(' FIM DO PROGRAMA !!!!!! ')

End.