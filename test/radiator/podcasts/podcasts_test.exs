defmodule Radiator.PodcastsTest do
  use Radiator.DataCase

  alias Radiator.Podcasts

  describe "shows" do
    alias Radiator.Podcasts.Show

    test "create_show/1 with valid data creates a show" do
      assert {:ok, %Show{} = show} =
               Podcasts.create_show(%{
                 title: "Radiator",
                 image: "http://someimage.com/file.png",
                 subtitle: "Laughter without pause.",
                 description: "Stay a while and listen."
               })

      assert show.title == "Radiator"
      assert show.description == "Stay a while and listen."

      assert show.subtitle == "Laughter without pause."
      assert show.image == "http://someimage.com/file.png"
    end

    # @valid_attrs %{description: "some description", image: "some image", subtitle: "some subtitle", title: "some title"}
    # @update_attrs %{description: "some updated description", image: "some updated image", subtitle: "some updated subtitle", title: "some updated title"}
    # @invalid_attrs %{description: nil, image: nil, subtitle: nil, title: nil}

    # def show_fixture(attrs \\ %{}) do
    #   {:ok, show} =
    #     attrs
    #     |> Enum.into(@valid_attrs)
    #     |> Podcasts.create_show()

    #   show
    # end

    # test "list_shows/0 returns all shows" do
    #   show = show_fixture()
    #   assert Podcasts.list_shows() == [show]
    # end

    # test "get_show!/1 returns the show with given id" do
    #   show = show_fixture()
    #   assert Podcasts.get_show!(show.id) == show
    # end

    # test "create_show/1 with valid data creates a show" do
    #   assert {:ok, %Show{} = show} = Podcasts.create_show(@valid_attrs)
    #   assert show.description == "some description"
    #   assert show.image == "some image"
    #   assert show.subtitle == "some subtitle"
    #   assert show.title == "some title"
    # end

    # test "create_show/1 with invalid data returns error changeset" do
    #   assert {:error, %Ecto.Changeset{}} = Podcasts.create_show(@invalid_attrs)
    # end

    # test "update_show/2 with valid data updates the show" do
    #   show = show_fixture()
    #   assert {:ok, %Show{} = show} = Podcasts.update_show(show, @update_attrs)
    #   assert show.description == "some updated description"
    #   assert show.image == "some updated image"
    #   assert show.subtitle == "some updated subtitle"
    #   assert show.title == "some updated title"
    # end

    # test "update_show/2 with invalid data returns error changeset" do
    #   show = show_fixture()
    #   assert {:error, %Ecto.Changeset{}} = Podcasts.update_show(show, @invalid_attrs)
    #   assert show == Podcasts.get_show!(show.id)
    # end

    # test "delete_show/1 deletes the show" do
    #   show = show_fixture()
    #   assert {:ok, %Show{}} = Podcasts.delete_show(show)
    #   assert_raise Ecto.NoResultsError, fn -> Podcasts.get_show!(show.id) end
    # end

    # test "change_show/1 returns a show changeset" do
    #   show = show_fixture()
    #   assert %Ecto.Changeset{} = Podcasts.change_show(show)
    # end
  end
end
