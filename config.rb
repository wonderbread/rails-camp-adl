page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false


activate :autoprefixer  do |config|
  config.browsers = ['last 2 versions', 'Explorer >= 9']
end
activate :directory_indexes


configure :development do
  activate :livereload
end

configure :build do
  activate :minify_css
  activate :minify_javascript
  activate :relative_assets
  set :relative_links, true
end
