defmodule Homehistory.Locations.Location do
  use Ecto.Schema
  import Ecto.Changeset
  alias Homehistory.Locations.Location


  schema "locations" do
    field :address1, :string
    field :address2, :string
    field :latitude, :float
    field :longitude, :float
    field :name, :string
    field :zip, :integer

    timestamps()
  end

  @doc false
  def changeset(%Location{} = location, attrs) do
    location
    |> cast(attrs, [:name, :address1, :address2, :zip, :latitude, :longitude])
    |> validate_required([:name, :address1, :address2, :zip, :latitude, :longitude])
  end
end
