defmodule DtFormatTest.MixProject do
  use Mix.Project

  def project do
    [
      app: :dt_format_test,
      version: "0.1.0",
      elixir: "~> 1.10-rc",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ex_cldr_dates_times, "~> 2.0"},
      {:dialyxir, "~> 1.0.0-rc", only: [:dev], runtime: false, optional: true},
    ]
  end
end
