defmodule ExploringEctoComplexAssoc.AbstTest do
  use ExploringEctoComplexAssoc.DataCase

  alias ExploringEctoComplexAssoc.Abst

  describe "simples" do
    alias ExploringEctoComplexAssoc.Abst.Simple

    @valid_attrs %{common_field1: "some common_field1", common_field2: "some common_field2"}
    @update_attrs %{common_field1: "some updated common_field1", common_field2: "some updated common_field2"}
    @invalid_attrs %{common_field1: nil, common_field2: nil}

    def simple_fixture(attrs \\ %{}) do
      {:ok, simple} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Abst.create_simple()

      simple
    end

    test "list_simples/0 returns all simples" do
      simple = simple_fixture()
      assert Abst.list_simples() == [simple]
    end

    test "get_simple!/1 returns the simple with given id" do
      simple = simple_fixture()
      assert Abst.get_simple!(simple.id) == simple
    end

    test "create_simple/1 with valid data creates a simple" do
      assert {:ok, %Simple{} = simple} = Abst.create_simple(@valid_attrs)
      assert simple.common_field1 == "some common_field1"
      assert simple.common_field2 == "some common_field2"
    end

    test "create_simple/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Abst.create_simple(@invalid_attrs)
    end

    test "update_simple/2 with valid data updates the simple" do
      simple = simple_fixture()
      assert {:ok, simple} = Abst.update_simple(simple, @update_attrs)
      assert %Simple{} = simple
      assert simple.common_field1 == "some updated common_field1"
      assert simple.common_field2 == "some updated common_field2"
    end

    test "update_simple/2 with invalid data returns error changeset" do
      simple = simple_fixture()
      assert {:error, %Ecto.Changeset{}} = Abst.update_simple(simple, @invalid_attrs)
      assert simple == Abst.get_simple!(simple.id)
    end

    test "delete_simple/1 deletes the simple" do
      simple = simple_fixture()
      assert {:ok, %Simple{}} = Abst.delete_simple(simple)
      assert_raise Ecto.NoResultsError, fn -> Abst.get_simple!(simple.id) end
    end

    test "change_simple/1 returns a simple changeset" do
      simple = simple_fixture()
      assert %Ecto.Changeset{} = Abst.change_simple(simple)
    end
  end

  describe "complex1s" do
    alias ExploringEctoComplexAssoc.Abst.Complex1

    @valid_attrs %{foo: "some foo"}
    @update_attrs %{foo: "some updated foo"}
    @invalid_attrs %{foo: nil}

    def complex1_fixture(attrs \\ %{}) do
      {:ok, complex1} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Abst.create_complex1()

      complex1
    end

    test "list_complex1s/0 returns all complex1s" do
      complex1 = complex1_fixture()
      assert Abst.list_complex1s() == [complex1]
    end

    test "get_complex1!/1 returns the complex1 with given id" do
      complex1 = complex1_fixture()
      assert Abst.get_complex1!(complex1.id) == complex1
    end

    test "create_complex1/1 with valid data creates a complex1" do
      assert {:ok, %Complex1{} = complex1} = Abst.create_complex1(@valid_attrs)
      assert complex1.foo == "some foo"
    end

    test "create_complex1/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Abst.create_complex1(@invalid_attrs)
    end

    test "update_complex1/2 with valid data updates the complex1" do
      complex1 = complex1_fixture()
      assert {:ok, complex1} = Abst.update_complex1(complex1, @update_attrs)
      assert %Complex1{} = complex1
      assert complex1.foo == "some updated foo"
    end

    test "update_complex1/2 with invalid data returns error changeset" do
      complex1 = complex1_fixture()
      assert {:error, %Ecto.Changeset{}} = Abst.update_complex1(complex1, @invalid_attrs)
      assert complex1 == Abst.get_complex1!(complex1.id)
    end

    test "delete_complex1/1 deletes the complex1" do
      complex1 = complex1_fixture()
      assert {:ok, %Complex1{}} = Abst.delete_complex1(complex1)
      assert_raise Ecto.NoResultsError, fn -> Abst.get_complex1!(complex1.id) end
    end

    test "change_complex1/1 returns a complex1 changeset" do
      complex1 = complex1_fixture()
      assert %Ecto.Changeset{} = Abst.change_complex1(complex1)
    end
  end

  describe "complex2s" do
    alias ExploringEctoComplexAssoc.Abst.Complex2

    @valid_attrs %{bar: "some bar"}
    @update_attrs %{bar: "some updated bar"}
    @invalid_attrs %{bar: nil}

    def complex2_fixture(attrs \\ %{}) do
      {:ok, complex2} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Abst.create_complex2()

      complex2
    end

    test "list_complex2s/0 returns all complex2s" do
      complex2 = complex2_fixture()
      assert Abst.list_complex2s() == [complex2]
    end

    test "get_complex2!/1 returns the complex2 with given id" do
      complex2 = complex2_fixture()
      assert Abst.get_complex2!(complex2.id) == complex2
    end

    test "create_complex2/1 with valid data creates a complex2" do
      assert {:ok, %Complex2{} = complex2} = Abst.create_complex2(@valid_attrs)
      assert complex2.bar == "some bar"
    end

    test "create_complex2/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Abst.create_complex2(@invalid_attrs)
    end

    test "update_complex2/2 with valid data updates the complex2" do
      complex2 = complex2_fixture()
      assert {:ok, complex2} = Abst.update_complex2(complex2, @update_attrs)
      assert %Complex2{} = complex2
      assert complex2.bar == "some updated bar"
    end

    test "update_complex2/2 with invalid data returns error changeset" do
      complex2 = complex2_fixture()
      assert {:error, %Ecto.Changeset{}} = Abst.update_complex2(complex2, @invalid_attrs)
      assert complex2 == Abst.get_complex2!(complex2.id)
    end

    test "delete_complex2/1 deletes the complex2" do
      complex2 = complex2_fixture()
      assert {:ok, %Complex2{}} = Abst.delete_complex2(complex2)
      assert_raise Ecto.NoResultsError, fn -> Abst.get_complex2!(complex2.id) end
    end

    test "change_complex2/1 returns a complex2 changeset" do
      complex2 = complex2_fixture()
      assert %Ecto.Changeset{} = Abst.change_complex2(complex2)
    end
  end

  describe "complex3s" do
    alias ExploringEctoComplexAssoc.Abst.Complex3

    @valid_attrs %{baz: "some baz"}
    @update_attrs %{baz: "some updated baz"}
    @invalid_attrs %{baz: nil}

    def complex3_fixture(attrs \\ %{}) do
      {:ok, complex3} =
        attrs
        |> Enum.into(@valid_attrs)
        |> Abst.create_complex3()

      complex3
    end

    test "list_complex3s/0 returns all complex3s" do
      complex3 = complex3_fixture()
      assert Abst.list_complex3s() == [complex3]
    end

    test "get_complex3!/1 returns the complex3 with given id" do
      complex3 = complex3_fixture()
      assert Abst.get_complex3!(complex3.id) == complex3
    end

    test "create_complex3/1 with valid data creates a complex3" do
      assert {:ok, %Complex3{} = complex3} = Abst.create_complex3(@valid_attrs)
      assert complex3.baz == "some baz"
    end

    test "create_complex3/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Abst.create_complex3(@invalid_attrs)
    end

    test "update_complex3/2 with valid data updates the complex3" do
      complex3 = complex3_fixture()
      assert {:ok, complex3} = Abst.update_complex3(complex3, @update_attrs)
      assert %Complex3{} = complex3
      assert complex3.baz == "some updated baz"
    end

    test "update_complex3/2 with invalid data returns error changeset" do
      complex3 = complex3_fixture()
      assert {:error, %Ecto.Changeset{}} = Abst.update_complex3(complex3, @invalid_attrs)
      assert complex3 == Abst.get_complex3!(complex3.id)
    end

    test "delete_complex3/1 deletes the complex3" do
      complex3 = complex3_fixture()
      assert {:ok, %Complex3{}} = Abst.delete_complex3(complex3)
      assert_raise Ecto.NoResultsError, fn -> Abst.get_complex3!(complex3.id) end
    end

    test "change_complex3/1 returns a complex3 changeset" do
      complex3 = complex3_fixture()
      assert %Ecto.Changeset{} = Abst.change_complex3(complex3)
    end
  end
end
