# Time::Span#humanize

[![Built with Crystal](https://img.shields.io/badge/built%20with-crystal-000000.svg?style=flat-square)](https://crystal-lang.org/)
[![Build status](https://img.shields.io/travis/vladfaust/time-span-humanize/master.svg?style=flat-square)](https://travis-ci.org/vladfaust/time-span-humanize)
[![API Docs](https://img.shields.io/badge/api_docs-online-brightgreen.svg?style=flat-square)](https://github.vladfaust.com/time-span-humanize)
[![Releases](https://img.shields.io/github/release/vladfaust/time-span-humanize.svg?style=flat-square)](https://github.com/vladfaust/time-span-humanize/releases)
[![Awesome](https://awesome.re/badge-flat2.svg)](https://github.com/veelenga/awesome-crystal)
[![vladfaust.com](https://img.shields.io/badge/style-.com-lightgrey.svg?longCache=true&style=flat-square&label=vladfaust&colorB=0a83d8)](https://vladfaust.com)
[![Patrons count](https://img.shields.io/badge/dynamic/json.svg?label=patrons&url=https://www.patreon.com/api/user/11296360&query=$.included[0].attributes.patron_count&style=flat-square&colorB=red&maxAge=86400)](https://www.patreon.com/vladfaust)
[![Gitter chat](https://img.shields.io/badge/chat%20on-gitter-green.svg?colorB=ED1965&logo=gitter&style=flat-square)](https://gitter.im/vladfaust/Lobby)

`Time::Span#humanize` method for [Crystal](https://crystal-lang.org/).

[![Become a Patron](https://vladfaust.com/img/patreon-small.svg)](https://www.patreon.com/vladfaust)

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  time-span-humanize:
    github: vladfaust/time-span-humanize
    version: ~> 0.1.0
```

This shard follows [Semantic Versioning v2.0.0](http://semver.org/), so check [releases](https://github.com/vladfaust/time-span-humanize/releases) and change the `version` accordingly.

> Note that until Crystal is officially released, this shard would be in beta state (`0.*.*`), with every **minor** release considered breaking. For example, `0.1.0` → `0.2.0` is breaking and `0.1.0` → `0.1.1` is not.

## Usage

```crystal
require "time-span-humanize"
42.milliseconds.humanize # => "42ms"
```

## Contributing

1. Fork it ( https://github.com/vladfaust/time-span-humanize/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'feat: some feature') using [Angular style commits](https://github.com/angular/angular/blob/master/CONTRIBUTING.md#commit)
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Vlad Faust](https://github.com/vladfaust) - creator and maintainer
