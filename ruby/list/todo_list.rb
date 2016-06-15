class TodoList

#creates list array 
def initialize(array)
    @list = array
end

#display items in list
def get_items
    @list
end

#adds and item to list array
def add_item(item)
    @list << item
end

#deletes and item from list array
def delete_item(item)
    @list.delete(item)
end

#display particular item, retrieved by index
def get_item(idx)
    @list.at(idx)
end

end
 