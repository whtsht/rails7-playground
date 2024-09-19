# frozen_string_literal: true

class Example::Component < ApplicationViewComponent
  #with_collection_parameter :example
  erb_template <<-ERB
    <span title="<%= @title %>"><%= content %></span>
  ERB

  def initialize(title:)
    @title = title
  end
end
