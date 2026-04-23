# Exercício 1: Encontre e corrija os bugs com a ajuda da IA!
# Este script deveria calcular a média de notas de uma turma e listar os alunos aprovados (média >= 6.0).
# Desafio: Copie este código, cole na IA e peça para ela explicar os erros e fornecer a versão corrigida.

def calcular_media(notas) # Erro 1: Sintaxe
    total = 0
    for nota in notas:
        total += nota
    return total / len(notas)

alunos = [
    {"nome": "Ana", "notas": [7.5, 8.0, 9.0]},
    {"nome": "Carlos", "notas": [5.0, 4.5, 6.0]},
    {"nome": "Beatriz", "notas": [6.5, 6.0]}, 
    {"nome": "João", "notas": [9.0, 8.5, 10.0]}
]

aprovados = []

for aluno in alunos:
    # Erro 2: Chave incorreta no dicionário
    media = calcular_media(aluno["nota"]) 
    
    # Erro 3: Operador de atribuição ao invés de comparação
    if media = 6.0:
        # Erro 4: Tentando acessar propriedade de dicionário como se fosse objeto
        aprovados.append(aluno.nome)

print("Alunos Aprovados:")
for aprovado in aprovados:
    print(f"- {aprovado}")

# Erro 5: Chamando a função sem passar os argumentos necessários
print(f"Média geral da turma: {calcular_media()}")
