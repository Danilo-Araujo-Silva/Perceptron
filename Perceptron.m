function Saida = Perceptron(Entrada,Peso,Bias,Limiar)
%PERCEPTRON
Soma=Entrada*Peso';
Saida=Ativacao(Soma,Limiar);
end