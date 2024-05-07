.MODEL small;  //define o modelo de memória small
.STACK 64;  //pilha, espaço de alocação de memoria de 64 bytes 

.DATA;  //Inicio da sessão 
message db 'Gabriel', '$';  //Define uma mensagem e termina com $, e o fim da mensagem com $

.CODE; //inicio da sessão do codigo
main proc; //define o inicio do procedimento principal 

mov ax, @data; //carrega o endereço do segmento em AX
mov ds, ax; //Move o valor em AX para o registrador DS 

mov ah, 9h; //preparar o registrador AH para a função 09h dos DOS
mov dx, offset message; //fazer o deslocamento da mensagem em DX

int 21h;

main endp; //marca o fim do procedimento inicial 
end main; //indica o fim de todo o projeto 


