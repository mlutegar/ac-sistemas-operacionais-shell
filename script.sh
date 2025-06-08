 !/bin/bash

# Script de menu interativo para operações do sistema
# Disciplina: Sistemas Operacionais - IBMEC 2025
# Captura e ignora sinais de interrupção (Ctrl+C e Ctrl+Z)
trap '' SIGINT SIGTSTP
# Definição de variáveis com informações do curso
CODIGO_DISCIPLINA="IBM0791"
SEMESTRE="1"
ANO="2025"
# Informações dos alunos da equipe
ALUNO1_NOME="André Costa"
ALUNO1_MATRICULA="202208385371"
ALUNO2_NOME="Marceu Filho"
ALUNO2_MATRICULA="202051772191"
ALUNO3_NOME="Michel Lutegar D'Orsi Pereira"
ALUNO3_MATRICULA="202208385192"
# Captura data e hora atuais
DATA=$(date +%d:%m:%Y)
TIME=$(date +%H:%M)
# Função para exibir o cabeçalho do programa
exibir_cabecalho() {
echo "####################################################################"
    echo "#        IBMEC : Instituto Brasileiro de Mercado de Capitais       #"
    echo "#         Sistema Operacionais (\"$CODIGO_DISCIPLINA\")                         #"
    echo "#             Professor: Luiz Fernando T. de Farias                #"
    echo "#                ${SEMESTRE}º Semestre de ${ANO}                               #"
    echo "# ================================================================ #"
    echo "#                            Equipe:                               #"
    echo "#  Aluno: $ALUNO1_NOME                      Matricula: $ALUNO1_MATRICULA #"
    echo "#  Aluno: $ALUNO2_NOME                     Matricula: $ALUNO2_MATRICULA #"
    echo "#  Aluno: $ALUNO3_NOME    Matricula: $ALUNO3_MATRICULA #"
    echo "####################################################################"
    echo "Rio de janeiro $DATA                                $TIME"
    echo ""
}
# Loop principal do programa
while true
do
# Limpa a tela e exibe o cabeçalho
clear
exibir_cabecalho

# Exibe o menu de opções
echo "Pressione a tecla para o comando que desejar abaixo"
echo "1. listar arquivos e diretórios de determinado diretorio"
echo "2. Encontre no sistem de arquivos do usuario o Arquivo"
echo "3. Verificar espaço em disco"
echo "4. Exibir usuarios logados"
echo "5. finaliza o programa"
# Lê a escolha do usuário
read answer
# Processa a escolha usando estrutura case
case "$answer" in
1) # Opção para listar arquivos
clear
echo "digite o absolute path: "
read DIRECTORY # Corrigido: PATH é variável reservada
ls -l "$DIRECTORY" | more -10 # Corrigido: capitalização
;;
2) # Opção para buscar arquivo
clear
echo "Digite o nome do arquivo:"
read filename
find /home -name "$filename" # Adicionadas aspas
;;
3) # Opção para verificar espaço em disco
clear
df -m
;;
4) # Opção para exibir usuários logados
clear
who -H
;;
5) # Opção para sair do programa
exit
;;
*) # Opção inválida
echo "Opção inválida!"
;;
esac
# Pausa antes de retornar ao menu
echo -e "pressione enter para continuar \c"
read input
done
