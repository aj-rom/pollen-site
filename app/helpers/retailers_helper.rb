module RetailersHelper
  def user_owns_retailer?(user, retailer)
    true unless !user_signed_in? || retailer.user_id != user.id
  end
end
