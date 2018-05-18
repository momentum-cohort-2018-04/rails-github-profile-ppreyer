class PeopleController < ApplicationController
  def index
    @person = HTTParty.get('https://api.github.com/users/ppreyer')
    @repos = HTTParty.get('https://api.github.com/users/ppreyer/repos')
  end
end


