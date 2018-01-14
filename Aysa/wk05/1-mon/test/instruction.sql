CREATE TABLE MovieRecords (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255),
  description TEXT,
  year INTEGER,
  image_url TEXT
);
ALTER TABLE MovieRecords
  ADD rate text;