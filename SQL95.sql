-- Big Countries

SELECT World.name, World.population, World.area
FROM World
WHERE World.population >= 25000000 OR area >= 3000000;