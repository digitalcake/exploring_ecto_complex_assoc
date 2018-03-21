defmodule ExploringEctoComplexAssoc.Abst.Abstract do
  use Ecto.Schema
  import Ecto.Changeset

  schema "abstracts" do
    field(:common_field1, :string)
    field(:common_field2, :string)

    # Is there a way I can manage this better? 😱
    # what will this look like if I have something like 50+ complex schemas?
    has_one(:complex1, ExploringEctoComplexAssoc.Abst.Complex1)
    has_one(:complex2, ExploringEctoComplexAssoc.Abst.Complex2)
    has_one(:complex3, ExploringEctoComplexAssoc.Abst.Complex3)

    timestamps()
  end

  @doc false
  def changeset(abstract, attrs) do
    abstract
    |> cast(attrs, [:common_field1, :common_field2])
    |> validate_required([:common_field1, :common_field2])
  end
end
