# frozen_string_literal: true
module ProfileHelper
  def menu_item(item_name:, item_path:)
    content_tag(:li, link_to(item_name, item_path, target: :_self), class: :tab)
  end
end
