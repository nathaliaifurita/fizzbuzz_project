defmodule FizzbuzzProjectTest do
  use ExUnit.Case

  describe "build/1" do
    test "when a valid file is provided, returns the converted list" do
      expected_response = {:ok, [1, 2, :fizz, 4, :buzz, :buzz, :fizzbuzz, :buzz]}
      
      assert FizzbuzzProject.build("number.txt") == expected_response
    end

    test "when an invalid file is provided, returns an error" do
      expected_response = {:error, "Error reading the file: enoent"}
      
      assert FizzbuzzProject.build("error.txt") == expected_response
    end
  end
end
