defmodule YoutubeAreYouOkeTest do
  use ExUnit.Case
  use ExVCR.Mock

  setup_all do
    ExVCR.Config.cassette_library_dir("fixture/vcr_cassettes")
    :ok
  end

  test "the truth" do
    assert 1 + 1 == 2
  end
end
