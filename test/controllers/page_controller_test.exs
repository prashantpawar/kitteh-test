defmodule KittehTest.PageControllerTest do
  use KittehTest.ConnCase

  test "GET /", %{conn: conn} do
    conn = get conn, "/"
    assert html_response(conn, 200) =~ "elm-container"
  end
end
