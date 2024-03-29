defmodule PhoenixMessenger.Repo.Migrations.AddRelationships do
  use Ecto.Migration

  def change do
    create table(:relationships) do
      add :user_id, references(:users)
      add :relation_id, references(:users)
      timestamps()
    end

    create index(:relationships, [:user_id])
    create index(:relationships, [:relation_id])

    create unique_index(
      :relationships,
      [:user_id, :relation_id],
      name: :relationships_user_id_relation_id_index
    )
  end
end
