module MachinesHelper
  def machine_list_header(field, class_value)
    content_tag :th, class: "#{class_value} table-header-column#{ 'sorted' if params[:sorted] == field}" do
      field.titleize
    end
  end
end
