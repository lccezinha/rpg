defmodule RPG.Room.Action do
  @type t :: %RPG.Room.Action{id: atom, label: String.t()}

  alias __MODULE__

  defstruct label: nil, id: nil

  def forward, do: %Action{id: :forward, label: "Move Forward."}
  def rest, do: %Action{id: :rest, label: "Take better look and rest."}
  def search, do: %Action{id: :search, label: "Searching, seek and destroy."}

  defimpl String.Chars do
    def to_string(action), do: action.label
  end
end
