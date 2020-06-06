

def convert(lista):
    for i in range(len(lista)):
        print(lista[i])
        if (lista[i] == '1') or (lista[i] == '2') or (lista[i] == '3') or (lista[i] == '4') or (lista[i] == '5') or (lista[i] == '6') or (lista[i] == '7') or(lista[i] == '8') or (lista[i] == '9'):
            lista[i] = 'n'
            lista_nova = lista
    return lista_nova    

lista1 = ['1', '2', 'e', '-', '4', 'e', 'E', '8', '9']
print(lista1)
ln1 = convert(lista1)   
lista2 =  input(print("Digite a lista:"))

ln2 = convert(lista2)
