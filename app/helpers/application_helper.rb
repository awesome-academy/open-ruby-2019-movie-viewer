module ApplicationHelper
  def category_name
    Category.pluck :name, :id
  end
end
