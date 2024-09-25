# frozen_string_literal: true

class Button::Component < ApplicationViewComponent
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
        hover:filter hover:duration-[250ms] hover:color hover:duration-[200ms]
        focus:filter focus:duration-[250ms] focus:color focus:duration-[200ms]
        active:filter active:duration-[250ms] active:color active:duration-[200ms]
      )
    end
    variants do
      color do
        primary do
          %(
            text-white
            bg-gradient-to-r from-primary to-primary-rotate
            hover:text-white
            hover:saturate-[1.4] hover:brightness-[115%]
            focus:text-white
            focus:saturate-[1.4] focus:brightness-[115%]
            active:text-white
            active:saturate-[1.4] active:brightness-[115%]
          )
        end
        secondary do
          %(
            text-white
            bg-gradient-to-r from-secondary to-secondary-rotate
            hover:text-white
            hover:saturate-[1.4] hover:brightness-[115%]
            focus:text-white
            focus:saturate-[1.4] focus:brightness-[115%]
            active:text-white
            active:saturate-[1.4] active:brightness-[115%]
          )
        end
      end
    end
  end

  attr_reader :color

  def initialize(color: :primary)
    super
    @color = color
  end
end
