defmodule ExploringEctoComplexAssoc.Repo.Migrations.CreateComplex3s do
  use Ecto.Migration

  def change do
    create table(:complex3s) do
      add(:baz, :string)
      add(:abstract_id, references(:abstracts))

      timestamps()
    end
  end
end
