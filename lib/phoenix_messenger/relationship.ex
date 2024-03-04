defmodule PhoenixMessenger.Relationship do
  use Ecto.Schema
  import Ecto.Changeset

  schema "relationships" do
    field :user_id, :id
    field :relation_id, :id
    timestamps()
  end

  @attrs [:user_id, :relation_id]

  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, @attrs)
    |> unique_constraint(
      [:user_id, :relation_id],
      name: :relationships_user_id_relation_id_index
    )
  end
end
