# DtFormatTest

App to help debug a dialyzer exception.

### Re-recreate the exception
```
# Also tried with other --formats
kip$ mix dialyzer --format dialyzer
Compiling 1 file (.ex)
Finding suitable PLTs
Checking PLT...
[:cldr_utils, :compiler, :decimal, :elixir, :ex_cldr, :ex_cldr_calendars, :ex_cldr_currencies, :ex_cldr_dates_times, :ex_cldr_numbers, :jason, :kernel, :logger, :nimble_parsec, :stdlib]
PLT is up to date!
No :ignore_warnings opt specified in mix.exs and default does not exist.

Starting Dialyzer
[
  check_plt: false,
  init_plt: '/Users/kip/Development/dt_format_test/_build/dev/dialyxir_erlang-22.2_elixir-1.10.0-rc.0_deps-dev.plt',
  files: ['/Users/kip/Development/dt_format_test/_build/dev/lib/dt_format_test/ebin/Elixir.Acme.Cldr.Currency.beam',
   '/Users/kip/Development/dt_format_test/_build/dev/lib/dt_format_test/ebin/Elixir.Acme.Cldr.DateTime.Format.beam',
   '/Users/kip/Development/dt_format_test/_build/dev/lib/dt_format_test/ebin/Elixir.Acme.Cldr.DateTime.Formatter.beam',
   '/Users/kip/Development/dt_format_test/_build/dev/lib/dt_format_test/ebin/Elixir.Acme.Cldr.DateTime.Relative.beam',
   '/Users/kip/Development/dt_format_test/_build/dev/lib/dt_format_test/ebin/Elixir.Acme.Cldr.Locale.beam',
   ...],
  warnings: [:unknown]
]
** (throw) {:error, :parsing, [{:"<<", 1}, {:<, 1}, {:_, 1}, {:":", 1}, {:int, 1, 8}, {:",", 1}, {:_, 1}, {:":", 1}, {:_, 1}, {:*, 1}, {:int, 1, 8}, {:">>", 1}, {:",", 1}, {:_, 1}, {:>, 1}]}
    lib/erlex.ex:59: Erlex.parse/1
    lib/erlex.ex:85: Erlex.pretty_print/1
    lib/erlex.ex:172: Erlex.pretty_print_type/1
    lib/dialyxir/warnings/pattern_match.ex:11: Dialyxir.Warnings.PatternMatch.format_short/1
    lib/dialyxir/formatter.ex:71: Dialyxir.Formatter.format_warning/2
    lib/dialyxir/formatter.ex:209: Dialyxir.Formatter.filter_warning/3
    (elixir 1.10.0-rc.0) lib/enum.ex:1520: Enum."-map_reduce/3-lists^mapfoldl/2-0-"/3
    lib/dialyxir/formatter.ex:199: Dialyxir.Formatter.filter_warnings/3
```

### Installation

Run:
```
mix deps.get
mix dialyzer
```

### Tested environment

* Elixir 1.10.0-rc.0
* Erlang 22.2
* Dialixir 1.0.0-rc.7

