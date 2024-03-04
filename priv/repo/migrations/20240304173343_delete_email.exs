defmodule PhoenixMessenger.Repo.Migrations.DeleteEmail do
  use Ecto.Migration

  def change do
    alter table(:users) do
      remove :email
    end
  end
end
