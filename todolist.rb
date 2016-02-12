#Story: As a developer, I can create a ToDoItem.

class ToDoItem

  def initialize
    @not_done=false
  end

  def title=(title)
    @title=title
  end

  def title
    return @title
  end

  def description=(description)
    @description=description
  end

  def description
    return @description
  end

  def print
    return "Title: " + @title + " , Description: " + @description
  end

  def not_done
    return @not_done
  end

  def mark_done
    @mark_done=true
  end

  def printDone
    @printDone
  end

end

class ToDoList
  def initalize
    @item=[]
  end

  def add_item(to_do_item)
    @item<<to_do_item
  end
  #
  # def show_completed
  #   return @item.map{|to_do_item|to_do_item.print}
  # end
end
