
CREATE DATABASE library_db;


USE library_db;


CREATE TABLE authors (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);


CREATE TABLE books (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    year_published INT,
    author_id INT,
    FOREIGN KEY (author_id) REFERENCES authors(id)
);


INSERT INTO authors (name)
VALUES
('J.K. Rowling'),
('George Orwell'),
('J.R.R. Tolkien');


INSERT INTO books (title, year_published, author_id)
VALUES
('Harry Potter and the Philosopher''s Stone', 1997, 1),
('1984', 1949, 2),
('The Hobbit', 1937, 3);


SELECT * FROM authors;


SELECT * FROM books;


SELECT books.title, books.year_published, authors.name
FROM books
JOIN authors
ON books.author_id = authors.id;