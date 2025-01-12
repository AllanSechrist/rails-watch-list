module ListsHelper
  def delete_bookmark(bookmark)
    link_to(bookmark_path(bookmark), data: { turbo_method: :delete, turbo_confirm: "Are you sure?" }, class: 'text-decoration-none text-reset') do
      content_tag(:span) do
        content_tag(:i, "", class: "fa-solid fa-x delete-icon")
      end
    end
  end
end
