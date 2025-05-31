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
    echo "#           IBMEC : Instituto Brasileiro de Mercado de Capitais #"
    echo "#         Sistema Operacionais (\"$CODIGO_DISCIPLINA\")                    #"
    echo "#              Professor: Luiz Fernando T. de Farias            #"
    echo "#                    ${SEMESTRE}º Semestre de ${ANO}                        #"
    echo "# ============================================================ #"
    echo "#                            Equipe:                           #"
    echo "#  Aluno: $ALUNO1_NOME    Matricula: $ALUNO1_MATRICULA  #"
    echo "#  Aluno: $ALUNO2_NOME    Matricula: $ALUNO2_MATRICULA  #"
    echo "#  Aluno: $ALUNO3_NOME     Matricula: $ALUNO3_MATRICULA  #"
    echo "################################################################"
}

exibir_cabecalho
