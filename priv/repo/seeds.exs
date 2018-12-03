alias Tilex.{Repo, Channel}

channels = ["ruby", "react", "javascript", "testing", "phoenix", "elixir", "vim", "erlang", "nodejs"]

channels
|> Enum.each(fn channel ->
  Repo.insert(%Channel{name: channel, twitter_hashtag: channel})
end)
