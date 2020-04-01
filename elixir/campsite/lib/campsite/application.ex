defmodule Campsite.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    start_cowboy()
    children = []
    opts = [strategy: :one_for_one, name: Campsite.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def start_cowboy() do
    routes = [
      {"/", :cowboy_static, {:priv_file, :campsite, "static/index.html"}},
      {"/images/[...]", :cowboy_static, {:priv_dir, :campsite, "static/images"}},
      {:_, Campsite.Web.PageHandler, Campsite.Web.Router}
    ]

    opts = [port: 4000]

    env = [
      dispatch:
        :cowboy_router.compile([
          {:_, routes}
        ])
    ]

    case :cowboy.start_http(:http, 10, opts, env: env) do
      {:ok, _pid} -> IO.puts("Cowboy is now running, go to http://localhost:4000")
      _ -> IO.puts("There was an error starting Cowboy web server.")
    end
  end
end
