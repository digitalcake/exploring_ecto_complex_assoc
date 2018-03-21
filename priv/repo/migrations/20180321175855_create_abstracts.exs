defmodule ExploringEctoComplexAssoc.Repo.Migrations.CreateAbstracts do
  use Ecto.Migration

  def change do
    create table(:abstracts) do
      add(:common_field1, :string)
      add(:common_field2, :string)

      timestamps()
    end
  end
end
