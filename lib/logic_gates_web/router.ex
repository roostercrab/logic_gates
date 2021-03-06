defmodule LogicGatesWeb.Router do
  use LogicGatesWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", LogicGatesWeb do
    pipe_through :browser

    get "/", PageController, :index
    post "/", PageController, :logic_gates
    get "/and_gate", PageController, :and_gate
    post "/and_gate", PageController, :and_gate
    get "/or_gate", PageController, :or_gate
    post "/or_gate", PageController, :or_gate
    get "/xor_gate", PageController, :xor_gate
    post "/xor_gate", PageController, :xor_gate
    get "/nand_gate", PageController, :nand_gate
    post "/nand_gate", PageController, :nand_gate
    get "/nor_gate", PageController, :nor_gate
    post "/nor_gate", PageController, :nor_gate
    get "/xnor_gate", PageController, :xnor_gate
    post "/xnor_gate", PageController, :xnor_gate
    get "/false_gate", PageController, :false_gate
    post "/false_gate", PageController, :false_gate
    get "/true_gate", PageController, :true_gate
    post "/true_gate", PageController, :true_gate
    get "/not_a_gate", PageController, :not_a_gate
    post "/not_a_gate", PageController, :not_a_gate
    get "/not_b_gate", PageController, :not_b_gate
    post "/not_b_gate", PageController, :not_b_gate
    get "/true_a_gate", PageController, :true_a_gate
    post "/true_a_gate", PageController, :true_a_gate
    get "/true_b_gate", PageController, :true_b_gate
    post "/true_b_gate", PageController, :true_b_gate
    get "/a_not_b_gate", PageController, :a_not_b_gate
    post "/a_not_b_gate", PageController, :a_not_b_gate
   get "/b_not_a_gate", PageController, :b_not_a_gate
   post "/b_not_a_gate", PageController, :b_not_a_gate
   get "/false_if_only_a_gate", PageController, :false_if_only_a_gate
   post "/false_if_only_a_gate", PageController, :false_if_only_a_gate
   get "/false_if_only_b_gate", PageController, :false_if_only_b_gate
   post "/false_if_only_b_gate", PageController, :false_if_only_b_gate
  end

  # Other scopes may use custom stacks.
  # scope "/api", LogicGatesWeb do
  #   pipe_through :api
  # end

  # Enables LiveDashboard only for development
  #
  # If you want to use the LiveDashboard in production, you should put
  # it behind authentication and allow only admins to access it.
  # If your application does not have an admins-only section yet,
  # you can use Plug.BasicAuth to set up some basic authentication
  # as long as you are also using SSL (which you should anyway).
  if Mix.env() in [:dev, :test] do
    import Phoenix.LiveDashboard.Router

    scope "/" do
      pipe_through :browser
      live_dashboard "/dashboard", metrics: LogicGatesWeb.Telemetry
    end
  end
end
