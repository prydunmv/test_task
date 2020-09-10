class PagesController < ApplicationController
  layout 'dashboard'

  def home
    @articles = Article.all.published
  end
end
