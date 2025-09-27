module ApplicationHelper
  def sidebar_link_to(path, emoji, text)
    classes = sidebar_classes(path)

    link_to(path, class: classes) do
      tag.span(class: "me-2") { emoji } +
      tag.span { text }
    end
  end

  def sidebar_classes(path)
    classes = %w[list-group-item list-group-item-action px-3 border-0]
    classes << "active" if current_page?(path)
    classes
  end

  def icon(icon_name)
    tag.i(class: ["bi", "bi-#{icon_name}"])
  end

  def icon_with_text(icon_name, text)
    tag.span(icon(icon_name), class: "me-2") + tag.span(text)
  end
end
