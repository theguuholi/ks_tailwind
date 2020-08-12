defmodule KsTailwindWeb.PageController do
  use KsTailwindWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html", products: KsTailwind.Products.list_products())
  end
end
