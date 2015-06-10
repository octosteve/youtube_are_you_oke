defmodule YoutubeAreYouOke.Mixfile do
  use Mix.Project

  def project do
    [app: :youtube_are_you_oke,
     version: "0.0.1",
     elixir: "~> 1.0",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  # Configuration for the OTP application
  #
  # Type `mix help compile.app` for more information
  def application do
    [
      applications: app_list(Mix.env)
      ]
  end

  defp app_list(:dev), do: [:dotenv| app_list]
  defp app_list(_), do: app_list
  defp app_list, do: [:logger]

  defp deps do
    [
      {:exvcr, github: "parroty/exvcr"},
      {:dotenv, github: "avdi/dotenv_elixir"}
    ]
  end
end
