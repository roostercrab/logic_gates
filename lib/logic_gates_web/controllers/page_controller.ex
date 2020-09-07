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
    render(conn, "and_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
  end

  def and_gate(conn, _params) do
    render(conn, "and_gate.html", gate: "AND")
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
   render(conn, "or_gate_results.html", gate: gate, output: output, input_a: input_a, input_b: input_b)
 end

 def or_gate(conn, _params) do
   render(conn, "or_gate.html", gate: "OR")
 end


end
