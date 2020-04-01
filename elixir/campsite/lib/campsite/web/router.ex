defmodule Campsite.Web.Router do
  import Campsite.Web.PageHandler

  def call(path) do
    content_for(path)
  end

  defp content_for("/index") do
    "<h1>Welcome to Alchemist Camp!</h1>"
  end

  defp content_for("/too") do
    "<h1>Welcome to Alchemist Camp AGAIN!!!</h1>"
  end

  defp content_for("/contact") do
    "<h1>This iS CONTACTAaaaaaA!!!</h1>"
  end

  defp content_for("/ximbalaue") do
    "<h1>³²¹d(-_-)b¹²³</h1>"
  end

  defp content_for("/pedro") do
    "<h1>HUuuuUUUMmmMMmmmm... BARRIQUELI!! </h1>"
  end

  defp content_for(_) do
    "<h1>The page you're looking for doesn't exist.</h1>"
  end
end
