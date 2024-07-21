defmodule MyApp do
  def run do
    IO.puts("Bem-vindo à ferramenta de contagem de reis e rainhas de Cumbúquia!")
    IO.puts("Insira a lista de nomes, um por linha. Termine a lista com uma linha em branco.")

    input = collect_input()
    output = NameProcessor.process_names(input)
    IO.puts(output)
  end

  defp collect_input do
    # Coleta a entrada do usuário até que uma linha em branco seja inserida
    IO.stream(:stdio, :line)
    |> Enum.reduce_while([], fn
      "\n", lines -> {:halt, Enum.reverse(lines)}
      line, lines -> {:cont, [String.trim(line) | lines]}
    end)
    #|> Enum.reverse()
    |> Enum.join("\n")
  end
end

# Executa o módulo MyApp e a função run
MyApp.run()
