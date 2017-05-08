class ArticlePolicy < ApplicationPolicy

  def admin?
    user && user.role_settings.include?(RoleSetting.admin)
  end

  def moderator?
    user && user.role_settings.include?(RoleSetting.moderator)
  end

<<<<<<< HEAD
  def autor?
    user && user.role_settings.include?(RoleSetting.autor)
  end
end
=======
  def user?
    user && user.role_settings.include?(RoleSetting.user)
  end
end
>>>>>>> 06cd0324f54cfb69343eb7c5843d92332e5bc208
