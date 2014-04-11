class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_create :set_default_role
  has_and_belongs_to_many :roles
  def role? ( role )
    return !!self.roles.find_by_name(role.to_s.camelize)
  end

  private
  def set_default_role
    self.roles ||= Role.find_by_name('Reader')
  end
end
