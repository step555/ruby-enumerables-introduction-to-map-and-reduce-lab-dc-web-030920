def map_to_negativize(source_array)
  array = []
  source_array.length.times do |i| 
    array << source_array[i] * -1
  end
  array
end

#-----------------------------------------------------------------
def map_to_no_change(source_array)
  array = []
  i = 0
  
  while i < source_array.length
    array << source_array[i]
    i += 1
  end
  array
end

#-----------------------------------------------------------------
def map_to_double(source_array)
  array = []
  i = 0
  
  while i < source_array.length
    array << source_array[i] * 2
    i += 1
  end
  array
end

#-----------------------------------------------------------------
def map_to_square(source_array)
  array = []
  i = 0
  
  while i < source_array.length
    array << source_array[i] * source_array[i]
    i += 1
  end
  array
end

#-----------------------------------------------------------------
def reduce_to_total(source_array, starting_point = 0)
  
source_array.reduce(starting_point) { |sum, n| sum + n } 
end

#-----------------------------------------------------------------
def reduce_to_all_true(source_array)
  i = 0
  while i < source_array.length do
    if source_array[i] == false
      return false
    end
      i += 1
  end
  return true
end
#-----------------------------------------------------------------
def reduce_to_any_true(source_array)
  source_array.length.times do |i|
    if !source_array[i] == false
      return true
    end
    i += 1
  end
  return false
end