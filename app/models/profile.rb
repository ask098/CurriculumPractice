class Profile < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
    belongs_to :user
    has_many :experiences
  end
  