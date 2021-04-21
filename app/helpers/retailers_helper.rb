module RetailersHelper
  def user_owns_retailer?(user, retailer)
    true unless retailer.user_id != user.id
  end
end
