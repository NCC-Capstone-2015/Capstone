# James Maher
module SearchesHelper
  def link_to_add_fields(name, f, type, locals={})
    # let the + button work
    new_object = f.object.send "build_#{type}"
    id = "new_#{type}"
    fields = f.send("#{type}_fields", new_object, child_index: id) do |builder|
      render(type.to_s + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields " + locals[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end
  def display_search_results(objects)
    # display advanced search results
    objects.each_with_object('') do |object, string|
      string << content_tag(:div, tag("img", src: get_photo_path(object.send(:id))) + display_search_results_row(object), class: ["large-3 small-3 column"])
    end
  end
  def display_basic_search_results(objects)
    # display basic search results
    objects.each_with_object('') do |object, string|
      string << content_tag(:div, tag("img", src: get_photo_path(object.send(:id))) + display_basic_search_results_row(object), class: ["large-3 small-3 column"])
    end
  end
  def model_fields
    # which fields to display and sort by
    [:first_name, :middle_initial, :last_name]
  end
  def display_search_results_row(object)
    fieldCount = 0
    # display row with link in first name field
    model_fields.each_with_object('') do |field, string|
      # If this is the first column, make it a link to the user's profile
      if fieldCount == 0
        string << content_tag(:div, link_to(object.send(field), user_informations_path + '/' + object.id.to_s, :style=>'color:#0011CC;'))
      else # no link
        string << content_tag(:div, object.send(field))
      end
      fieldCount += 1
    end
    .html_safe
  end
  def display_basic_search_results_row(object)
    model_fields.each_with_object('') do |field, string|
      string << content_tag(:div, object.send(field), class: "row")
    end
    .html_safe
  end
  def display_sort_column_headers(search)
    # display results table header
    model_fields.each_with_object('') do |field, string|
      string << content_tag(:th, sort_link(search, field, {}, method: :post))
    end
  end
end