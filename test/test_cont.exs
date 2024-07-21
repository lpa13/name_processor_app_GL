defmodule NameProcessorTest do
  use ExUnit.Case

  # Testa o processamento de nomes com mistura de maiúsculas e minúsculas.
  # Verifica se nomes como "anna" e "Anna" são corretamente capitalizados para "Anna" e se a contagem está correta.
  test "handles names with mixed case" do
    input = "anna\nAnna"
    expected_output = "Anna II"
    assert NameProcessor.process_names(input) == expected_output
  end

  # Testa a contagem correta de nomes repetidos.
  # Verifica se cinco ocorrências do nome "Bob" são corretamente contadas e formatadas como "Bob V".
  test "counts repeated names correctly" do
    input = "Bob\nBob\nBob\nBob\nBob"
    expected_output = "Bob V"
    assert NameProcessor.process_names(input) == expected_output
  end

  # Testa o processamento de nomes, contagem e formatação correta.
  # Verifica se a função process_names corretamente conta e formata a quantidade de vezes que cada nome aparece.
  test "process_names/1 counts and formats names correctly" do
    input = "joao\njose\nmaria\njoao\njose"
    expected_output = "Joao II\nJose II\nMaria I"
    assert NameProcessor.process_names(input) == expected_output
  end

  # Testa o comportamento quando a entrada está vazia.
  # Verifica se uma entrada vazia retorna uma saída vazia, sem erros.
  test "handles empty input" do
    input = ""
    expected_output = ""
    assert NameProcessor.process_names(input) == expected_output
  end

  # Testa a validação de entrada para garantir que o input seja uma string.
  test "handles invalid input" do
    input = nil
    expected_output = {:error, "Input deve ser uma string não nula"}
    assert NameProcessor.process_names(input) == expected_output
  end
end