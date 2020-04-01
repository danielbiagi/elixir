defmodule Caboose do
  @default_lines 10

  def start(parsed, filename, invalid) do
    help_flag = Enum.member?(parsed, {:help, true})

    if Enum.count(filename) != 1 or invalid != [] or help_flag do
      unless help_flag, do: IO.puts("Bad input \n")
      show_help()
    else
      flags = Enum.into(parsed, %{})
      read_file(filename, flags)
    end
  end

  def show_help() do
    IO.puts("""
    Usage: caboose [filename] -[flags] [flag args]

    Flags:
    --help              display this message
    --lines [number]    display the last n lines of a file
    --h                 same as --help
    --n [number]        same as --lines
    """)
  end

  def read_file(filename, flags) do
    body = File.read!(filename)
    lines = String.split(body, ~r{(\r\n|\r|\n)})

    num_displayed = if flags[:lines], do: flags[:lines], else: @default_lines
    IO.inspect({filename, flags, num_displayed})

    lines |> Enum.take(-num_displayed) |> Enum.join("\n") |> IO.puts()
  end
end
