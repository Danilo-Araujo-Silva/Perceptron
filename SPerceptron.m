Numero_de_entradas=input('\nInsira o número de entradas:');
Peso=rand(1,Numero_de_entradas);
Bias=rand;
Limiar=input('\nInsira o valor do Limiar:');
Taxa_de_aprendizagem=input('\nInsira o valor da taxa de aprendizagem:');
Tolerancia_a_erros=input('\nInsira o valor da tolerância a erros:');

Sair=0;
while (Sair~=1)
    for Loop=1:Numero_de_entradas
        fprintf('\nInsira o valor da entrada %d:',Loop);
        Entrada(Loop)=input('');
    end
    % while 1
        Saida=Perceptron(Entrada,Peso,Bias,Limiar);
        Saida_desejada=input('\nInsira o valor da saída desejada:');
        Erro=Saida_desejada-Saida
        Peso=Peso+Taxa_de_aprendizagem*Erro*Entrada
    Sair=input('\nDeseja para o treinamento?(Sim->1)');
    %     if (Erro<Tolerancia_a_erros)
    %         break;
    %     end
end
fprintf('\nPerceptron treinado. Insira as entradas:');

Sair=0;
while(Sair~=1)
    for Loop=1:Numero_de_entradas
        fprintf('\nInsira o valor da entrada %d:',Loop);
        Entrada(Loop)=input('');
    end
    Saida=Perceptron(Entrada,Peso,Bias,Limiar)
    Sair=input('\nDeseja sair?(Sim->1)');
end