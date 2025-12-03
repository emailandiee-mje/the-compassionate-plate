SELECT
  *,
  CASE
    WHEN food_product IN ( 
      'Beef (beef herd)', 
      'Beef (dairy herd)', 
      'Lamb & Mutton', 
      'Pig Meat', 
      'Poultry Meat', 
      'Milk', 'Cheese', 
      'Eggs', 
      'Fish (farmed)', 
      'Shrimps (farmed)' ) 
      THEN 'Animal-Based'
    ELSE 'Plant-Based'
END
  AS diet_category
FROM
  `compassionate_plate.raw_food_impact`
