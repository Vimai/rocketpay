defmodule RocketpayWeb.Numbers do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when there is a file with the given name, return the sum of numbers" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 55}}

      assert expected_response == response
    end


    test "when there is no file with the given name, return errors" do
      response = Numbers.sum_from_file("notvalidfile")

      expected_response = {:error, %{message: "Invalid file"}}

      assert expected_response == response
    end
  end
end
