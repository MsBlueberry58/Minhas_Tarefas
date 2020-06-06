#### GRUPO - Erro404 ####
## Bruna Galastri Guedes - 18.00189-0
## Daniel Ughini Xavier  & 18.00022-3 
## Rodolfo Cochi Bezerra & 18.00202-0 
## Vítor Martin Simoni   & 18.00050-9



########## IMPORTS ##########
from pathlib import Path


########## FUNCTIONS ##########

# converting chain number to 'n'
def convertn(lista):
    for i in range(len(lista)):
        if (lista[i] == '0') or (lista[i] == '1') or (lista[i] == '2') or (lista[i] == '3') or (lista[i] == '4') or (lista[i] == '5') or (lista[i] == '6') or (lista[i] == '7') or(lista[i] == '8') or (lista[i] == '9'):
            lista[i] = 'n' 
    return lista  
             
        
#
def showAut(aut):
    print('aut :', aut)
    print('    states :', aut['states'])
    print('    iniState :', aut['iniState'])
    print('    finStates :', aut['finStates'])
    print('    values :', aut['values'])
    print('    deltas :', aut['deltas'])


# function that prints the chain
def showChain(chain):
    print('chain :', chain)

#
def getAbsPath(dir):
    absPath = str(Path(__file__).parent.parent) + "\\Txt\\" + dir + '\\'
    return absPath

#
def getAut(absPath):
    with open(absPath + 'automato.txt') as file:
        dictionary = eval(file.read())
        return dictionary
        
#
def getChain(absPath, num):
    with open(absPath + 'chain%i.txt' % num) as file:
        lista = eval(file.read())
        lista = [str(step) for step in lista]
        return lista

#
def simulate(aut, chain):
    print('Current state (Cur)\tValue (Val)\tNext state(Nex)')
    print('Cur\tVal\tNex')
    print(19 * '-')
    iniChain = chain.copy()
    output = ''
    curState = aut['iniState']
    accept = False
    while len(chain) > 0:
        value = chain.pop(0)
        interfaceText = '%i\t%s\t' %(curState, value)

        # validating value and current state
        if value not in aut['values']:
            chain = chain.insert(0, value)
            output = 'ERRO: O valor %s nao pertence ao alfabeto do automato.' % value
            break
        if curState not in aut['states']:
            output = 'ERRO: O estado %i nao pertence ao conjunto de estados do automato.' % curState
            break

        # getting next state
        try:
            curState = aut['deltas'][(curState, value)]
        except:
            output = 'Nao foi possivel realizar a transicao do estado %i com o valor %s.' % (curState, value)
            break
        else:
            interfaceText += str(curState)
            print(interfaceText)
    
    # Checking chain validity
    if curState in aut['finStates'] and len(chain) == 0:
        accept = True
    if accept:
        output = 'A cadeia %s foi ACEITA pelo automato.' % iniChain
    else:
        output = 'A cadeia %s foi REJEITADA pelo automato.' % iniChain
    
    return output


########## MAIN ##########

#### MENU - choosing an automaton + import/type the chain ####
print("Escolha um automato: \n 0 - Automato 0 \n 1 - Automato 1 \n 2 - Automato 2 \n 3 - Automato 3 \n 4 - Automato Reais \n")
op = int(input("Digite sua opcao: "))
print("Deseja digitar ou importar a cadeia ?")
opuser = input("Digite sua opcao [d/i]: ")

#Choosing to type a chain for automatons 0-3
if ((op == 0) or (op == 1) or (op == 2) or (op == 3)) and (opuser =='d'):
    absPath = getAbsPath('Automato {}'.format(op))
    aut   = getAut(absPath)
    chain = input("Digite a cadeia, com cada elemento separado por  ',': ").split(',')
    output = simulate(aut, chain)
    print(output)

#Choosing to import a chain (0-3) for automatons 0-3    
elif ((op == 0) or (op == 1) or (op == 2) or (op == 3)) and (opuser =='i'):
    num_cadeia = int(input("Digite o numero da cadeia [0,1,2,3]: "))
    absPath = getAbsPath('Automato {}'.format(op))
    aut   = getAut(absPath)
    chain = getChain(absPath, num_cadeia)
    output = simulate(aut, chain)
    print(output)

#Choosing to type a chain for automaton 4 (real numbers)
if (op == 4) and (opuser =='d'):
    absPath = getAbsPath('Automato {}'.format(op))
    aut   = getAut(absPath)
    chain = (input("Digite a cadeia, com cada elemento separado por ',': ")).split(',')
    chain = convertn(chain)
    output = simulate(aut, chain)
    print(output)

#Choosing to import a chain (0-3) for automaton 4 (real numbers)
if (op == 4) and (opuser =='i'):
    num_cadeia = int(input("Digite o numero da cadeia [0,1,2,3]: "))
    absPath = getAbsPath('Automato {}'.format(op))
    aut   = getAut(absPath)
    chain = getChain(absPath, num_cadeia)
    chain = convertn(chain)
    output = simulate(aut, chain)
    print(output)
