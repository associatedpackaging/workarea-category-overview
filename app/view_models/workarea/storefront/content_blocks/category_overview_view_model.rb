module Workarea
  module Storefront
    module ContentBlocks
      class CategoryOverviewViewModel < ContentBlockViewModel
        include TaxonLookup

        def image
          find_asset(data[:image])
        end

        def active?
          data[:active]
        end

        def active_columns
          series.select { |s| s.active? }
        end

        def grid_cell_classes
          classes = []
          classes << "grid__cell--#{100 / active_columns.count}-at-wide"
          if active_columns.count == 4
            classes << "grid__cell--50-at-medium"
          end
          classes.join(" ")
        end

        def column_styles
          "text-align: #{data[:alignment].downcase}"
        end

        def image_container_class
          "category-overview-content-block__container--image-#{data[:image_position].parameterize}"
        end
      end
    end
  end
end
