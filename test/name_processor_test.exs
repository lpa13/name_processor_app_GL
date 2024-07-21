defmodule NameProcessorTest do
  use ExUnit.Case
  alias NameProcessor

  @tag :capture_log
  test "processes a list of names and outputs with correct Roman numerals" do
    input = """
    Maria
    Pedro
    Lucas
    Pedro
    """

    expected_output = """
    Maria I
    Pedro I
    Lucas I
    Pedro II
    """

    assert NameProcessor.process_names(input) == String.trim(expected_output)
  end

  test "processes a list of names with repeated entries and outputs with correct Roman numerals" do
    input = """
    João
    João
    João
    João
    """

    expected_output = """
    João I
    João II
    João III
    João IV
    """

    assert NameProcessor.process_names(input) == String.trim(expected_output)
  end

  test "processes a list of mixed case names and outputs with correct Roman numerals" do
    input = """
    Eduardo
    eduardo
    EDUARDO
    Eduardo
    """

    expected_output = """
    Eduardo I
    Eduardo II
    Eduardo III
    Eduardo IV
    """

    assert NameProcessor.process_names(input) == String.trim(expected_output)
  end
end