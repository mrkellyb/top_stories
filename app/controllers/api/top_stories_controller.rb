class Api::TopStoriesController < ApplicationController

  def index

    section = params[:section]

    @top_stories = HTTP.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=myk0BlCbnoQEMLtFmBfVxVRphu5FGGEU").parse["results"]

    # @top_stories = HTTP.auth("Bearer myk0BlCbnoQEMLtFmBfVxVRphu5FGGEU").get("https://api.nytimes.com/svc/topstories/v2/#{section}.json").parse["results"] 
    
    # @top_stories = HTTP.get("https://api.nytimes.com/svc/topstories/v2/#{section}.json?api-key=#{ENV["API_KEY"]}").parse["results"]   

    render 'index.json.jbuilder'
    
  end
end


# https://api.nytimes.com/svc/topstories/v2/arts.json?api-key=myk0BlCbnoQEMLtFmBfVxVRphu5FGGEU