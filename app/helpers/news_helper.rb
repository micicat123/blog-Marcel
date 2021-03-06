module NewsHelper



  def display_news_link(news)
    capture do
      concat link_to('Preberi več', news, class: 'stretched-link')
    end
  end

  def display_news_show_links(news)
    html = ""
    if current_user == news.user
      html += link_to 'Uredi', edit_news_path(news)
      html += "     "
      html += link_to('Izbriši', news, method: :delete, data: { confirm: 'Ali ste prepričani?'})
      html += ' | '
    end
    html += link_to 'Nazaj', news_index_path
    html.html_safe
  end
end
