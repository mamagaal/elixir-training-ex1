defmodule Ex1.MovieController do
  use Ex1.Web, :controller

  alias Ex1.Movies

  def index(conn, _params) do
    movies = Movies.all()
    render conn, "index.html", movies: movies
  end

  def show(conn, %{"id" => id}) do
    movie = Movies.get(id)
    render conn, "show.html", movie: movie
  end

  def create(conn, %{"movie" => movie_params}) do
    Movies.insert(movie_params)
    redirect(conn, to: movie_path(conn, :index))
  end

  def new(conn, _params) do
    movie = Movies.new()
    render conn, "new.html", movie: movie
  end
end
