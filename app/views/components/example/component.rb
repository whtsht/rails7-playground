# frozen_string_literal: true

class Example::Component < ApplicationViewComponent
  erb_template <<-ERB
    <span title="<%= @title %>"><%= content %></span>
  ERB

  def initialize(title:)
    super
    @title = title
  end
end
