defmodule Treatise.UserTest do
  use Treatise.ModelCase

  alias Treatise.User

  @valid_attrs %{email: "some email", encrypted_password: "some encrypted_password", first_name: "some first_name", last_name: "some last_name"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = User.changeset(%User{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = User.changeset(%User{}, @invalid_attrs)
    refute changeset.valid?
  end
end
