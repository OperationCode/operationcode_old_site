module ApplicationHelper
  def card(title: '', icon: { name: '', path: '' }, &block)
    icon_html = content_tag(:span,
                            link_to(content_tag(:i, icon[:name], class: 'material-icons'), icon[:path]),
                            class: 'pull-right')
    title_html = content_tag(:span, icon_html + title, class: 'card-title')
    content = capture(&block)

    content_tag(:div, content_tag(:div, title_html + content, class: 'card-content'), class: 'card')
  end
end
