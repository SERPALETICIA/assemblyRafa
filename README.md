O Projeto foi desenvolvido com arduino no protheus e codado no vscode.

![alt text](src/assets/image.png)

Utilizando arduino nós iremos aumentar a rotação dos motores a cada clique no botão que está sendo alimentado pela porta D2, a cada interação do usuário ele irá aumentar a potência do motor em 64.

Após clicar 3 vezes no botão o ciclo se reinicia, assim voltando ao início.

```
const int buttonPin = 2; // Pino do botão
const int motorPin = 9; // Pino do motor

int estado = 0; // Variável para controlar o estado da progressão
int velocidade = 0; // Variável para armazenar a velocidade do motor

void setup() {
  pinMode(buttonPin, INPUT); // Configura o pino do botão como entrada
  pinMode(motorPin, OUTPUT); // Configura o pino do motor como saída
}

void loop() {
  // Lê o estado do botão
  int buttonState = digitalRead(buttonPin);

  // Se o botão for pressionado, altera o estado da progressão
  if (buttonState == HIGH) {
    estado++;

    // Se o estado atingir o valor máximo, volta para zero
    if (estado > 3) {
      estado = 0;
    }

    // Define a velocidade do motor com base no estado
    switch (estado) {
      case 0:
        velocidade = 0;
        break;
      case 1:
        velocidade = 64;
        break;
      case 2:
        velocidade = 128;
        break;
      case 3:
        velocidade = 192;
        break;
    }

    // Define a velocidade do motor
    analogWrite(motorPin, velocidade);

    // Aguarda 1 segundo antes de verificar o botão novamente
    delay(1000);
  }
}
    
```
#

### Contagem de presenças