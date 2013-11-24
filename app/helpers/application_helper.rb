module ApplicationHelper
  def placeholdit(params, opts = {})
    image_tag("http://placehold.it/#{params}", opts)
  end
end
