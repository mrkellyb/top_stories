# json.array! @top_stories.each do |story|
#   json.title article[:title]
# end

# json.results = @top_stories.results
# json.top_stories = @top_stories

json.array! @top_stories.each do |story|
  json.section story["section"]
  json.title story["title"]
  json.abstract story["abstract"]
  json.url story["url"]

end







# p test_hash[:results][0][:title]