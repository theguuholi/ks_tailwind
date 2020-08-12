defmodule KsTailwind.Products.Product do
  use Ecto.Schema
  import Ecto.Changeset

  schema "products" do
    field :image_url, :string
    field :name, :string
    field :price, :integer

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:image_url, :name, :price])
    |> validate_required([:image_url, :name, :price])
  end
end
