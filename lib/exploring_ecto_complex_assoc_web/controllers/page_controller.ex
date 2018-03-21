defmodule ExploringEctoComplexAssocWeb.PageController do
  use ExploringEctoComplexAssocWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
