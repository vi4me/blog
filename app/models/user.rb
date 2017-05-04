class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :role
  has_many :role_settings, through: :role
  has_many :comments, dependent: :destroy
  has_many :commented_articles, through: :comments,
           source: :articles
  has_many :auth_providers, dependent: :destroy
  
  def me
    @user = current_user
  end


  before_validation do
    if self.password.blank?
      self.password = Devise.friendly_token
    end
  end
end