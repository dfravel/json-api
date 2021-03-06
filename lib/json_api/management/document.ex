defmodule JsonApi.Management.Document do
  use Ecto.Schema
  import Ecto.Changeset
  alias JsonApi.Management.Document


  schema "documents" do
   
    field :name, :string
    field :content, :string
    field :view_count, :integer
    field :published, :boolean

    belongs_to :project, JsonApi.Management.Project

    timestamps()
  end

  @doc false
  def changeset(%Document{} = document, attrs) do
    document
    |> cast(attrs, [:name, :content, :view_count, :published, :project_id])
    |> validate_required([:name])
  end
end
