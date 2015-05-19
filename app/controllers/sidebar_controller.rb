class SidebarController < ApplicationController
  def inventory
    menu_item :inventory
  end

  def listings
    menu_item :listings
  end

  def profile
    menu_item :profile
  end

  def sign_out
    menu_item :sign_out
  end
end
