module Homeland
    class TopicVote < ActiveRecode::Base
        include Homeland::Concerns::SoftDelete
        include Homeland::Concerns::Markup
        include Homeland::Concerns::UserDelegates

        belongs_to :topic, class_name: 'Homeland::Topic'
        
        validates