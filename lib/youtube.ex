defmodule Youtube do
  def search(term) do
    [Video.new(term)]
  end
end
