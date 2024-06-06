task(:sample_contacts => :environment) do
  if Rails.env.development?
    Contact.destroy_all
  end
  
  200.times do
     x = Contact.new
     x.first_name = Faker::Name.first_name
     x.last_name = Faker::Name.last_name
     x.save
  end
end
