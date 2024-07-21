<h1>Desafio Reis e Rainhas</h1>

<p>O reino de Cumbúquia perdeu os registros históricos de sua família real, e agora ninguém sabe mais a numeração correta dos reis e rainhas do país. Sua tarefa, como o melhor programador de Cumbúquia, será desenvolver uma ferramenta de linha de comando que irá resolver essa crise.
<br>
Claro, como você tem anos e anos de experiência, sabe que precisa fazer isso usando uma linguagem robusta e expressiva, e por isso este desafio precisa ser resolvido em Elixir.</p>
<br>
<p>A ferramenta de linha de comando que você irá desenvolver deve receber a lista dos reis e rainhas de Cumbúquia em ordem e retornar os mesmos nomes, cada um com sua devida numeração.
<br>
Ao iniciar o binário, ele deve primeiro exibir uma breve explicação de seu uso. Ele irá então esperar o usuário inserir uma lista de nomes. Os nomes serão inseridos um por linha, e a lista será considerada terminada quando for lida uma linha em branco.
<br>
Após a lista ser finalizada, a ferramenta irá repetir os nomes inseridos, porém, os nomes serão acrescidos de um número romano conforme necessário.
<br>
Por exemplo, se a lista for:
<br>
Eduardo<br>
Maria<br>
Daniel<br>
Eduardo<br>
A ferramenta deverá emitir a seguinte saída:<br>

Eduardo I<br>
Maria I<br>
Daniel I<br>
Eduardo II<br>
Já se a lista for:<br>

João<br>
João<br>
João<br>
João<br>
A saída deve ser:<br>

João I<br>
João II<br>
João III<br>
João IV<br>
Ou seja, cada vez que um nome de um rei se repetir o algarismo romano que se segue ao nome deve ser incrementado em 1 desde o nome anterior.</p>
