CREATE TABLE spotters (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT,
  location TEXT,
  animal_id INTEGER -- foreign key
);

INSERT INTO spotters(name, location, animal_id)
  VALUES('Mikaela', 'Sydney', 4);

INSERT INTO spotters(name, location, animal_id)
  VALUES('Joel', 'Glasgow', 5);

INSERT INTO spotters(name, location, animal_id)
  VALUES('Olivia', 'Adelaide', 6);

INSERT INTO spotters(name, location, animal_id)
  VALUES('Robyn', 'Brisbane', 4);