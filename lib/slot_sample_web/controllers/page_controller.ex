defmodule SlotSampleWeb.PageController do
  use SlotSampleWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
