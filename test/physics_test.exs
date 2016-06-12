defmodule PhysicsTest do
  use ExUnit.Case
  doctest Physics

  test "escape velocity of earth is correct" do
    ev = Physics.Rocketry.escape_velocity(:earth)
    assert ev == 11.2
  end

  test "escape velocity of planet X is correct" do
    ev = %{mass: 4.0e22, radius: 6.21e6}
      |> Physics.Rocketry.escape_velocity
    assert ev == 1.0
  end

  test "Converter one works" do
    ev = Converter.to_light_seconds({:miles, 1000}, precision: 5)
    assert ev == 0.00537
  end

  test "ConverterTwo works" do
    ev = ConverterTwo.to_light_seconds({:miles, 1000}, precision: 5)
    assert ev == 0.00537
  end

  test "ConverterTwo works with default values" do
    ev = ConverterTwo.to_light_seconds({:miles, 1000})
    assert ev == 0.00537
  end
end
