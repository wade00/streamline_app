module MachinesHelper
  def machine_list_header(field, class_value, sort_by)
    content_tag :th, class: "#{class_value} table-header-column#{ 'sorted' if params[:sorted] == field}" do
      content_tag :a, class: "sort-machines", href: machines_path({sort: sort_by}) do
        field.titleize
      end
    end
  end

  def add_outdated_banner(machine)
    listings_array = machine.listings.where(current: false)
    listings_array.length > 0 ? true : false
  end

  def already_listed(machine, website_number)
    machine.listings.where(website: website_number).count > 0 ? true : false
  end
end
