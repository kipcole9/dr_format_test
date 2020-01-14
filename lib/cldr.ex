defmodule Acme.Cldr do
  use Cldr, locales: ["en", "fr", "de"], providers: [Cldr.Number, Cldr.DateTime, Cldr.Calendar]
end