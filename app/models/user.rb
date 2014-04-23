class User < ActiveRecord::Base

  after_create :send_welcome_email

  belongs_to :industry 
  
  private
    def send_welcome_email
      UserMailer.welcome_email(self).deliver
    end 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 end
