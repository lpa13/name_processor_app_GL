defmodule NameProcessor do
  @doc """
  Processa uma string de nomes, contando e formatando a frequência de cada nome.
  """
  def process_names(input) do
    input
    |> parse_names()
    |> enumerate_names()
    |> format_output()
  end

  defp parse_names(input) do
    input
    |> String.split("\n", trim: true)
  end

  defp enumerate_names(names) do
    {_, result} =
      Enum.reduce(names, {%{}, []}, fn name, {counts, acc} ->
        normalized_name = String.downcase(name)
        count = Map.get(counts, normalized_name, 0) + 1
        new_counts = Map.put(counts, normalized_name, count)
        {new_counts, acc ++ [{name, count}]}
      end)

   result
  end

  defp format_output(names_with_counts) do
    names_with_counts
    |> Enum.map(fn {name, count} ->
      "#{capitalize_name(name)} #{RomanNumerals.to_roman(count)}"
    end)
    |> Enum.join("\n")
  end

  defp capitalize_name(name) do
    String.capitalize(String.trim(name))
  end
end
