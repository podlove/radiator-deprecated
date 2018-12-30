defmodule Radiator.Podcasts do
  @moduledoc """
  The Podcasts context.
  """

  import Ecto.Query, warn: false
  alias Radiator.Repo

  alias Radiator.Podcasts.Show

  @type changeset() :: Ecto.Changeset.t()

  @doc """
  Create a show.
  """
  @spec create_show(map()) :: {:ok, Show.t()} | {:error, changeset()}
  def create_show(attrs \\ %{}) do
    %Show{}
    |> Show.changeset(attrs)
    |> Repo.insert()
  end
end
