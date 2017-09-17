defmodule Homehistory.Pictures.Picture do
  use Ecto.Schema
  import Ecto.Changeset
  alias Homehistory.Pictures.Picture


  schema "pictures" do
    field :date, :date
    field :name, :string
    field :note, :string
    field :url, :string
    field :location_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Picture{} = picture, attrs) do
    picture
    |> cast(attrs, [:name, :url, :date, :note])
    |> validate_required([:name, :url, :date, :note])
  end
end
