Dynamo.under_test(AnotherDynamo.Dynamo)
Dynamo.Loader.enable
ExUnit.start

defmodule AnotherDynamo.TestCase do
  use ExUnit.CaseTemplate

  # Enable code reloading on test cases
  setup do
    Dynamo.Loader.enable
    :ok
  end
end
