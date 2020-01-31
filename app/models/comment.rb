class Comment < ActiveRecord::Base
  belongs_to :article
  belongs_to :user
  validates :commenter,:body, presence: true

  def can_delete_comment logged_in_user
    return true if self.user_id == logged_in_user.id || self.article.user_id == logged_in_user.id
    return false
  end
  def can_add_comment article_user
    return true if self.article_user_id != logged_in_user.id
    return false
    end
end
