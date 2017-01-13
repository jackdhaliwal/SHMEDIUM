module PhrasingHelper
  # You must implement the can_edit_phrases? method.
  # Example:
  #
  def can_edit_phrases?
   current_user
  end

  def can_edit_phrases?
    raise NotImplementedError.new("You must implement the can_edit_phrases? method")
  end
end

def can_edit_phrases?
    true
end
