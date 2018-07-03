defmodule TreatiseWeb.PageController do
  use TreatiseWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
