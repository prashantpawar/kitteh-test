defmodule KittehTest.Factory do
  use ExMachina.Ecto, repo: KittehTest.Repo

  def user_factory do
    %KittehTest.User{
      name: "A name",
      image_url: "gopher://images.biz",
      username: sequence("user username"),
      provider_secret: "some secret",
      provider_token: "some pig",
      # there must be a better way to do this
      twitter_user_id: String.to_integer(sequence("twitter_user_id", &"#{&1}")),
    }
  end
end
