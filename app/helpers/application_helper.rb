module ApplicationHelper
  # コンポーネントの呼び出しを単純化するメソッド
  # こう書かなくてはならないところを
  # <%= render(Example::Component.new(title: "Hello World!")) %>
  #
  # こう書けるようになる
  # <%= component "example", title: "Hello World!" %>
  #
  # ディレクトリがネストしている場合はこう書く
  # <%= component "way_down/we_go/example", title: "Hello World!" %>
  #
  def component(name, *args, **kwargs, &block)
    component = name.to_s.camelize.constantize::Component
    render(component.new(*args, **kwargs), &block)
  end
end
