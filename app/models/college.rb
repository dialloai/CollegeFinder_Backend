class College < ApplicationRecord
#   def self.fetch(query)
#     @college=College.find
#   end

has_many :users
has_many :favorites, through: :users


# include PgSearch
# pg_search_scope :search_by_term, against: [:title, :content],
#   using: {
#     tsearch: {
#       any_word: true,
#       prefix: true
#     }
#   }
end
