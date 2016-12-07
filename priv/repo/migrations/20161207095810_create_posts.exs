defmodule Nakedmnesia.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create_if_not_exists table(:posts, engine: :set) do
      add :title,       :string
      add :body,        :string
      add :author_name, :string

      timestamps()
    end
  end
end
