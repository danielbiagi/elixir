defmodule Greetings do
  @moduledoc """
  Documentation for Greetings.
  """

  @doc """
  Hello world.

  ## Examples

      iex> Greetings.hello()
      :world

  """
  def hello() do
    name = String.trim(IO.gets("Hey there! What is your name?\n"))

    dName = String.downcase(name)

    case dName do
      "daniel" ->
        IO.puts(
          ~s{Wooow! Daniel is my favorite name in the world!\nI was programmed by Daniel! :)\n}
        )

      _ ->
        IO.puts(~s{Hi #{name} nice to meet you!\n})
    end
  end
end
