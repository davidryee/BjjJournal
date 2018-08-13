module MatchStats

  def get_query_params(search_term)
      #"(title like ?)", "Fought %"
    q = "#{search_term} %"
    {:empty_query => "(title like ?)", :query_param => q }
  end
end