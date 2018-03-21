defmodule ExploringEctoComplexAssoc.Repo.Migrations.CreateComplex1s do
  use Ecto.Migration

  def change do
    create table(:complex1s) do
      add(:foo, :string)
      add(:abstract_id, references(:abstracts))

      timestamps()
    end
  end
end
