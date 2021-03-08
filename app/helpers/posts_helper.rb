module PostsHelper

  def display_posts_link(post)
    capture do
      concat link_to('Preberi več', post, class: 'stretched-link')
    end
  end

  def display_post_show_links(post)
    html = ""
    if current_user == post.user
      html += link_to 'Uredi', edit_post_path(post)
      html += "     "
      html += link_to('Izbriši', post, method: :delete, data: { confirm: 'Ali ste prepričani?'})
      html += ' | '
    end
    html += link_to 'Nazaj', posts_path
    html.html_safe
  end
end
