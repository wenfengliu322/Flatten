# flatten.rb
# Example Usage:
# [[1,2,[3]],4].flatten

class Array
  def flatten
    self
      .to_s # This turns the array into: "[[1,2,[3]],4]"
      .gsub(/[\[|\]]/ism, "") # Remove those brackets, so it's now: "1,2,3,4"
      .split(", ") # Now rejoin into a single array: ["1","2","3","4"]
      .map(&:to_i) # Convert all items in array back to integers: [1,2,3,4]
  end
end