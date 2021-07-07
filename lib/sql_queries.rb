def selects_all_female_bears_return_name_and_age
  
  "SELECT bears.name, bears.age 
  FROM bears
  WHERE bears.gender == 'F';"
  
end

def selects_all_bears_names_and_orders_in_alphabetical_order
  "SELECT bears.name FROM bears GROUP by bears.name"
end

def selects_all_bears_names_and_ages_that_are_alive_and_order_youngest_to_oldest
  "SELECT bears.name, bears.age FROM bears WHERE bears.alive == 1 GROUP by bears.age, bears.name"
end

def selects_oldest_bear_and_returns_name_and_age
  "SELECT bears.name, bears.age FROM bears WHERE bears.age == (select max(bears.age) from bears) AND bears.name is NOT NULL"
end

def select_youngest_bear_and_returns_name_and_age
  "SELECT bears.name, bears.age FROM bears WHERE bears.age == (select min(bears.age) from bears) AND bears.name is NOT NULL"
end

def selects_most_prominent_color_and_returns_with_count
  "SELECT bears.color, COUNT(bears.color) from bears WHERE bears.color == 'dark brown' group by bears.color"
end

def counts_number_of_bears_with_goofy_temperaments
  "SELECT COUNT(bears.temperament) from bears where bears.temperament == 'goofy'"
end

def selects_bear_that_killed_Tim
  "SELECT * from bears WHERE bears.temperament == 'aggressive'"
end
