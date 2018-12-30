defmodule RadiatorWeb.Router do
  use RadiatorWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  # scope "/", RadiatorWeb do
  #   pipe_through :browser
  # end

  scope "/api", RadiatorWeb do
    pipe_through :api

    resources "/shows", ShowController, only: [:create, :show]
  end
end
