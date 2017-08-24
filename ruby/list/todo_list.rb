class TodoList
  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(new_item)
  	@list << new_item
  end

  def delete_item(item_to_be_deleted)
  	@list.delete(item_to_be_deleted)
  end

  def get_item(index)
  	@list[index]
  end
end