class TodoList

  def initialize(array)
    @array = array
  end

  def get_items
    @array
  end

  def add_item(item)
    @array << item
  end

  def delete_item(item)
    @array.delete_at(@array.index(item))
  end

  def get_item(int)
    @array[int]
  end
end