defmodule YoutubeAreYouOkeTest do
  use ExUnit.Case
  use ExVCR.Mock

  setup_all do
    ExVCR.Config.cassette_library_dir("fixture/vcr_cassettes")
    :ok
  end

  test "fetches karaoke video list from youtube" do
    result = Youtube.search("Uptown Funk")
    |> List.first
    |> Video.get_title
    assert String.contains?(result, "Karaoke")
  end
end
