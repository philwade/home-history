defmodule Homehistory.Repo.Migrations.CreateLocations do
  use Ecto.Migration

  def change do
    create table(:locations) do
      add :name, :string
      add :address1, :string
      add :address2, :string
      add :zip, :integer
      add :latitude, :float
      add :longitude, :float

      timestamps()
    end

  end
end
