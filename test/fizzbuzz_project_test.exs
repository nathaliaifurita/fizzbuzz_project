defmodule FizzbuzzProjectTest do
  use ExUnit.Case
  doctest FizzbuzzProject

  test "greets the world" do
    assert FizzbuzzProject.hello() == :world
  end
end
