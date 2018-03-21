defmodule ExploringEctoComplexAssoc.Abst.Complex3 do
  use Ecto.Schema
  import Ecto.Changeset

  schema "complex3s" do
    field(:baz, :string)
    belongs_to(:abstract, ExploringEctoComplexAssoc.Abst.Abstract)

    timestamps()
  end

  @doc false
  def changeset(complex3, attrs) do
    complex3
    |> cast(attrs, [:baz])
    |> validate_required([:baz])
  end
end
