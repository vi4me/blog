class ArticlePolicy < ApplicationPolicy

  def admin?
    user && user.role_settings.include?(RoleSetting.admin)
  end

  def moderator?
    user && user.role_settings.include?(RoleSetting.moderator)
  end

  def user?
    user && user.role_settings.include?(RoleSetting.user)
  end
end