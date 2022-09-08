# Ukrainian

Ukrainian language tooling for Crystal.

[![CI](https://github.com/lucasintel/ukrainian/actions/workflows/ci.yml/badge.svg)](https://github.com/lucasintel/ukrainian/actions/workflows/ci.yml)

## Quickstart

```cr
require "ukrainian"

Ukrainian.transliterate("Київ; Харків; Одеса; Дніпро")
# 🇺🇦 => "Kyiv; Kharkiv; Odesa; Dnipro"

Ukrainian.transliterate("Майдан Незалежності")
# 🇺🇦 => "Maidan Nezalezhnosti"

Ukrainian.transliterate("Національний Технічний Університет «Дніпровська Політехніка»")
# 🇺🇦 => "Natsionalnyi Tekhnichnyi Universytet «Dniprovska Politekhnika»"
```

## Transliteration

Simple, high throughput Ukrainian transliteration for working with large volumes of data.

Compliant with the [**Ukrainian National transliteration system (2010 version)**](https://zakon.rada.gov.ua/laws/show/55-2010-%D0%BF).

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     ukrainian:
       github: lucasintel/ukrainian
   ```

2. Run `shards install`

## Contributing

1. Fork it (<https://github.com/lucasintel/ukrainian/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Lucas M. D.](https://github.com/lucasintel) - creator and maintainer
