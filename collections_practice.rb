def sort_array_asc(array)
  return array.sort
end


def sort_array_desc(array)
  return array.sort do |a, b|
    b <=> a
  end
end


def sort_array_char_count(array)
  return array.sort do |a, b|
    a.length <=> b.length
  end
end


def swap_elements(array)
  if array.size > 2
    hold = array[1]
    array[1] = array[2]
    array[2] = hold
  end
  
  return array
end


def reverse_array(array)
  reverse = []
  array.each do |element|
    reverse.unshift(element)
  end
  
  return reverse
end


def kesha_maker(array)
  array.each do |element|
    if element.is_a?(String)
      element[2] = "$"
    end
  end
  
  return array
end


def find_a(array)
  return array.select do |element|
    element.start_with?("a")
  end
end


def sum_array(array)
  return array.inject do |sum, element|
    sum + element
  end
end


def add_s(array)
  return array.each_with_index.collect do |element, index|
    element << "s" unless index = 1
  end
end
