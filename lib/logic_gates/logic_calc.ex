defmodule LogicCalc do
  def take_input(gate, input_a, input_b) do

    {a, _} = Integer.parse(input_a)
    {b, _} = Integer.parse(input_b)

    cond do
      gate == "AND" ->
        and_gate(a, b)
    end
  end

  defp and_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0

      {1, 0} ->
        0

      {0, 1} ->
        0

      {1, 1} ->
        1
    end
  end
end
