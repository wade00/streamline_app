class RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      machines_path
    end

end
