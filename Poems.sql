--SELECT * FROM Grade;


--SELECT * FROM Emotion;


--SELECT COUNT(Id) AS NumPoems FROM Poem;


--SELECT TOP 76 Name
--FROM Author
--ORDER BY Name;


--SELECT TOP 76 a.Name AS Author, g.Name AS Grade
--FROM Author a
--JOIN Grade g ON g.Id = a.GradeId
--ORDER BY a.Name;


--SELECT TOP 76 a.Name AS Author, g.Name AS Grade, gen.Name AS Gender
--FROM Author a
--JOIN Grade g ON g.Id = a.GradeId
--JOIN Gender gen ON gen.Id = a.GenderId
--ORDER BY a.Name;


--SELECT SUM(WordCount) AS TotalWords FROM Poem;


--SELECT Id, Title, CharCount
--FROM Poem
--WHERE CharCount = (SELECT MIN(CharCount) FROM Poem);


--SELECT COUNT(Id) AS AuthorsInThird
--FROM Author
--WHERE GradeId = 3;


--SELECT COUNT(Id) AS AuthorsBelowFourth
--FROM Author
--WHERE GradeId < 4;


--SELECT Count(p.Id) AS PoemsByFourth
--FROM Poem p
--JOIN Author a ON a.Id = p.AuthorId
--WHERE a.GradeId = 4;


--SELECT g.Name, COUNT(p.Id) AS PoemsPerGrade 
--FROM Poem p
--JOIN Author a ON a.Id = p.AuthorId
--JOIN Grade g ON g.Id = a.GradeId
--GROUP BY g.Name;


--SELECT g.Name, COUNT(a.Id) AS AuthorCount
--FROM Author a
--JOIN Grade g ON g.Id = a.GradeId
--GROUP BY g.Name
--ORDER BY g.Name;


--SELECT Title
--FROM Poem
--WHERE WordCount = (SELECT MAX(WordCount) FROM Poem);


--SELECT AuthorId, COUNT(Id) AS NumPoems
--FROM Poem
--GROUP BY AuthorId
--ORDER BY COUNT(Id) DESC;


--SELECT COUNT(PoemId) AS NumSadPoems
--FROM PoemEmotion
--WHERE EmotionId = 3;


--SELECT COUNT(p.Id) AS EmotionlessPoems
--FROM Poem p
--LEFT JOIN PoemEmotion pe ON p.Id = pe.PoemId
--WHERE pe.PoemId IS NULL;


--SELECT e.Name, COUNT(EmotionId) AS NumPoems
--FROM PoemEmotion p
--JOIN Emotion e ON e.Id = p.EmotionId
--GROUP BY e.Name
--ORDER BY COUNT(EmotionId);


--SELECT g.Name, COUNT(p.Id) AS NumJoyPoems
--FROM Poem p
--JOIN Author a ON p.AuthorId = a.Id
--JOIN Grade g ON g.Id = a.GradeId
--JOIN PoemEmotion pe ON pe.PoemId = p.Id
--JOIN Emotion e ON e.Id = pe.EmotionId
--WHERE e.Name = 'Joy'
--GROUP BY g.Name
--ORDER BY COUNT(p.Id) DESC;


--SELECT g.Name, COUNT(p.Id) AS NumJoyPoems
--FROM Poem p
--JOIN Author a ON p.AuthorId = a.Id
--JOIN Gender g ON g.Id = a.GenderId
--JOIN PoemEmotion pe ON pe.PoemId = p.Id
--JOIN Emotion e ON e.Id = pe.EmotionId
--WHERE e.Name = 'Fear'
--GROUP BY g.Name
--ORDER BY COUNT(p.Id);