# frozen_string_literal: true

class User < ApplicationRecord
  include Authentication
  has_many :examples
  has_many :weathers
  has_many :sports
  has_many :celebs
  has_many :news_papers
end
