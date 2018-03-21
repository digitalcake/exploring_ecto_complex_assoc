defmodule ExploringEctoComplexAssoc.Abst.Complex1 do
  use Ecto.Schema
  import Ecto.Changeset

  schema "complex1s" do
    field(:foo, :string)
    belongs_to(:abstract, ExploringEctoComplexAssoc.Abst.Abstract)

    timestamps()
  end

  @doc false
  def changeset(complex1, attrs) do
    complex1
    |> cast(attrs, [:foo])
    |> validate_required([:foo])
  end
end
