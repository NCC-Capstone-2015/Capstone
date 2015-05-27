module SearchesHelper
  def link_to_add_fields(name, f, type, locals={})
    new_object = f.object.send "build_#{type}"
    id = "new_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
      render(type.to_s + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields " + locals[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end
  def display_search_results(objects)
    objects.each_with_object('') do |object, string|
      string << content_tag(:tr, display_search_results_row(object))
    end
  end
  def display_search_results_row(object)
    model_fields.each_with_object('') do |field, string|
      string << content_tag(:td, link_to(object.send(field), 'users'))
    end
    .html_safe
  end
  def action
    action_name == 'advanced_search' ? :post : :get
  end
  def model_fields
    # which fields to display and sort by
    [:first_name, :last_name]
  end
  def display_sort_column_headers(search)
    model_fields.each_with_object('') do |field, string|
      string << content_tag(:th, sort_link(search, field, {}, method: action))
    end
  end
end