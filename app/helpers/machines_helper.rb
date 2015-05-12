module MachinesHelper
  def machine_list_header(field)
    content_tag :div, class: "columns-4 #{ 'sorted' if params[:sorted] == field}" do
      field.titleize
    end
  end
end
