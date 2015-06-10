defmodule Video do
  defstruct title: ""

  def new(title) do
    %Video{title: title}
  end
  
  def get_title(video) do
    video.title
  end
end
