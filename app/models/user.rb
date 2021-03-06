class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
                           uniqueness: true,
                           format: {
                             with: /\A[a-zA-Z0-9_-]+\z/,
                             on: :create,
                             message: "must be formatted correctly."
                           }

  has_many :statuses

  def full_name
    "#{first_name} #{last_name}"
  end

  def gravatar_url
    hashed_email = Digest::MD5.hexdigest email.strip.downcase
    "http://gravatar.com/avatar/#{hashed_email}"
  end

end
