class RoleSetting < ApplicationRecord
<<<<<<< HEAD
	 has_and_belongs_to_many :roles

  class << self
    def admin
      find_by(name: 'admin')
    end

    def moderator
      find_by(name: 'moderator')
    end

    def autor
      find_by(name: 'autor')
    end
  end
end
=======

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
>>>>>>> 06cd0324f54cfb69343eb7c5843d92332e5bc208
