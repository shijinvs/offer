ActiveAdmin.register Currentoffer do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :title, :image, :validity

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end


form do |f|
    f.inputs "Currentoffer" do
      f.input :title
      f.input :image, :as => :file,:hint => image_tag(f.object.image.url(:thumb)) 
      f.input :validity
    end
    f.button :submit
  end

end
