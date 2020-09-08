defmodule LogicGatesWeb.PageController do
  use LogicGatesWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end

  def logic_gates(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input(gate, input_a, input_b)
    render(conn, "results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def and_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("AND", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def and_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "AND")
  end

    def or_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("OR", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def or_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "OR")
  end

    def xor_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("XOR", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def xor_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "XOR")
  end

  def nand_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("NAND", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def nand_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "NAND")
  end

  def nor_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("NOR", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def nor_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "NOR")
  end

 def xnor_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("XNOR", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def xnor_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "XNOR")
 end

  def false_gate(
        conn,
        %{
          "gate" => gate,
          "input_a" => input_a,
          "input_b" => input_b
        } = params
      ) do
    output = LogicCalc.take_input("FALSE", input_a, input_b)
    render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def false_gate(conn, _params) do
    render(conn, "default_gate.html", gate: "FALSE")
  end

 def true_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("TRUE", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def true_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "TRUE")
 end

 def not_a_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("NOT_A", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def not_a_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "NOT_A")
 end

 def not_b_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("NOT_B", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def not_b_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "NOT_B")
 end

 def true_a_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("TRUE_A", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def true_a_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "TRUE_A")
 end

 def true_b_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("TRUE_B", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def true_b_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "TRUE_B")
 end

 def a_not_b_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("A_NOT_B", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def a_not_b_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "A_NOT_B")
 end

def b_not_a_gate(
       conn,
       %{
         "gate" => gate,
         "input_a" => input_a,
         "input_b" => input_b
       } = params
     ) do
   output = LogicCalc.take_input("B_NOT_A", input_a, input_b)
   render(conn, "default_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def b_not_a_gate(conn, _params) do
   render(conn, "default_gate.html", gate: "B_NOT_A")
 end

end
