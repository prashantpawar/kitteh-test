defmodule KittehTest.UserViewTest do
  use KittehTest.ModelCase

  alias KittehTest.UserView

  import KittehTest.Factory

  test "#show renders the user" do
    user = insert(:user)

    assert UserView.render("show.json", %{user: user}) == %{
      id: user.id,
      name: user.name,
      image_url: user.image_url,
      username: user.username
    }
  end
end
