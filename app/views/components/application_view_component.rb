# frozen_string_literal: true

require 'dry-initializer'

class ApplicationViewComponent < ViewComponentContrib::Base
  extend Dry::Initializer
  include ApplicationHelper
  include ViewComponentContrib::StyleVariants
end
