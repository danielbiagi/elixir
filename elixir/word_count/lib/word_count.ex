# filename = IO.gets("File to count from: ") |> String.trim()

# kind =
#   IO.gets("What type of counting would you like to do?\nChoose words, lines or chars:\n")
#   |> String.trim()
#   |> String.downcase()

# case kind do
#   "words" ->
#     IO.puts(~s{So word it be!\n})

#   "lines" ->
#     IO.puts(~s{mmkay, I'll count the words for you!\n})

#   "chars" ->
#     IO.puts(~s{Lot's of counting but no problemo!\n})

#   _ ->
#     IO.puts(~s{Choose a valid option: words, lines or chars!\n})
# end

# words =
#   File.read!(filename)
#   |> String.split(~r{(\\n|[^\w'])+})
#   |> Enum.filter(fn x -> x != "" end)

# words |> Enum.count() |> IO.puts()
