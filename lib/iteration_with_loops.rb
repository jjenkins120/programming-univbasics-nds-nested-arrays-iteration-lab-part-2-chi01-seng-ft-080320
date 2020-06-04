def find_min_in_nested_arrays(array_of_daily_temperatures)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  
  outer_results = []
  row_index = 0
  while row_index < array_of_daily_temperatures.count do
    element_index = 0
    lowest_temperatures = 100
    
    while element_index < array_of_daily_temperatures[row_index].count do
      if array_of_daily_temperatures[row_index][element_index] <= lowest_temperatures
        lowest_temperatures = array_of_daily_temperatures[row_index][element_index]
      end
      element_index += 1
    end
    
    outer_results << lowest_temperatures
    row_index += 1
  end
end