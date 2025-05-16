ActiveAdmin.register Template do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :boby
  #
  # or
  #
  # permit_params do
  #   permitted = [:title, :boby]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
    # permitted
  # end
  
end
