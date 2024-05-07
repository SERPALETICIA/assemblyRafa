
Em Assembly, você pode alocar memória dinamicamente para armazenar dados que têm tamanho variável, como um nome. 
Isso significa que você não precisa reservar um espaço de memória estática com tamanho fixo. A alocação dinâmica proporciona
mais flexibilidade e eficiência ao utilizar a memória, especialmente quando lidamos com dados cujo tamanho não é conhecido 
antecipadamente ou pode mudar durante a execução do programa.

Em Assembly, você pode alocar memória dinamicamente de duas maneiras principais: usando o Heap ou a Pilha.

1- Alocação no Heap:

O Heap é uma área de memória especial que não está associada a nenhuma parte específica do programa.
Você pode alocar memória no Heap usando instruções como malloc ou calloc, que retornam um ponteiro para o início da memória alocada.
Ao usar essas instruções, você especifica o tamanho do bloco de memória que deseja alocar.
É fundamental liberar a memória alocada no Heap quando não for mais necessária, utilizando a instrução free. Isso evita vazamentos de memória.

2- Alocação na Pilha:

A Pilha é uma área de memória reservada para armazenar dados temporários e informações de função.
A alocação na Pilha é feita automaticamente pela CPU sempre que uma função é chamada.
O tamanho da memória alocada na Pilha depende do tamanho dos argumentos da função e das variáveis locais utilizadas dentro dela.
A memória alocada na Pilha é liberada automaticamente quando a função retorna.

----------------------------------

O DOS (Disk Operating System - Sistema Operacional de Disco) e Assembly são conceitos diferentes, mas relacionados, 
na programação de computadores.

O DOS era um sistema operacional antigo desenvolvido pela Microsoft, que operava em modo texto e funcionava como uma 
interface entre o usuário e o hardware do computador. Ele permitia a execução de programas e o gerenciamento de arquivos. 
Embora não seja diretamente ligado à linguagem Assembly, o DOS foi projetado para rodar em processadores de 16 bits, como o Intel 8086. 
Muitos programas para DOS foram escritos em Assembly para interagir diretamente com o hardware usando instruções específicas desse 
processador. Além disso, alguns utilitários do próprio DOS podem ter sido programados em Assembly para obter melhor desempenho.

O Assembly para DOS era frequentemente utilizado para:

1- Chamadas de Interrupção: Usar interrupções de software fornecidas pelo DOS para realizar funções do sistema operacional, como 
gerenciamento de arquivos, entrada/saída e outras operações de controle de sistema.
2- Acesso ao Hardware: Permitir acesso direto e controle sobre o hardware do sistema, o que era essencial para jogos, utilitários de 
sistema e outros softwares que precisavam de alto desempenho e uso específico dos recursos do computador.
3-Desempenho: Maximizar o desempenho e a eficiência do software, aproveitando a proximidade da linguagem Assembly com a linguagem de 
máquina e a arquitetura do processador.

Em suma, a relação entre Assembly e DOS envolve a capacidade do Assembly de manipular tanto as funções do DOS quanto o hardware do 
computador diretamente, permitindo uma programação altamente eficiente e específica para o ambiente de computação da época.



O código Assembly fornecido em "Prints.asm" demonstra como usar registradores para armazenar dados e instruções a fim de realizar operações de entrada e saída.

1- Definição do Modelo de Memória e Alocação da Pilha:
Define o modelo de memória como "small", limitando o acesso à memória a 64KB.
Reserva 64 bytes na pilha para armazenar dados temporários durante a execução do programa.
2- Seção de Dados:
Inicia a seção de dados, onde variáveis e strings são armazenadas.
Declara a variável "message" como uma string contendo o texto "Soldador", terminando com o caractere '$'.
3- Seção de Código:
Inicia a seção de código, onde as instruções do programa são armazenadas.
4- Carregando o Segmento de Dados:
Carrega o endereço do segmento de dados no registrador AX.
Move o valor de AX para o registrador DS, indicando qual segmento de memória contém as variáveis e strings.
5- Preparando a Chamada do Sistema:
Define o valor 9h no registrador AH, indicando a função DOS 9h para imprimir uma string na tela.
Carrega o deslocamento da variável "message" no registrador DX, indicando a posição da string no segmento de dados.
6-Realizando a Chamada do Sistema:
Executa a interrupção 21h, acionando o sistema operacional para executar a função DOS indicada pelo registrador AH (função 9h para imprimir string).
7- Finalizando o Procedimento e o Programa:
Marca o final do procedimento principal "main".
Indica o fim do programa.

Resumo do Uso dos Registradores:
AX: Armazena o endereço do segmento de dados e o valor da função DOS 9h.
DS: Define o segmento de dados ativo para o programa.
AH: Indica a função DOS a ser executada (9h para imprimir string).
DX: Contém o deslocamento da variável "message" no segmento de dados.












