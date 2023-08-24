Workarea::Content.define_content_block_types do
  block_type "Category Overview" do
    description "Columnar content block for displaying categories with images."
    view_model "Workarea::Storefront::ContentBlocks::CategoryOverviewViewModel"

    series 4 do
      field "active", :boolean, default: true
      field "Image", :asset, file_types: "image", default: find_asset_id_by_file_name("100x100.png")
      field "Image Alt", :string
      field "Image Link", :url, default: "/"
      field "Header", :string
      field "Start", :taxonomy, required: true, default: -> { Workarea::Navigation::Taxon.first.try(:id).try(:to_s) }
    end

    fieldset "settings" do
      field "Image Position", :options, values: %w(Left Top), default: "Left"
      field "Alignment", :options, values: %w(Left Center Right), default: "Left"
    end
  end
end
