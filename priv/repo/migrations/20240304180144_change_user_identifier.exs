defmodule PhoenixMessenger.Repo.Migrations.ChangeUserIdentifier do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :identifier, :string
      add :url, :string
    end
  end
end
