defmodule KsTailwind.Repo.Migrations.CreateProducts do
  use Ecto.Migration

  def change do
    create table(:products) do
      add :image_url, :string
      add :name, :string
      add :price, :integer

      timestamps()
    end

  end
end
