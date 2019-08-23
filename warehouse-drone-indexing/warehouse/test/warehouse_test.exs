defmodule WarehouseTest do
  use ExUnit.Case
  doctest Warehouse

  test "find1_1" do
    assert Warehouse.find(1, 1) == 1
  end


  test "find1_2" do
    assert Warehouse.find(1, 2) == 2
  end

  test "find1_3" do
    assert Warehouse.find(1, 3) == 4
  end

  test "find1_4" do
    assert Warehouse.find(1, 4) == 7
  end

  test "find1_5" do
    assert Warehouse.find(1, 5) == 11
  end

  test "find1_6" do
    assert Warehouse.find(1, 6) == 16
  end

  test "find2_1" do
    assert Warehouse.find(2, 1) == 3
  end

  test "find2_2" do
    assert Warehouse.find(2, 2) == 5
  end

  test "find2_3" do
    assert Warehouse.find(2, 3) == 8
  end

  test "find2_4" do
    assert Warehouse.find(2, 4) == 12
  end

  test "find2_5" do
    assert Warehouse.find(2, 5) == 17
  end

  test "find3_1" do
    assert Warehouse.find(3, 1) == 6
  end

  test "find3_2" do
      assert Warehouse.find(3, 2) == 9
  end

  test "find3_3" do
    assert Warehouse.find(3, 3) == 13
  end

  test "find3_4" do
    assert Warehouse.find(3, 4) == 18
  end

  test "find4_1" do
      assert Warehouse.find(4, 1) == 10
  end

  test "find4_2" do
    assert Warehouse.find(4, 2) == 14
  end

  test "find4_3" do
    assert Warehouse.find(4, 3) == 19
  end

  test "find5_1" do
    assert Warehouse.find(5, 1) == 15
  end

  test "find5_2" do
    assert Warehouse.find(5, 2) == 20
  end

  test "find5_5" do
    assert Warehouse.find(5, 5) == 41
  end

  test "find6_1" do
    assert Warehouse.find(6, 1) == 21
  end

  test "findGalaxyFarFarAway" do
    assert Warehouse.find(100000, 100000) == 20000000001
  end
end
