defmodule KsTailwindWeb.PageController do
  use KsTailwindWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
