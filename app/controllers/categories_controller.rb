class CategoriesController < ApplicationController
  before_action :load_categories, only: [:index]
  def index

  end

  private

  def load_categories
    @categories = Category.all_categories
    byebug
  end
end
