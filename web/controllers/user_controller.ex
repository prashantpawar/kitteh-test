defmodule KittehTest.UserController do
  use KittehTest.Web, :controller
  use Guardian.Phoenix.Controller

  plug Guardian.Plug.EnsureAuthenticated, handler: KittehTest.AuthErrorHandler

  def me(conn, _params, user, _claims) do
    render conn, "show.json", user: user
  end
end

