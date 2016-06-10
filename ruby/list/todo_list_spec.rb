require_relative 'TodoList'

describe TodoList do
  let(:list) { TodoList.new(["do the dishes", "mow the lawn"]) }

  #take the initialized list and and displays the items that were added to it
  it "stores the list items given on initialization" do
    expect(list.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  #adds an item to the list array
  it "adds an item to the list" do
    list.add_item("mop")
    expect(list.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  #deletes an item from the list array
  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(list.get_items).to eq ["mow the lawn"]
  end

  #displays a particular item by using it's index to call it
  it "retrieves an item by index" do
    expect(list.get_item(0)).to eq "do the dishes"
  end
end


