defmodule RomanNumerals do
  @doc """
  Converte um número inteiro positivo para o seu equivalente em numeral romano.

  Recebe um número inteiro positivo e retorna uma string representando esse número
  em numerais romanos.
  """
  def to_roman(num) when num > 0 do
    roman_numerals = [
      {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"},
      {100, "C"}, {90, "XC"}, {50, "L"}, {40, "XL"},
      {10, "X"}, {9, "IX"}, {5, "V"}, {4, "IV"}, {1, "I"}
    ]

    roman_numerals
    |> Enum.reduce_while({num, ""}, &convert_roman/2)
    |> elem(1)
  end

  defp convert_roman({value, numeral}, {num, acc}) do
    quotient = div(num, value)
    if quotient > 0 do
      {:cont, {rem(num, value), acc <> String.duplicate(numeral, quotient)}}
    else
      {:cont, {num, acc}}
    end
  end
end