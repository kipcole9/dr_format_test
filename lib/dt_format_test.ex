defmodule DtFormat do
  @start_date ~D[2020-01-01]

  def test do
    # Cldr.Date.to_string!(@start_date, Acme.Cldr, format: "MM.yyyy")
    Cldr.Date.to_string!(@start_date, Acme.Cldr)
  end
end
