defmodule Radiator.Podcasts.Show do
  use Ecto.Schema
  import Ecto.Changeset

  schema "shows" do
    field :description, :string
    field :image, :string
    field :subtitle, :string
    field :title, :string

    timestamps()
  end

  @doc false
  def changeset(show, attrs) do
    show
    |> cast(attrs, [:title, :subtitle, :description, :image])
    |> validate_required([:title])
  end
end
