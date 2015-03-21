class BookmarkPolicy < ApplicationPolicy
  def index?
    user.present?
  end
  
end
