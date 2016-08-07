require 'rails_helper'

describe RecipeParser do

  let(:html_text) { File.read(Rails.root.join('spec/fixtures/recipes/spinach-tart.html')) }

  subject {}


  it "" do
full_sanitizer = Rails::Html::FullSanitizer.new
text = full_sanitizer.sanitize(html_text)
byebug
text.split(/\s\s+/)

  end

end
