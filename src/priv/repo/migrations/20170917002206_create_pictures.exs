defmodule Homehistory.Repo.Migrations.CreatePictures do
  use Ecto.Migration

  def change do
    create table(:pictures) do
      add :name, :string
      add :url, :string
      add :date, :date
      add :note, :text
      add :location_id, references(:locations, on_delete: :nothing)

      timestamps()
    end

    create index(:pictures, [:location_id])
  end
end
