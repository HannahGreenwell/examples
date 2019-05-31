CREATE TABLE animals (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT,
  species TEXT,
  description TEXT,
  roundness INTEGER,
  alive BOOLEAN,
  age INTEGER,
  image_url TEXT
);

INSERT INTO animals(first_name, last_name, species, description, roundness, alive, age, image_url)
  VALUES(
      "Clarence", "Boddicker", "Human", "Baddie", 3, 0, 48, "http://fillmurray.com/300/300"
  );

INSERT INTO animals(first_name, last_name, species, description, roundness, alive, age, image_url)
  VALUES(
      "Ruby", "Tuesday", "Canine", "Ruby Mascot", 3, 0, 48, "http://fillmurray.com/400/400"
  );

INSERT INTO animals(first_name, last_name, species, description, roundness, alive, age, image_url)
  VALUES(
      "Kermit", "The Frog", "Frog", "Leader of the Muppets", 5, 1, 22, "http://fillmurray.com/350/350"
  );
