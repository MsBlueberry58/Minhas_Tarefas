function simular_dfa(dfa, entrada)
begin
    estado = obter o estado inicial do autômato
    aceitar = falso
    while comprimento(entrada) > 0
    begin
        c = remover o símbolo mais à esquerda da entrada
        if c não está no alfabeto then  
        begin
            erro('O símbolo', c, 'não pertence ao alfabeto do autômato!')
            recolocar c no início da entrada
            break
        end
        if estado não está no conjunto de estados then
        begin
            erro('O estado', estado, 'não pertence ao conjunto de estados do autômato!')
            break
        end
        estado = obter o próximo estado a partir de estado e c
        if não for possível realizar a transição then
        begin
            erro('Não foi possível realizar a transição do estado', estado, 'com entrada', c)
            break
        end
    end
    if estado estiver no conjunto de estados finais e a entrada estiver vazia then
    begin
        aceitar = verdadeiro
    end
    if aceitar for verdadeiro then
    begin
        exibir('A cadeia', entrada, 'foi aceita pelo autômato!')
    end
    else
    begin
        exibir('A cadeia', entrada, 'foi rejeitada pelo autômato!')
    end
end
