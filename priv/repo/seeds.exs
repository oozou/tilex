alias Tilex.{Repo, Channel}

Repo.delete_all(Channel)

channels = ["ruby", "react", "javascript", "testing", "phoenix", "elixir", "vim", "erlang", "nodejs"]

channels
|> Enum.each(fn channel ->
  Repo.insert!(%Channel{name: channel, twitter_hashtag: channel})
end)
