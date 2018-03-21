class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise    :database_authenticatable, :registerable,
            :recoverable, :rememberable, :trackable, :validatable,
            :confirmable, :lockable, :timeoutable,
            :omniauthable, omniauth_providers: [:google_oauth2]

  def self.find_or_create_from_google_data(google_data)
    where(provider: google_data.provider, uid: google_data.uid).first_or_create do | user |
      user.email = google_data.info.email
      user.password = Devise.friendly_token[0, 20]
      #user.skip_confirmation!

      #user.provider = auth.provider
      user.uid = google_data.uid
      user.first_name = google_data.info.first_name
      user.last_name = google_data.info.last_name
      user.picture = google_data.info.image
      user.save!
    end

  end

end
