#!/bin/bash
# CTI VP Eng.
# [RESTRITA]
# [AMBER]

# Função para exibir o cabeçalho com ASCII art
#exibir_cabecalho() {

#echo  “    ________________            _    ______     ______ “          
#echo “    / ____/_  __/  _/           | |  / / __ \   / ____/__  ____ _  ”
#echo “   / /     / /  / /   ______    | | / / /_/ /  / __/ / __ \/ __ `/ ”
#echo “  / /___  / / _/ /   /_____/    | |/ / ____/  / /___/ / / / /_/ / ” 
#echo “  \____/ /_/ /___/              |___/_/      /_____/_/ /_/\__, / ”  
#echo “                                                         /____/ “ 	
#}

# Função para exibir a sintaxe de cada ferramenta
exibir_sintaxe() {
	case $1 in
    	"mr.holmes")
        	echo "Exemplo de sintaxe para mr.holmes: mr.holmes -c consulta"
        	echo "Comando modelo: mr.holmes -c exemplo"
        	;;
    	"sherlock")
        	echo "Exemplo de sintaxe para sherlock: sherlock usuario"
        	echo "Comando modelo: sherlock exemplo"
        	;;
    	"nmap")
        	echo "Exemplo de sintaxe para nmap: nmap -p 80 alvo.com"
        	echo "Comando modelo: nmap -p 80 exemplo.com"
        	;;
    	"nuclei")
        	echo "Exemplo de sintaxe para nuclei: nuclei -l urls.txt -t /caminho/para/templates/"
        	echo "Comando modelo: nuclei -l urls.txt -t templates/"
        	;;
    	"spiderfoot")
        	echo "Exemplo de sintaxe para spiderfoot: spiderfoot -l localhost:5001"
        	echo "Comando modelo: spiderfoot -l localhost:5001"
        	;;
    	"darkus")
        	echo "Exemplo de sintaxe para darkus: darkus scan -t alvo.com"
        	echo "Comando modelo: darkus scan -t exemplo.com"
        	;;
    	*)
        	echo "Ferramenta não reconhecida."
        	;;
	esac
}

# Função para solicitar o comando específico da ferramenta selecionada
solicitar_comando() {
	exibir_sintaxe $1
	read -p "Digite o comando para $1: " comando
	echo "Comando para $1: $comando"
}

# Exibir cabeçalho
#exibir_cabecalho

# Menu de opções
echo "Escolha uma ferramenta:"
echo "1. mr.holmes"
echo "2. sherlock"
echo "3. nmap"
echo "4. nuclei"
echo "5. spiderfoot"
echo "6. darkus"
echo "0. Sair"

# Ler a opção selecionada
read -p "Opção escolhida: " opcao

# Estrutura case para lidar com a opção selecionada
case $opcao in
	1)
    	echo "Opção 1 selecionada: mr.holmes"
    	solicitar_comando "mr.holmes"
    	;;
	2)
    	echo "Opção 2 selecionada: sherlock"
    	solicitar_comando "sherlock"
    	;;
	3)
    	echo "Opção 3 selecionada: nmap"
    	solicitar_comando "nmap"
    	;;
	4)
    	echo "Opção 4 selecionada: nuclei"
    	solicitar_comando "nuclei"
    	;;
	5)
    	echo "Opção 5 selecionada: spiderfoot"
    	solicitar_comando "spiderfoot"
    	;;
	6)
    	echo "Opção 6 selecionada: darkus"
    	solicitar_comando "darkus"
    	;;
	0)
    	echo "Saindo..."
    	exit 0
    	;;
	*)
    	echo "Opção inválida."
    	;;
esac
