class Bank < ActiveRecord::Base
    has_many :accounts
    has_many :users, through: :accounts
end