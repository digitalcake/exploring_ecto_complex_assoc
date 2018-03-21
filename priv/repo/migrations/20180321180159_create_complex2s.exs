defmodule ExploringEctoComplexAssoc.Repo.Migrations.CreateComplex2s do
  use Ecto.Migration

  def change do
    create table(:complex2s) do
      add(:bar, :string)
      add(:abstract_id, references(:abstracts))

      timestamps()
    end
  end
end
