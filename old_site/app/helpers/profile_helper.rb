# frozen_string_literal: true
module ProfileHelper
  def menu_item(item_name:, item_path:)
    active = request.path == item_path ? 'active' : ''
    content_tag(:li, link_to(item_name, item_path, target: :_self, class: active), class: :tab)
  end
end
