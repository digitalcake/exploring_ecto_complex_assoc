defmodule ExploringEctoComplexAssoc.Abst do
  @moduledoc """
  The Abst context.

  The goal of this context is create a single interface for creating any type of
  complex records through a abstract layer. 
  """

  import Ecto.Query, warn: false
  alias ExploringEctoComplexAssoc.Repo

  alias ExploringEctoComplexAssoc.Abst.Abstract

  @doc """
  Returns the list of abstracts.

  ## Examples

      iex> list_abstracts()
      [%Abstract{}, ...]

  """
  def list_abstracts do
    Repo.all(Abstract)
  end

  @doc """
  Gets a single abstract.

  Raises `Ecto.NoResultsError` if the Abstract does not exist.

  ## Examples

      iex> get_abstract!(123)
      %Abstract{}

      iex> get_abstract!(456)
      ** (Ecto.NoResultsError)

  """
  def get_abstract!(id), do: Repo.get!(Abstract, id)

  @doc """
  Creates a abstract.

  ## Examples

      iex> create_abstract(%{field: value})
      {:ok, %Abstract{}}

      iex> create_abstract(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_abstract(attrs \\ %{}) do
    %Abstract{}
    |> Abstract.changeset(attrs)
    |> Repo.insert()
  end

  @doc """
  Updates a abstract.

  ## Examples

      iex> update_abstract(abstract, %{field: new_value})
      {:ok, %Abstract{}}

      iex> update_abstract(abstract, %{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def update_abstract(%Abstract{} = abstract, attrs) do
    abstract
    |> Abstract.changeset(attrs)
    |> Repo.update()
  end

  @doc """
  Deletes a Abstract.

  ## Examples

      iex> delete_abstract(abstract)
      {:ok, %Abstract{}}

      iex> delete_abstract(abstract)
      {:error, %Ecto.Changeset{}}

  """
  def delete_abstract(%Abstract{} = abstract) do
    Repo.delete(abstract)
  end

  @doc """
  Returns an `%Ecto.Changeset{}` for tracking abstract changes.

  ## Examples

      iex> change_abstract(abstract)
      %Ecto.Changeset{source: %Abstract{}}

  """
  def change_abstract(%Abstract{} = abstract) do
    Abstract.changeset(abstract, %{})
  end
end
