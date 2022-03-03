defmodule ObanProjectWeb.PageController do
  use ObanProjectWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
