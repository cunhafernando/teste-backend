class Contact < ApplicationRecord
    validates :name,  length: {minimum:4}
    validates :cpf, format: { with: /\A\d{11}\z/ }, allow_blank: true
    validates :active, :birthday, :email, :mobile, :advertising, presence: true
end
