module ApplicationHelper

  def display_navbar_options
    capture do
      if user_signed_in?
        concat link_to "Uredi profil", edit_user_registration_path, class: 'btn btn-sm btn-outline-secondary', style: 'margin-right: 10px;'
        concat link_to "Odjava", destroy_user_session_path, class: 'btn btn-sm btn-outline-secondary', method: :delete
      else
        concat link_to "Prijava", new_user_session_path, class: 'btn btn-sm btn-outline-secondary', style: 'margin-right: 10px;'
        concat link_to "Registracija", new_user_registration_path, class: 'btn btn-sm btn-outline-secondary'
      end
    end
  end

end
