class Button::Component < ApplicationViewComponent
  option :color, default: -> { :primary }

  attr_reader :color

  def call
    button_tag(class: style(color:)) do
      content
    end
  end

  style do
    base do
      %(
        inline-block
        py-xxs px-m
        rounded
        bg-origin-border
        bg-transparent
        border-transparent
        fond-bold
        no-underline
        cursor-pointer
        outline-none
        transition
        filter duration-400 color duration-200
      )
    end

    highlight_styles = %(
      hover:text-white
      hover:saturate-[1.4] hover:brightness-[115%]
      focus:text-white
      focus:saturate-[1.4] focus:brightness-[115%]
      active:text-white
      active:saturate-[1.4] active:brightness-[115%]
    )

    variants do
      color do
        primary do
          %(
            text-white
            bg-gradient-to-r from-primary to-primary-rotate
            #{highlight_styles}
          )
        end
        secondary do
          %(
            text-white
            bg-gradient-to-r from-secondary to-secondary-rotate
            #{highlight_styles}
          )
        end
      end
    end
  end
end
