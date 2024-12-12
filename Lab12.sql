-- Dropping tables 
DROP TABLE IF EXISTS Followers, Likes, Photos, Users;

-- Creating the Users table
CREATE TABLE Users (
   UserIdentification INT PRIMARY KEY,          
   Username CHAR(20) NOT NULL UNIQUE,        
   Createdate DATE                              
);

-- Creating the Photos table
CREATE TABLE Photos (
   PhotoId INT PRIMARY KEY,                   
   UserIdentification INT,                   
   ImageUrl CHAR(150),                         
   PublicationDate DATE,                      
   FOREIGN KEY (UserIdentification) REFERENCES Users(UserIdentification)  
);

-- Creating the Likes table 
CREATE TABLE Likes (
   UserIdentification INT,                       
   PhotoId INT,                                 
   DateOfLike DATE,                              
   PRIMARY KEY (UserIdentification, PhotoId),   
   FOREIGN KEY (UserIdentification) REFERENCES Users(UserIdentification),  
   FOREIGN KEY (PhotoId) REFERENCES Photos(PhotoId)  
);

-- Creating the Followers table 
CREATE TABLE Followers (
   FollowerId INT,                              
   FolloweeId INT,                             
   FollowDate TIMESTAMP,                        
   PRIMARY KEY (FollowerId, FolloweeId),      
   FOREIGN KEY (FollowerId) REFERENCES Users(UserIdentification),  
   FOREIGN KEY (FolloweeId) REFERENCES Users(UserIdentification)   
);

-- Inserting data into the Users table
INSERT INTO Users (UserIdentification, Username, Createdate) VALUES
(1, 'John', '2022-09-25'),
(2, 'Doe', '2024-06-27'),
(3, 'Jimmy', '2010-07-16'),
(4, 'Pol', '2008-11-11'),
(5, 'Colm', '2013-10-30'),
(6, 'Alice', '2021-03-15'),
(7, 'Bob', '2020-02-20'),
(8, 'Charlie', '2019-11-05'),
(9, 'Diana', '2018-04-12'),
(10, 'Eve', '2022-05-25'),
(11, 'Frank', '2020-07-30'),
(12, 'Grace', '2021-12-01'),
(13, 'Hannah', '2017-08-21'),
(14, 'Ivy', '2023-09-12'),
(15, 'Jack', '2016-10-14'),
(16, 'Mike', '2023-06-01'),
(17, 'Nina', NULL),                        
(18, 'Oscar', '2024-05-10'),
(19, 'Pam', '2023-07-20'),
(20, 'Newton', '2024-08-15'),           
(21, 'Quinn', '2023-09-05'),
(22, 'Ray', '2024-01-01'),
(23, 'Sara', '2024-02-01'),
(24, 'Tom', NULL),                          
(25, 'Uma', '2024-03-15');

-- Inserting data into the Photos table
INSERT INTO Photos (PhotoId, UserIdentification, ImageUrl, PublicationDate) VALUES 
(121, 1, '<img src="https://picsum.photos/id/237/200/300">', '2022-09-25'),
(353, 2, '<img src="https://picsum.photos/id/237/200/300">', '2016-06-20'),
(456, 3, '<img src="https://picsum.photos/id/237/200/300">', '2023-08-14'),
(782, 4, '<img src="https://picsum.photos/id/237/200/300">', '2013-11-11'),
(102, 5, '<img src="https://picsum.photos/id/237/200/300">', '2016-02-17'),
(201, 6, '<img src="https://picsum.photos/id/238/200/300">', '2022-03-20'),
(202, 7, '<img src="https://picsum.photos/id/239/200/300">', '2021-05-15'),
(203, 8, '<img src="https://picsum.photos/id/240/200/300">', '2019-06-10'),
(204, 9, '<img src="https://picsum.photos/id/241/200/300">', '2018-07-11'),
(205, 10, '<img src="https://picsum.photos/id/242/200/300">', '2023-01-01'),
(206, 11, '<img src="https://picsum.photos/id/243/200/300">', '2023-03-03'),
(207, 12, '<img src="https://picsum.photos/id/244/200/300">', '2020-08-08'),
(208, 13, '<img src="https://picsum.photos/id/245/200/300">', '2017-12-12'),
(209, 14, '<img src="https://picsum.photos/id/246/200/300">', '2023-02-02'),
(210, 15, '<img src="https://picsum.photos/id/247/200/300">', '2024-06-06'),
(211, 16, '<img src="https://picsum.photos/id/248/200/300">', '2023-06-02'),
(212, 17, '<img src="https://picsum.photos/id/249/200/300">', NULL),       
(213, 18, '<img src="https://picsum.photos/id/250/200/300">', '2024-05-11'),
(214, 19, NULL, '2023-07-21'),            
(215, 20, '<img src="https://picsum.photos/id/251/200/300">', '2024-08-16'),
(216, 21, '<img src="https://picsum.photos/id/252/200/300">', '2023-09-06'),
(217, 22, '<img src="https://picsum.photos/id/253/200/300">', NULL),        
(218, 23, '<img src="https://picsum.photos/id/254/200/300">', '2024-02-02'),
(219, 24, '<img src="https://picsum.photos/id/255/200/300">', '2024-03-16'),
(220, 25, NULL, '2024-04-20'),
(221, 22, '<img src="https://picsum.photos/id/253/200/300">', NULL);  

-- Inserting data into the Likes table
INSERT INTO Likes (UserIdentification, PhotoId, DateOfLike) VALUES 
(1, 121, '2022-09-25'),
(2, 353, '2016-06-20'),
(3, 456, '2023-08-14'),
(4, 782, '2013-11-11'),
(5, 102, '2016-02-17'),
(1, 201, '2023-03-01'),
(6, 202, '2022-06-15'),
(7, 203, '2021-07-20'),
(8, 204, '2020-08-25'),
(9, 205, '2023-04-05'),
(10, 206, '2022-10-30'),
(11, 207, '2021-12-20'),
(12, 208, '2020-05-25'),
(13, 209, '2023-01-15'),
(14, 210, '2024-07-01'),
(15, 121, '2022-08-30'),
(16, 211, '2023-06-01'),
(17, 212, '2023-06-10'),
(18, 213, '2024-05-12'),
(19, 214, '2023-07-22'),
(20, 215, '2024-08-17'),
(16, 216, '2023-06-03'), 
(17, 217, '2023-06-11'),
(18, 218, '2024-05-13'),
(19, 219, '2023-07-23'),  
(20, 220, '2024-08-18');  

-- Inserting data into the Followers table
INSERT INTO Followers (FollowerId, FolloweeId, FollowDate) VALUES 
(1, 2, '2023-01-01 10:00:00'),
(2, 3, '2023-02-01 12:30:00'),
(3, 4, '2023-03-15 14:45:00'),
(4, 5, '2023-04-20 09:15:00'),
(5, 1, '2023-05-10 11:00:00'),
(6, 1, '2023-06-12 08:00:00'),
(7, 2, '2023-07-22 14:00:00'),
(8, 3, '2023-08-14 13:00:00'),
(9, 4, '2023-09-15 11:30:00'),
(10, 5, '2023-10-10 09:45:00'),
(11, 6, '2023-11-11 16:20:00'),
(12, 7, '2023-12-12 15:30:00'),
(13, 8, '2024-01-13 12:00:00'),
(14, 9, '2024-02-14 11:15:00'),
(15, 10, '2024-03-15 10:30:00'),
(16, 17, '2023-10-01 10:00:00'),
(17, 18, '2023-10-02 12:30:00'),
(18, 19, '2023-10-03 14:45:00'),
(19, 20, '2023-10-04 09:15:00'),
(20, 21, '2023-10-05 11:00:00'),
(21, 16, '2023-10-06 08:00:00'),  -- User liking their own photo
(22, 17, '2023-10-07 14:00:00'),
(23, 18, '2023-10-08 13:00:00'),
(24, 19, '2023-10-09 11:30:00'),
(25, 20, '2023-10-10 09:45:00');


-- Selecting data 
SELECT * FROM Users;
SELECT * FROM Photos;
SELECT * FROM Likes;
SELECT * FROM Followers;

-- Retrieve the usernames of users who liked a specific photo id 
SELECT 
      Users.Username
FROM 
      Likes 
JOIN 
      Users 
ON 
      Likes.UserIdentification = Users.UserIdentification
WHERE 
      Likes.PhotoId = 121;

-- Retrieve the usernames of users who follow a specific user 
SELECT 
      Users.Username
FROM 
      Followers 
JOIN 
      Users ON Followers.FollowerId = Users.UserIdentification
WHERE 
      Followers.FolloweeId = 3;

-- Retrieve the usernames of users who liked a photo before a specific date 
SELECT 
      Users.Username
FROM 
      Likes 
JOIN 
      Users ON Likes.UserIdentification = Users.UserIdentification
WHERE 
      Likes.DateOfLike < '2023-01-01';
      
-- LAB 5 --
-- Q1
SELECT Users.Username
FROM Users
JOIN Followers ON Users.UserIdentification = Followers.FolloweeId
GROUP BY Users.UserIdentification
HAVING COUNT(Followers.FollowerId) > 0;

--Q2
SELECT Photos.ImageUrl
FROM Likes
JOIN Photos ON Likes.PhotoId = Photos.PhotoId
WHERE Likes.UserIdentification = 6;  

--Q3
SELECT Users.Username
FROM Users
LEFT JOIN Photos ON Users.UserIdentification = Photos.UserIdentification
WHERE Photos.PhotoId IS NULL;

--Q4
SELECT DISTINCT Users.Username
FROM Likes
JOIN Photos ON Likes.PhotoId = Photos.PhotoId
JOIN Users ON Likes.UserIdentification = Users.UserIdentification
WHERE Likes.UserIdentification = Photos.UserIdentification;

--Q5
SELECT DISTINCT Users.Username
FROM Users
JOIN Photos ON Users.UserIdentification = Photos.UserIdentification
LEFT JOIN Likes ON Photos.PhotoId = Likes.PhotoId
WHERE Likes.PhotoId IS NULL;

--Q6
SELECT DISTINCT Users.Username
FROM Users
JOIN Photos ON Users.UserIdentification = Photos.UserIdentification
JOIN Likes ON Photos.PhotoId = Likes.PhotoId;

--Q7
SELECT Users.Username
FROM Users
WHERE LENGTH(Users.Username) > 10;

--Q8
SELECT Users.Username
FROM Users
WHERE Users.Username LIKE '%n';

--Q9
UPDATE Users
SET Username = REPLACE(Username, 'John', 'Jonathan');

-- Lab 5 --

-- Lab 9 --

--Q1
SELECT 
   Users.Username AS "Username",
   COUNT(Photos.PhotoId) AS "Number of photos"
FROM 
   Users
LEFT JOIN 
   Photos ON Users.UserIdentification = Photos.UserIdentification
GROUP BY 
   Users.UserIdentification
ORDER BY 
   "Number of photos" DESC;
   
--Q2
SELECT 
   PhotoId,
   COUNT(UserIdentification) AS "Number of likes"
FROM 
   Likes
GROUP BY 
   PhotoId
ORDER BY 
   "Number of likes" DESC;

--Q3
SELECT 
   Users.Username AS "Username",
   TO_CHAR(Photos.PublicationDate, 'DD/MM/YYYY') AS "Earliest Photo Date"
FROM 
   Photos
JOIN 
   Users ON Photos.UserIdentification = Users.UserIdentification
ORDER BY 
   Photos.PublicationDate ASC;



-- Lab 9 --
  
-- Lab 10 --
-- Postgre Index --

--Q1

  
  -- Drop index if exitsts
DROP INDEX IF EXISTS idx_username;

-- Create index
CREATE INDEX idx_username ON Users(Username);

SELECT * FROM Users WHERE Username = 'John';

DROP INDEX IF EXISTS idx_username;
EXPLAIN ANALYZE SELECT * FROM Users WHERE Username = 'John';

CREATE INDEX idx_username ON Users(Username);
EXPLAIN ANALYZE SELECT * FROM Users WHERE Username = 'John';

--Q2

-- Drop the index if it already exists
DROP INDEX IF EXISTS idx_publication_date;

-- Create an index 
CREATE INDEX idx_publication_date ON Photos(PublicationDate);

SELECT * FROM Photos ORDER BY PublicationDate DESC;
-- Drop the index
DROP INDEX IF EXISTS idx_publication_date;

-- Analyze query performance without the index
EXPLAIN ANALYZE SELECT * FROM Photos ORDER BY PublicationDate DESC;
-- Recreate the index
CREATE INDEX idx_publication_date ON Photos(PublicationDate);

-- Analyze query performance with the index
EXPLAIN ANALYZE SELECT * FROM Photos ORDER BY PublicationDate DESC;


-- Postgre Set Operations

--Q1

WITH TargetUser AS (
   SELECT UserIdentification
   FROM Users
   WHERE Username = 'Alice'
)
SELECT DISTINCT Username
FROM Users
WHERE UserIdentification IN (
   -- Users who follow the target user
   SELECT FollowerId
   FROM Followers
   WHERE FolloweeId = (SELECT UserIdentification FROM TargetUser)
   UNION
   -- Users who are followed by the target user
   SELECT FolloweeId
   FROM Followers
   WHERE FollowerId = (SELECT UserIdentification FROM TargetUser)
);


--Q2

-- Retrieve User IDs that are common to Likes and Followers tables
SELECT UserIdentification
FROM Likes
INTERSECT
SELECT FollowerId
FROM Followers;


-- Lab12 --

CREATE OR REPLACE FUNCTION auto_follow()
RETURNS TRIGGER AS $$
BEGIN
   INSERT INTO Followers (FollowerId, FolloweeId, FollowDate)
   VALUES (NEW.UserIdentification, (SELECT UserIdentification FROM Photos WHERE PhotoId = NEW.PhotoId), NOW())
   RETURN NEW;
END;
$$ LANGUAGE plpgsql;
CREATE TRIGGER auto_follow_trigger
AFTER INSERT ON Likes
FOR EACH ROW
EXECUTE FUNCTION auto_follow();

-- User 3 likes a photo uploaded by User 2
INSERT INTO Likes (UserIdentification, PhotoId, DateOfLike) VALUES (3, 353, '2023-12-01');

-- User 4 likes a photo uploaded by User 5
INSERT INTO Likes (UserIdentification, PhotoId, DateOfLike) VALUES (4, 782, '2023-12-02');

-- User 1 likes a photo uploaded by User 10
INSERT INTO Likes (UserIdentification, PhotoId, DateOfLike) VALUES (1, 205, '2023-12-03');

SELECT * FROM Followers;


