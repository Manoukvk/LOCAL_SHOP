class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end
end



#fetch the data from the database: you can acces all the model
#banner : just design
#2cards : designer database

#navbar : remplace with Category.all dropdown
#bootstrap
