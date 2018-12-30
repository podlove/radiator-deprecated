defmodule RadiatorWeb.ShowController do
  use RadiatorWeb, :controller

  alias Radiator.Podcasts
  alias Radiator.Podcasts.Show

  def create(conn, params) do
    with {:ok, %Show{} = show} <- Podcasts.create_show(params) do
      conn
      |> put_status(:created)
      |> put_resp_header("location", Routes.show_path(conn, :show, show))
      |> render("view.json", show: show)
    end
  end
end
