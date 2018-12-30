defmodule Radiator.Repo.Migrations.CreateShows do
  use Ecto.Migration

  def change do
    create table(:shows) do
      add :title, :string
      add :subtitle, :string
      add :description, :string
      add :image, :string

      timestamps()
    end
  end
end
