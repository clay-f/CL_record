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

puts all_oddp([1, 3, 5, 7, 9, 11, 13, 17, 19, 15, 2])
