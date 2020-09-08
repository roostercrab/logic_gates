defmodule LogicCalc do
  def take_input(gate, input_a, input_b) do

    {a, _} = Integer.parse(input_a)
    {b, _} = Integer.parse(input_b)

    cond do
      gate == "AND" ->
        and_gate(a, b)
      gate == "FALSE" ->
        false_gate(a, b)
      gate == "NOR" ->
        nor_gate(a, b)
      gate == "A_NOT_B" ->
        a_not_b_gate(a, b)
      gate == "NOT_B" ->
        not_b_gate(a, b)
      gate == "B_NOT_A" ->
        b_not_a_gate(a, b)
      gate == "NOT_A" ->
        not_a_gate(a, b)
      gate == "XOR" ->
        xor_gate(a, b)
      gate == "NAND" ->
        nand_gate(a, b)
      gate == "XNOR" ->
        xnor_gate(a, b)
      gate == "TRUE_A" ->
        true_a_gate(a, b)
      gate == "FALSE_IF_ONLY_B" ->
        false_if_only_b_gate(a, b)
      gate == "TRUE_B" ->
        true_b_gate(a, b)
      gate == "FALSE_IF_ONLY_A" ->
        false_if_only_a_gate(a, b)
      gate == "OR" ->
        or_gate(a, b)
      gate == "TRUE" ->
        true_gate(a, b)
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

  defp false_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0

      {1, 0} ->
        0

      {0, 1} ->
        0

      {1, 1} ->
        0
    end
  end

  defp nor_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        0
      {0, 1} ->
        0
      {1, 1} ->
        0
    end
  end

  defp a_not_b_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        1
      {0, 1} ->
        0
      {1, 1} ->
        0
    end
  end

  defp not_b_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        1
      {0, 1} ->
        0
      {1, 1} ->
        0
    end
  end

  defp b_not_a_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        0
      {0, 1} ->
        1
      {1, 1} ->
        0
    end
  end

  defp not_a_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        0
      {0, 1} ->
        1
      {1, 1} ->
        0
    end
  end

  defp xor_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        1
      {0, 1} ->
        1
      {1, 1} ->
        0
    end
  end

  defp nand_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        1
      {0, 1} ->
        1
      {1, 1} ->
        0
    end
  end

  defp xnor_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        0
      {0, 1} ->
        0
      {1, 1} ->
        1
    end
  end

  defp true_a_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        1
      {0, 1} ->
        0
      {1, 1} ->
        1
    end
  end

  defp false_if_only_b_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        1
      {0, 1} ->
        0
      {1, 1} ->
        1
    end
  end

  defp true_b_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        0
      {0, 1} ->
        1
      {1, 1} ->
        1
    end
  end

  defp false_if_only_a_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        0
      {0, 1} ->
        1
      {1, 1} ->
        1
    end
  end

  defp or_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        0
      {1, 0} ->
        1
      {0, 1} ->
        1
      {1, 1} ->
        1
    end
  end

  defp true_gate(a, b) do
    case {a, b} do
      {0, 0} ->
        1
      {1, 0} ->
        1
      {0, 1} ->
        1
      {1, 1} ->
        1
    end
  end


end
