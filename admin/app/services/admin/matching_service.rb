module Admin
  class MatchingService
    include Godmin::Resources::ResourceService

    attrs_for_index :established, :newcomer
    attrs_for_show :established, :newcomer
    attrs_for_form :established, :newcomer
  end
end