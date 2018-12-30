defmodule RadiatorWeb.ShowView do
  use RadiatorWeb, :view

  alias RadiatorWeb.ShowView

  @doc """
  Note: Normally this would be "show.json" but since the model is a "Show", we rename it in this view.
  """
  def render("view.json", %{show: show}) do
    render_one(show, ShowView, "show.json")
  end

  def render("show.json", %{show: show}) do
    %{title: show.title}
  end
end
