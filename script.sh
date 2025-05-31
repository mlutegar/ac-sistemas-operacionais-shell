#!/bin/bash

CODIGO_DISCIPLINA="IBM0791"
SEMESTRE="1"
ANO="2025"
ALUNO1_NOME="André Costa"
ALUNO1_MATRICULA="202208385371"
ALUNO2_NOME="Marceu Filho"
ALUNO2_MATRICULA="202051772191"
ALUNO3_NOME="Michel Lutegar D'Orsi Pereira"
ALUNO3_MATRICULA="202208385192"

exibir_cabecalho() {
    echo "################################################################"
    echo "#        IBMEC : Instituto Brasileiro de Mercado de Capitais   #"
    echo "#         Sistema Operacionais (\"$CODIGO_DISCIPLINA\")        #"
    echo "#             Professor: Luiz Fernando T. de Farias            #"
    echo "#              ${SEMESTRE}º Semestre de ${ANO}                 #"
    echo "# ============================================================ #"
    echo "#                            Equipe:                           #"
    echo "#  Aluno: $ALUNO1_NOME    Matricula: $ALUNO1_MATRICULA         #"
    echo "#  Aluno: $ALUNO2_NOME    Matricula: $ALUNO2_MATRICULA         #"
    echo "#  Aluno: $ALUNO3_NOME    Matricula: $ALUNO3_MATRICULA         #"
    echo "################################################################"
}

while true
do
    clear
    exibir_cabecalho
    echo "Pressione a tecla para o comando que desejar abaixo"
    echo "1. listar arquivos e diretórios de determinado diretorio"
    echo "2. Analisar de uso de CPU e memória do sistema"
    echo "3. Verificar espaço em disco"
    echo "4. Exibir usuarios logados"
    echo "q. finaliza o programa"
    read answer
    case "$answer" in 
        1) clear
        echo "digite o absolute path: "
        read path 
        ls -l "$path";;
        2) clear
        echo "pressione ctrl+c para sair do menu"
        top;;
        3) clear
        df -h ;;
        4) clear
        who -H ;;
        q) exit ;;
    esac
    echo -e "pressione enter para continuar \c"
    read input
done
exibir_cabecalho
