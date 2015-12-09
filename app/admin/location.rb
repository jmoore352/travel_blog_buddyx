ActiveAdmin.register Location do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
 permit_params :category, :our_review, :destination_summary, :our_rating, :price, :city_country, :date, :image

  form do |f|
    f.inputs 'Details' do
      f.input :city_country, :as => :string
    end
    f.actions
  end


#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


end
