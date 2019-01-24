module Homeland
  module SearchtHelper
    def render_highlight_content(topic,query_string)
      excerpt_cont = excerpt(topic.title, query_string, radius: 500)
      highlight(excerpt_cont, query_string)
    end
  end
end
