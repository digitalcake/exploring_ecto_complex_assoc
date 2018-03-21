defmodule ExploringEctoComplexAssoc.Repo do
  use Ecto.Repo, otp_app: :exploring_ecto_complex_assoc

  @doc """
  Dynamically loads the repository url from the
  DATABASE_URL environment variable.
  """
  def init(_, opts) do
    {:ok, Keyword.put(opts, :url, System.get_env("DATABASE_URL"))}
  end
end
