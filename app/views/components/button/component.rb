# frozen_string_literal: true

class Button::Component < ApplicationViewComponent
  def initialize(title:)
    @title = title
  end
end
