defmodule HomehistoryWeb.PageController do
  use HomehistoryWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
