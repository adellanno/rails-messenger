module MessagesHelper

  def other_user_in_conversation(first_user_id, second_user_id)
    first_user_id == current_user.id ? User.find(second_user_id) : User.find(first_user_id)
  end

end
