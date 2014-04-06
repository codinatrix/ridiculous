module SuppliersHelper
  def edit_icon id, field
    image_tag("/img/icons/edit.png", 
                    :alt => "edit",
                    :class => "edit_icon",
                    :height => "12px",
                    :width => "22px",
                    :id => field + id.to_s )
  end
end
