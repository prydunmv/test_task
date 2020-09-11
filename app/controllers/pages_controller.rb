class PagesController < ApplicationController
  layout 'dashboard'

  def home
    @articles = Article.published
  end
end
