# using ruby test recursion

require 'pry'

def add_up(n)
  if(n.length <= 0)
    return 0
  else
   ((n.first) + (add_up(rest(n))))
  end
end

def rest(n, option=0)
  if(n.length == 0)
    n
  else
    n[(1+option)..-1]
  end
end

def all_oddp(n)
  return true if(n.empty?)

  if(n.first.even?)
    false
  else
    all_oddp(rest(n))
  end
end

def extra_number(nums)
  if (nums.empty?)
    return 0
  elsif (nums.first.is_a?(Integer))
      (nums.first + extra_number(rest(nums)))
  else
    extra_number(rest(nums))
  end
end


puts extra_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, "hello", "world", "foo", "bar", "baz", 1])
