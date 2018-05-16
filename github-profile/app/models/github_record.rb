user_response = HTTParty.get('https://api.github.com/users/ppreyer')
puts user_response

repos_response = HTTParty.get('https://api.github.com/users/ppreyer/repos')
puts repos_response

class Github
  include HTTParty
  base_uri 'https://api.github.com'

  attr_accessor :username
  
  def initialize()
    @username = username
  end

  # find a specific github user
  def find(username)
    response = get(base_url + "/users/#{@username}")
  end

  # def find
  #   users = self.find(@username)
  #   response = users + "/repos"
  # end
end

github = Github.new
github.find("ppreyer")
