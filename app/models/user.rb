class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :comments
  has_many :posts do
    def with_tag(tag)
      self.joins(:tags).where(tags: {name: tag})
    end
  end
end
