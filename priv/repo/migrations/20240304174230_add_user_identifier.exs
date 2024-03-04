defmodule PhoenixMessenger.Repo.Migrations.AddUserIdentifier do
  use Ecto.Migration

  def change do
    alter table(:users) do
      add :identifier, :string
    end
  end
end
