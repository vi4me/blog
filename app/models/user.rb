class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
		 :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, styles: { medium: '300x300>', thumb: '25x25>' }, default_url: '/images/:style/missing.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/  
  
  belongs_to :role
  has_many :role_settings, through: :role
  has_many :comments, dependent: :destroy
  has_many :commented_articles, through: :comments,
           source: :articles
  has_many :likes, dependent: :destroy
  has_many :auth_providers, dependent: :destroy
  has_and_belongs_to_many :liked_articles, class_name: 'Article'


  def full_name
	"#{first_name} #{last_name}"
  end       
end
