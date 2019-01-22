require_dependency "homeland/application_controller"

module Homeland
  class SearchtController < ApplicationController
    before_action :validate_search_key, only: [:search]

    def search
      if @query_string.present?
        search_result = Topic.ransack(@search_criteria).result(:distinct => true)
        @searcht = search_result.paginate(:page => params[:page], :per_page => 15 )
      end
    end

    protected
    
    def validate_search_key
      @query_string = params[:q].gsub(/\\|\'|\/|\?/, "") if params[:q].present?
      @search_criteria = search_criteria(@query_string)
    end
  
    def search_criteria(query_string)
      { :title_cont => query_string }
    end
  end
end
