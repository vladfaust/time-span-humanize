require "./spec_helper"

describe "Time::Span#humanize" do
  it do
    100_545_431.4512.seconds.humanize.should eq "101,000,000s"
  end

  it do
    5.minutes.humanize.should eq "300s"
  end

  it do
    1.42.minutes.humanize.should eq "85.2s"
  end

  it do
    1.125.seconds.humanize.should eq "1.13s"
  end

  it do
    1.seconds.humanize.should eq "1.0s"
  end

  it do
    0.99.seconds.humanize.should eq "990ms"
  end

  it do
    0.82132.seconds.humanize.should eq "821ms"
  end

  it do
    0.000213.seconds.humanize.should eq "213µs"
  end
end
