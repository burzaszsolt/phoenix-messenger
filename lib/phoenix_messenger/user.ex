defmodule PhoenixMessenger.User do
  use Ecto.Schema
  import Ecto.Changeset

  schema "users" do
    field(:email, :string)
    field(:name, :string)
    field(:provider, :string)
    field(:token, :string)
    field(:profile_image, :string)

    many_to_many :relationships,
                 User,
                 join_through: Relationship,
                 join_keys: [user_id: :id, relation_id: :id]

    many_to_many :reverse_relationships,
                 User,
                 join_through: Relationship,
                 join_keys: [relation_id: :id, user_id: :id]
    timestamps()
  end

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :provider, :token, :name, :profile_image])
    |> validate_required([:email, :provider, :token, :name, :profile_image])
  end
end
