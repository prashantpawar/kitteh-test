defmodule KittehTest.AuthErrorHandlerTest do
  use KittehTest.ConnCase

  alias KittehTest.AuthErrorHandler

  test "unauthenticated error handler", %{conn: conn} do
    conn = AuthErrorHandler.unauthenticated(conn, %{})
    assert json_response(conn, 401) == %{"error" => "Unauthorized!"}
  end
end
