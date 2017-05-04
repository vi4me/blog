class RoleSetting < ApplicationRecord

	has_and_belongs_to_many :roles
  
  class << self
  def admin
      find_by(name: 'admin')
  end

  def moderator
      find_by(name: 'moderator')
  end

  def user
      find_by(name: 'user')
  end

end
end