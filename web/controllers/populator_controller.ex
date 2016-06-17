defmodule Ex1.PopulatorController do
  use Ex1.Web, :controller

  alias Ex1.Movies

  def index(conn, _params) do
    render conn, "index.html"
  end

  def populate(conn, _params) do
    Movies.populate()
    redirect(conn, to: "/movies")
  end

  def new(conn, _params) do
    render conn, "new.html"
  end
end
