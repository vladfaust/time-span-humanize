# Extensions to the stdlib `Time` struct.
struct Time
  # Extensions to the stdlib `Time::Span` struct.
  struct Span
    # Humanize the time span, returning a `String` in human-readable format.
    # See `#humanize(io)`.
    def humanize
      String.build(5) do |io|
        humanize(io)
      end
    end

    # Humanize the time span, writing it into *io*.
    # This method does not know about units other than second and its fractions.
    #
    # ```
    # 1.second.humanize(STDOUT)         # => 1.0s
    # 500.milliseconds.humanize(STDOUT) # => 500ms
    # 5.minutes.humanize(STDOUT)        # => 300s
    # 10.hours.humanize(STDOUT)         # => 36,000s
    # ```
    #
    # It's based on [Johannes Müller](https://github.com/straight-shoota)'s code found in [`crystal/src/benchmark/ips.cr`](https://github.com/crystal-lang/crystal/blob/639e4765f3f4137f90c5b7da24d8ccb5b0bfec35/src/benchmark/ips.cr#L191).
    def humanize(io : IO)
      total_seconds.humanize(io, precision: 3, significant: true) do |magnitude|
        magnitude = Number.prefix_index(magnitude).clamp(-9..0)

        next {
          magnitude,
          magnitude == 0 ? 's' : "#{Number.si_prefix(magnitude)}s",
        }
      end
    end
  end
end
