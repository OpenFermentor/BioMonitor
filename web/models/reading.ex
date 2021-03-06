defmodule BioMonitor.Reading do
  use BioMonitor.Web, :model

  @moduledoc """
    Reading model used to register metrics from the micro controller.
  """

  schema "readings" do
    field :temp, :float
    field :ph, :float
    field :biomass, :float
    field :product, :float
    field :substratum, :float
    belongs_to :routine, BioMonitor.Routine

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:temp, :ph, :biomass, :substratum, :product, :routine_id, :inserted_at])
    |> validate_required([:temp, :routine_id])
  end
end
