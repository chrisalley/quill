defmodule Quill.User do
  use Quill.Web, :model

  schema "users" do
    field :email, :string
    field :encrypted_password, :string
    belongs_to :profile, Quill.Profile

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:email, :encrypted_password])
    |> validate_required([:email, :encrypted_password])
  end
end
