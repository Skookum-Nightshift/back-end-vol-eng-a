# require "stripe"

class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable,
         :trackable, :validatable

  # mount_uploader :profile_image, ImageUploader

  after_create :add_stripe_account

  scope :active, -> { where(active: true) }
  scope :inactive, -> { where(active: false) }

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, email: true
  validates_uniqueness_of :email

  def name
    "#{first_name} #{last_name}".strip
  end

  private

    def add_stripe_account
      # Stripe.api_key = ENV["STRIPE_SECRET"]
      #
      # stripe_user = Stripe::Customer.create(
      #   :description => "Customer for #{self.name}",
      #   :email => self.email
      # )
      #
      # self.stripe_id = stripe_user.id
      # self.save!
    end
end
