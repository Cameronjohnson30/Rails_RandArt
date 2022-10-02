class ApplicationController < ActionController::Base
  helper_method :random
  helper_method :rando

def rando(category)
  # random_style = Style.all.sample
  # :style_id == random_style.id
  # style = Style.find(params[:style_id])
  # @category = Category.all.sample
  # return category
end
  def random(style)
    random_style = Style.all.sample
    random = random_style.name
    style_id = random_style.id
    category = Category.all.sample
    rano = category.name
    random_idea = Idea.all.sample
    random_id = random_idea.name
    return "Style:" + " " + random + ", "+ "Category:" + " " + rano + ", " + "Idea:" + random_id
  end
end