defmodule DtFormat do
  def test do
    Cldr.Number.to_string! 1234, Acme.Cldr
  end
end
