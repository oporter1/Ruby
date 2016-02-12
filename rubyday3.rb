require"rspec"
require_relative "todolist.rb"


describe ToDoItem do

  #Story: As a developer, I can create a ToDoItem./
  it "creating a class ToDoItem" do
    expect{ToDoItem.new}.to_not raise_error
  end

  #Story: As a developer, I can give a ToDoItem a title and retrieve it.
  it "can be given a title" do
    item = ToDoItem.new
    expect{item.title = "myTitle"}.to_not raise_error
  end

  it "retrive the title" do
    item = ToDoItem.new
    item.title=("myTitle")
    expect(item.title).to eq "myTitle"
  end

  #Story: As a developer, I can give a ToDoItem a description and retrieve it.

  it "can be given a description" do
    item = ToDoItem.new
    expect{item.description = "myDescription"}.to_not raise_error

  end

  it "retrieve the description" do
    item = ToDoItem.new
    item.description = "myDescription"
    expect(item.description).to eq "myDescription"
  end

  #Story: As a developer, I can print a ToDoItem with field labels and values.
  it "can print" do
    item = ToDoItem.new
    item.title = "myTitle"
    item.description = "myDescription"

    expect(item.print).to be_a String
    expect(item.print).to include "Title: "
    expect(item.print).to include "myTitle"
    expect(item.print).to include "Description: "
    expect(item.print).to include "myDescription"
  end

#Story: As a developer, I can mark a ToDoItem done.
  it "is 'not done' when it's created" do
    item = ToDoItem.new
    expect(item.not_done).to eq false
  end

  it "can be marked done" do
    item = ToDoItem.new
    item.mark_done
    expect(item.mark_done).to eq true
  end

  #Story: When I print a ToDoItem, 'done' status is shown.
  it "prints done status" do
    item = ToDoItem.new
    item.mark_done
    item.printDone
    expect(item.printDone).to eq @mark_done
  end

end #ToDoItem end

describe ToDoList do
# Story: As a developer, I can add all of my ToDoItems to a ToDoList.
    it "can create a new ToDoList" do
      expect{ToDoList.new}.to_not raise_error
    end
    it "can add ToDoItems" do
      list=ToDoList.new
      list=to_do_item.new
      expect{list.add_item(to_do_item)}.to_not raise_error
    end

  #i can show the completed items
    # it "can show completed items" do
    #   list=ToDoList.new
    #   item= ToDoItem.new #this item is not done
    #   item.mark_done
    #   item2 = ToDoItem.new #this item is done
    #   list.add_item(item1)
    #   list.add_item(item2)
    #   item1.title="titleforitem1"
    #   item2.title="titleforitem2"
    #   item1.description="description1"
    #   item2.description="descritpion2"
    #   expect(list.show_completed).to eq "Title: title1 Description: description1 Title: Title2 Description: Description2"
    #
    # end

end
