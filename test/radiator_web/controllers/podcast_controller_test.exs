defmodule RadiatorWeb.PodcastControllerTest do
  use RadiatorWeb.ConnCase

  # alias Radiator.Podcasts
  # alias Radiator.Podcasts.Show

  describe "create/2" do
    test "Creates, and responds with a newly created show if attributes are valid", %{conn: conn} do
      response =
        conn
        |> post(Routes.show_path(conn, :create, %{title: "Radiator"}))
        |> json_response(201)

      assert get_in(response, ["title"]) == "Radiator"
    end
  end
end
