module ApplicationHelper
  def active_page(*args)
    if current_page?(*args)
      'active'
    else
      ''
    end
  end

  def markdown(text)
    md = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, no_intra_emphasis: true)
    md.render(text).html_safe
  end
end
