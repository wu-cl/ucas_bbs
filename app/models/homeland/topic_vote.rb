module Homeland
  class TopicVote < ApplicationRecord::Base
    include Homeland::Concerns::SoftDelete
    include Homeland::Concerns::Markup
    include Homeland::Concerns::UserDelegates

    belongs_to :topic, class_name: 'Homeland::Topic'
    has_and_belongs_to_many :user, class_name: Homeland.config.user_class.to_s

    validates :topic_id, :votename, :approval, :opposite, :user_id, presence: true
  end
end

# module Homeland
#     class TopicVote < ActiveRecode::Base
#         include Homeland::Concerns::SoftDelete
#         include Homeland::Concerns::Markup
#         include Homeland::Concerns::UserDelegates

#         belongs_to :topic, class_name: 'Homeland::Topic'
        
#         validates