defmodule PhoenixMessenger.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:email, :string)
    field(:name, :string)
    field(:provider, :string)
    field(:token, :string)
    field(:profile_image, :string)

    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token, :name, :profile_image])
    |> validate_required([:email, :provider, :token, :name, :profile_image])
  end
end
