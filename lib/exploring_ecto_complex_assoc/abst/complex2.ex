defmodule ExploringEctoComplexAssoc.Abst.Complex2 do
  use Ecto.Schema
  import Ecto.Changeset

  schema "complex2s" do
    field(:bar, :string)
    belongs_to(:abstract, ExploringEctoComplexAssoc.Abst.Abstract)

    timestamps()
  end

  @doc false
  def changeset(complex2, attrs) do
    complex2
    |> cast(attrs, [:bar])
    |> validate_required([:bar])
  end
end
