defmodule Hangman.GameTest do
  use ExUnit.Case

  alias Hangman.Game

  test "new_game returns structure" do
    game = Game.new_game()

    assert game.turns_left == 7
    assert game.game_state == :initializing
    assert length(game.letters) > 0
    assert lowercase_letters?(game.letters) == true
  end

  defp lowercase_letters?(letters) do
    Enum.all?(letters, fn(letter) -> letter =~ ~r/[a-z]/  end)
  end
end
