# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     KsTailwind.Repo.insert!(%KsTailwind.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

products = [
  %{
    image_url:
      "https://images.unsplash.com/photo-1555982105-d25af4182e4e?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=400&amp;h=400&amp;q=80",
    name: "Caneca",
    price: 100
  },
  %{
    image_url:
      "https://images.unsplash.com/photo-1508423134147-addf71308178?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80",
    name: "Lente de Camera",
    price: 3000
  },
  %{
    image_url:
      "https://images.unsplash.com/reserve/LJIZlzHgQ7WPSh5KVTCB_Typewriter.jpg?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=400&amp;h=400&amp;q=80",
    name: "Maquina de Escrever",
    price: 500
  },
  %{
    image_url:
      "https://images.unsplash.com/photo-1449247709967-d4461a6a6103?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=400&h=400&q=80",
      name: "Cadeira",
    price: 500
  }
]

Enum.each(products, &KsTailwind.Products.create_product/1 )
