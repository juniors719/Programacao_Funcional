soma list =
  if null list
    then 0
    else head list + soma (tail list)