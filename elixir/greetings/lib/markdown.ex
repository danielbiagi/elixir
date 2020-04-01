defmodule Markdown do
  def to_html(text) do
    # do lots of transforms in a pipeline
    text
    |> h1
    |> h2
    |> p
    |> bold
    |> italics
    |> big
    |> small
  end

  def italics(text) do
    Regex.replace(~r/\*(.*)\*/, text, "<em>\\1</em>")
  end

  def h1(text) do
    Regex.replace(~r/(\r\n|\r|\n|^)\# + ([^#][^\n\r]+)/, text, "<h1>\\2</h1>")
  end

  def h2(text) do
    Regex.replace(~r/(\r\n|\r|\n|^)\#\# + ([^#][^\n\r]+)/, text, "<h2>\\2</h2>")
  end

  def big(text) do
    Regex.replace(~r/\+\+(.*)\+\+/, text, "<big>\\1</big>")
  end

  def small(text) do
    Regex.replace(~r/\-\-(.*)\-\-/, text, "<small>\\1</small>")
  end

  def bold(text) do
    Regex.replace(~r/\*\*(.*)\*\*/, text, "<strong>\\1</strong>")
  end

  def p(text) do
    Regex.replace(~r/(\r\n|\r|\n|^)+([^#<][^\r\n]+)((\r\sn|\r|\n)+$)?/, text, "<p>\\2</p>")
  end

  def test_str() do
    """
    I *so* enjoyed eating that burrito and the hot sauce was **amaziiiing**!

    What did you think of it?

    asdf
    """
  end
end
