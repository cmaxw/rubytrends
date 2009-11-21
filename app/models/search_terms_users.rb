class SearchTermsUsers < ActiveRecord::Base
  belongs_to :user
  belongs_to :search_term
end
