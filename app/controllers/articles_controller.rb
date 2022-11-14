# frozen_string_literal: true

# Articles class controller
class ArticlesController < ApplicationController
  def index() end

  def answer
    @answer = case params[:ask]
              when 'I am going to work' then 'Great!'
              when /.+\?$/ then 'Silly question, get dressed and go to work!'
              else "I don't care, get dressed and go to work!"
              end
  end
end
