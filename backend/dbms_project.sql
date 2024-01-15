create table quiz_user
(
  user_name varchar2(20),
  user_id int constraint quiz_user_pk primary key,
  user_password varchar2(20)
);

create table quiz
(
  quiz_id int constraint quiz_pk primary key,
  quiz_name varchar2(1000),
  quiz_category varchar2(100),
  topic_id int constraint fk_topic_id references quiz_topics(topic_id)
);


create table quiz_topics
(
 topic_id int constraint topic_pk primary key,
 topic_name varchar2(1000) unique
);


create table questions
(
  que_id int constraint questions_pk primary key,
  quiz_id int,
  text varchar2(4000),
  que_type varchar2(10),
  points int
);

create table question_options
(
  option_id int constraint question_options_pk primary key,
  question_id int,
  option_text varchar(4000),
  is_correct number(1)
);

create table answers
(
  ans_id int constraint answers_pk primary key,
  quiz_id int,
  question_id int,
  option_id int,
  text_ans varchar2(4000),
  correct_ans number(1),
  foreign key (quiz_id) references quiz(quiz_id),
  foreign key (question_id)  references questions(que_id),
  foreign key (option_id) references question_options(option_id)
);

insert into quiz_user values('rakshita',1,'01fe22bcs035');
insert into quiz_user values('shrusti',2,'01fe22bcs036');
insert into quiz_user values('shreya',3,'01fe22bcs030');
insert into quiz_user values('rakshita',4,'01fe22bcs037');

--------------------------------------------------------------------------

insert into quiz_topics values (1,'Database Management system');
insert into quiz_topics values (2,'Data Structures and Algorithm');
insert into quiz_topics values (3,'Computer Organization and Architecture');
insert into quiz_topics values (4,'Graph Theory and Linear Algebra');
insert into quiz_topics values (5,'Discrete Mathematical Structures');

----------------------------------------------------------------------------

insert into quiz values(1,'DBMS Quiz','Computer Science',1);
insert into quiz values(2,'COA Quiz','Computer Science',2);
insert into quiz values(3,'DSA Quiz','Computer Science',3);
insert into quiz values(4,'GTLA Quiz','Mathematics',4);
insert into quiz values(5,'DMS Quiz','Mathematics',4);

-----------------------------------------------------------------------------

select * from quiz;
select * from quiz_topics;
select * from quiz_user;

-------------------------------------------------------------------------------

INSERT INTO questions VALUES (1, 1, 'What does SQL stand for?', 'MCQ', 5);
INSERT INTO questions VALUES (2, 1, 'What is the primary source of database management system', 'MCQ', 5);
INSERT INTO questions VALUES (3, 1, 'Which of the following is an example of a relational database', 'MCQ', 5);
INSERT INTO questions VALUES (4, 1, 'What is normalization in the context of databases', 'MCQ', 5);
INSERT INTO questions VALUES (5, 1, 'Which SQL statement is used to retrieve data from a database?', 'MCQ', 5);
INSERT INTO questions VALUES (6, 1, 'In a relational database, what is a foreign key?', 'MCQ', 5);
INSERT INTO questions VALUES (7, 1, 'What is the purpose of the SQL GROUP BY clause?', 'MCQ', 5);
INSERT INTO questions VALUES (8, 1, 'Which normal form deals with the removal of partial dependencies?', 'MCQ', 5);
INSERT INTO questions VALUES (9, 1, 'What does ACID stand for in the context of database transactions?', 'MCQ', 5);
INSERT INTO questions VALUES (10, 1, 'In SQL, which JOIN type returns all rows when there is a match in either table?', 'MCQ', 5);
INSERT INTO questions VALUES (11, 1, 'What is the purpose of the SQL HAVING clause?', 'MCQ', 5);
INSERT INTO questions VALUES (12, 1, 'In a relational database, what is the purpose of the FOREIGN KEY constraint?', 'MCQ', 5);
INSERT INTO questions VALUES (13, 1, 'Which of the following is not a type of database model?', 'MCQ', 5);
INSERT INTO questions VALUES (14, 1, 'What is the purpose of the SQL ORDER BY clause?', 'MCQ', 5);
INSERT INTO questions VALUES (15, 1, 'What is the purpose of the SQL DISTINCT keyword?', 'MCQ', 5);
INSERT INTO questions VALUES (16, 1, 'Which SQL operator is used to combine the result sets of two SELECT statements?', 'MCQ', 5);
INSERT INTO questions VALUES (17, 1, 'In the context of database normalization, what is the Boyce-Codd Normal Form (BCNF)?', 'MCQ', 5);
INSERT INTO questions VALUES (18, 1, 'What is the purpose of the SQL TRUNCATE statement?', 'MCQ', 5);
INSERT INTO questions VALUES (19, 1, 'What is the purpose of the SQL DML (Data Manipulation Language) statements?', 'MCQ', 5);
INSERT INTO questions VALUES (20, 1, 'What is the difference between UNION and UNION ALL in SQL?', 'MCQ', 5);

INSERT INTO questions VALUES (21, 2, 'What is the primary goal of computer organization?', 'MCQ', 5);
INSERT INTO questions VALUES (22, 2, 'Which component of the CPU performs arithmetic and logic operations?', 'MCQ', 5);
INSERT INTO questions VALUES (23, 2, 'What is the purpose of the control unit in a CPU?', 'MCQ', 5);
INSERT INTO questions VALUES (24, 2, 'Which memory type is volatile and loses its content when power is turned off?', 'MCQ', 5);
INSERT INTO questions VALUES (25, 2, 'What is the role of the cache memory in a computer system?', 'MCQ', 5);
INSERT INTO questions VALUES (26, 2, 'Which addressing mode is used in the instruction "MOV A, #25" in assembly language?', 'MCQ', 5);
INSERT INTO questions VALUES (27, 2, 'What is the purpose of the clock signal in a computer system?', 'MCQ', 5);
INSERT INTO questions VALUES (28, 2, 'Which organization of a computer system is responsible for handling I/O operations?', 'MCQ', 5);
INSERT INTO questions VALUES (29, 2, 'What is the function of the ALU (Arithmetic Logic Unit) in a CPU?', 'MCQ', 5);
INSERT INTO questions VALUES (30, 2, 'Which architecture uses a single bus for both data and instructions?', 'MCQ', 5);
INSERT INTO questions VALUES (31, 2, 'What is the role of the program counter in a CPU?', 'MCQ', 5);
INSERT INTO questions VALUES (32, 2, 'Which type of memory is used to store intermediate data during program execution?', 'MCQ', 5);
INSERT INTO questions VALUES (33, 2, 'In a pipelined processor, what is the purpose of the instruction fetch stage?', 'MCQ', 5);
INSERT INTO questions VALUES (34, 2, 'Which addressing mode is used in the instruction "LDA $5000" in assembly language?', 'MCQ', 5);
INSERT INTO questions VALUES (35, 2, 'What is the purpose of the interrupt vector in a computer system?', 'MCQ', 5);
INSERT INTO questions VALUES (36, 2, 'Which storage medium provides the fastest access speed?', 'MCQ', 5);
INSERT INTO questions VALUES (37, 2, 'What is the role of the memory controller in a computer system?', 'MCQ', 5);
INSERT INTO questions VALUES (38, 2, 'Which bus is responsible for transferring data between the CPU and memory?', 'MCQ', 5);
INSERT INTO questions VALUES (39, 2, 'What is the purpose of the MAR (Memory Address Register) in a computer system?', 'MCQ', 5);
INSERT INTO questions VALUES (40, 2, 'Which instruction set architecture is commonly used in modern desktop computers?', 'MCQ', 5);

INSERT INTO questions VALUES (41, 3, 'What is the time complexity of binary search in a sorted array?', 'MCQ', 5);
INSERT INTO questions VALUES (42, 3, 'Which data structure is best suited for implementing a stack?', 'MCQ', 5);
INSERT INTO questions VALUES (43, 3, 'What is the purpose of dynamic programming in algorithms?', 'MCQ', 5);
INSERT INTO questions VALUES (44, 3, 'In which scenario is a priority queue most useful?', 'MCQ', 5);
INSERT INTO questions VALUES (45, 3, 'What is the primary advantage of using a hash table for data storage?', 'MCQ', 5);
INSERT INTO questions VALUES (46, 3, 'Which sorting algorithm has the best average-case time complexity?', 'MCQ', 5);
INSERT INTO questions VALUES (47, 3, 'What is the role of a linked list in data structures?', 'MCQ', 5);
INSERT INTO questions VALUES (48, 3, 'Which searching algorithm works on the principle of divide and conquer?', 'MCQ', 5);
INSERT INTO questions VALUES (49, 3, 'What is the purpose of the BFS (Breadth-First Search) algorithm?', 'MCQ', 5);
INSERT INTO questions VALUES (50, 3, 'In which scenario is a greedy algorithm most appropriate?', 'MCQ', 5);
INSERT INTO questions VALUES (51, 3, 'What is the time complexity of the quicksort algorithm in the worst case?', 'MCQ', 5);
INSERT INTO questions VALUES (52, 3, 'Which data structure is suitable for representing a hierarchical relationship between elements?', 'MCQ', 5);
INSERT INTO questions VALUES (53, 3, 'What is the primary advantage of using a tree data structure?', 'MCQ', 5);
INSERT INTO questions VALUES (54, 3, 'In which scenario is the Dijkstra algorithm commonly used?', 'MCQ', 5);
INSERT INTO questions VALUES (55, 3, 'What is the purpose of the merge sort algorithm?', 'MCQ', 5);
INSERT INTO questions VALUES (56, 3, 'Which data structure is used for efficient searching in a dictionary?', 'MCQ', 5);
INSERT INTO questions VALUES (57, 3, 'What is the time complexity of the bubble sort algorithm?', 'MCQ', 5);
INSERT INTO questions VALUES (58, 3, 'In which scenario is a hash table not suitable for data storage?', 'MCQ', 5);
INSERT INTO questions VALUES (59, 3, 'What is the purpose of the Bellman-Ford algorithm?', 'MCQ', 5);
INSERT INTO questions VALUES (60, 3, 'Which sorting algorithm has the best time complexity in the best-case scenario?', 'MCQ', 5);


INSERT INTO questions VALUES (61, 4, 'What is a graph in graph theory?', 'MCQ', 5);
INSERT INTO questions VALUES (62, 4, 'In a graph, what is the degree of a vertex?', 'MCQ', 5);
INSERT INTO questions VALUES (63, 4, 'What is the purpose of the adjacency matrix in graph representation?', 'MCQ', 5);
INSERT INTO questions VALUES (64, 4, 'Which algorithm is used for finding the shortest path in a weighted graph?', 'MCQ', 5);
INSERT INTO questions VALUES (65, 4, 'What is a tree in graph theory?', 'MCQ', 5);
INSERT INTO questions VALUES (66, 4, 'Which linear algebra concept is related to eigenvectors and eigenvalues?', 'MCQ', 5);
INSERT INTO questions VALUES (67, 4, 'What is the determinant of a 2x2 matrix?', 'MCQ', 5);
INSERT INTO questions VALUES (68, 4, 'In linear algebra, what is the dot product of two vectors?', 'MCQ', 5);
INSERT INTO questions VALUES (69, 4, 'What is the rank of a matrix?', 'MCQ', 5);
INSERT INTO questions VALUES (70, 4, 'In a graph, what is a cycle?', 'MCQ', 5);
INSERT INTO questions VALUES (71, 4, 'Which algorithm is used for topological sorting in a directed acyclic graph (DAG)?', 'MCQ', 5);
INSERT INTO questions VALUES (72, 4, 'What is the purpose of the Laplacian matrix in graph theory?', 'MCQ', 5);
INSERT INTO questions VALUES (73, 4, 'In linear algebra, what is the transpose of a matrix?', 'MCQ', 5);
INSERT INTO questions VALUES (74, 4, 'Which property defines a bipartite graph?', 'MCQ', 5);
INSERT INTO questions VALUES (75, 4, 'What is the eigenvalue of the identity matrix?', 'MCQ', 5);
INSERT INTO questions VALUES (76, 4, 'In a graph, what is the eccentricity of a vertex?', 'MCQ', 5);
INSERT INTO questions VALUES (77, 4, 'What is the Jordan normal form in linear algebra?', 'MCQ', 5);
INSERT INTO questions VALUES (78, 4, 'In a graph, what is the chromatic number?', 'MCQ', 5);
INSERT INTO questions VALUES (79, 4, 'Which algorithm is used for finding the strongly connected components in a directed graph?', 'MCQ', 5);
INSERT INTO questions VALUES (80, 4, 'What is the characteristic polynomial of a square matrix?', 'MCQ', 5);


INSERT INTO questions VALUES (81, 5, 'What is the main focus of discrete mathematics?', 'MCQ', 5);
INSERT INTO questions VALUES (82, 5, 'In set theory, what does the union of two sets represent?', 'MCQ', 5);
INSERT INTO questions VALUES (83, 5, 'What is the cardinality of an empty set?', 'MCQ', 5);
INSERT INTO questions VALUES (84, 5, 'In propositional logic, what is the negation of the statement "P AND Q"?', 'MCQ', 5);
INSERT INTO questions VALUES (85, 5, 'How many edges does a complete graph with n vertices have?', 'MCQ', 5);
INSERT INTO questions VALUES (86, 5, 'What is the principle of inclusion-exclusion used for?', 'MCQ', 5);
INSERT INTO questions VALUES (87, 5, 'In combinatorics, what does n choose k represent?', 'MCQ', 5);
INSERT INTO questions VALUES (88, 5, 'What is the purpose of the pigeonhole principle in combinatorics?', 'MCQ', 5);
INSERT INTO questions VALUES (89, 5, 'What is the definition of a function in mathematics?', 'MCQ', 5);
INSERT INTO questions VALUES (90, 5, 'In graph theory, what is the chromatic index of a graph?', 'MCQ', 5);
INSERT INTO questions VALUES (91, 5, 'What is the modulus of -5?', 'MCQ', 5);
INSERT INTO questions VALUES (92, 5, 'In combinatorics, what is the product rule used for?', 'MCQ', 5);
INSERT INTO questions VALUES (93, 5, 'What is the formula for the number of permutations of n distinct items?', 'MCQ', 5);
INSERT INTO questions VALUES (94, 5, 'In set theory, what is the complement of a set A denoted by?', 'MCQ', 5);
INSERT INTO questions VALUES (95, 5, 'What is the binary representation of the decimal number 13?', 'MCQ', 5);
INSERT INTO questions VALUES (96, 5, 'What is the truth value of the statement "P OR NOT P"?', 'MCQ', 5);
INSERT INTO questions VALUES (97, 5, 'How many vertices does a complete bipartite graph K(m, n) have?', 'MCQ', 5);
INSERT INTO questions VALUES (98, 5, 'What is the definition of a connected graph?', 'MCQ', 5);
INSERT INTO questions VALUES (99, 5, 'In modular arithmetic, what is the additive inverse of 7 (mod 5)?', 'MCQ', 5);
INSERT INTO questions VALUES (100, 5, 'What is the cardinality of the power set of a set with n elements?', 'MCQ', 5);
----------------------------------------------------------------------------------------------------------------------------


INSERT INTO question_options VALUES (1, 1, 'Structured Query Language', 1);
INSERT INTO question_options VALUES (2, 1, 'Simple Query Language', 0);
INSERT INTO question_options VALUES (3, 1, 'Sequential Query Language', 0);
INSERT INTO question_options VALUES (4, 1, 'Systematic Query Language', 0);
INSERT INTO question_options VALUES (5, 2, 'Data', 0);
INSERT INTO question_options VALUES (6, 2, 'Software', 1);
INSERT INTO question_options VALUES (7, 2, 'Hardware', 0);
INSERT INTO question_options VALUES (8, 2, 'Information', 0);
INSERT INTO question_options VALUES (9, 3, 'Excel', 0);
INSERT INTO question_options VALUES (10, 3, 'MySQL', 1);
INSERT INTO question_options VALUES (11, 3, 'XML', 0);
INSERT INTO question_options VALUES (12, 3, 'JSON', 0);
INSERT INTO question_options VALUES (13, 4, 'Adding redundancy to data', 0);
INSERT INTO question_options VALUES (14, 4, 'Removing redundancy from data', 1);
INSERT INTO question_options VALUES (15, 4, 'Organizing data in a random manner', 0);
INSERT INTO question_options VALUES (16, 4, 'Storing data without any structure', 0);
INSERT INTO question_options VALUES (17, 5, 'SELECT FROM', 0);
INSERT INTO question_options VALUES (18, 5, 'RETRIEVE FROM', 0);
INSERT INTO question_options VALUES (19, 5, 'EXTRACT FROM', 0);
INSERT INTO question_options VALUES (20, 5, 'SELECT * FROM', 1);
INSERT INTO question_options VALUES (21, 6, 'A primary key from another table', 1);
INSERT INTO question_options VALUES (22, 6, 'A primary key in the same table', 0);
INSERT INTO question_options VALUES (23, 6, 'A unique key in the same table', 0);
INSERT INTO question_options VALUES (24, 6, 'An indexed column in the same table', 0);
INSERT INTO question_options VALUES (25, 7, 'To filter the result set based on specified conditions', 1);
INSERT INTO question_options VALUES (26, 7, 'To group rows based on common values in specified columns', 0);
INSERT INTO question_options VALUES (27, 7, 'To order the result set in ascending order', 0);
INSERT INTO question_options VALUES (28, 7, 'To perform mathematical calculations on numeric columns', 0);
INSERT INTO question_options VALUES (29, 8, 'First Normal Form (1NF)', 0);
INSERT INTO question_options VALUES (30, 8, 'Second Normal Form (2NF)', 0);
INSERT INTO question_options VALUES (31, 8, 'Third Normal Form (3NF)', 1);
INSERT INTO question_options VALUES (32, 8, 'Fourth Normal Form (4NF)', 0);
INSERT INTO question_options VALUES (33, 9, 'Atomicity, Consistency, Isolation, Durability', 1);
INSERT INTO question_options VALUES (34, 9, 'All Columns In Database', 0);
INSERT INTO question_options VALUES (35, 9, 'Advanced Control of Information Database', 0);
INSERT INTO question_options VALUES (36, 9, 'All Columns In Data', 0);
INSERT INTO question_options VALUES (37, 10, 'INNER JOIN', 0);
INSERT INTO question_options VALUES (38, 10, 'OUTER JOIN', 0);
INSERT INTO question_options VALUES (39, 10, 'CROSS JOIN', 0);
INSERT INTO question_options VALUES (40, 10, 'FULL JOIN', 1);
INSERT INTO question_options VALUES (41, 11, 'To filter the result set based on specified conditions', 0);
INSERT INTO question_options VALUES (42, 11, 'To group rows based on common values in specified columns', 0);
INSERT INTO question_options VALUES (43, 11, 'To order the result set in ascending order', 0);
INSERT INTO question_options VALUES (44, 11, 'To filter the result set after grouping', 1);
INSERT INTO question_options VALUES (45, 12, 'To enforce referential integrity between tables', 1);
INSERT INTO question_options VALUES (46, 12, 'To order the result set based on specified conditions', 0);
INSERT INTO question_options VALUES (47, 12, 'To group rows based on common values in specified columns', 0);
INSERT INTO question_options VALUES (48, 12, 'To filter the result set in descending order', 0);
INSERT INTO question_options VALUES (49, 13, 'Relational Database Model', 0);
INSERT INTO question_options VALUES (50, 13, 'Document-Oriented Database Model', 0);
INSERT INTO question_options VALUES (51, 13, 'Graph Database Model', 0);
INSERT INTO question_options VALUES (52, 13, 'Spatial Database Model', 1);
INSERT INTO question_options VALUES (53, 14, 'To filter the result set based on specified conditions', 0);
INSERT INTO question_options VALUES (54, 14, 'To group rows based on common values in specified columns', 0);
INSERT INTO question_options VALUES (55, 14, 'To order the result set in ascending order', 0);
INSERT INTO question_options VALUES (56, 14, 'To order the result set based on specified columns', 1);
INSERT INTO question_options VALUES (57, 15, 'To filter the result set based on specified conditions', 0);
INSERT INTO question_options VALUES (58, 15, 'To group rows based on common values in specified columns', 0);
INSERT INTO question_options VALUES (59, 15, 'To order the result set in ascending order', 0);
INSERT INTO question_options VALUES (60, 15, 'To retrieve unique values from a column', 1);
INSERT INTO question_options VALUES (61, 16, 'UNION', 0);
INSERT INTO question_options VALUES (62, 16, 'UNION ALL', 0);
INSERT INTO question_options VALUES (63, 16, 'JOIN', 0);
INSERT INTO question_options VALUES (64, 16, 'INTERSECT', 1);
INSERT INTO question_options VALUES (65, 17, 'Fourth Normal Form (4NF)', 0);
INSERT INTO question_options VALUES (66, 17, 'Third Normal Form (3NF)', 0);
INSERT INTO question_options VALUES (67, 17, 'Second Normal Form (2NF)', 0);
INSERT INTO question_options VALUES (68, 17, 'Boyce-Codd Normal Form (BCNF)', 1);
INSERT INTO question_options VALUES (69, 18, 'To remove all data from a table', 0);
INSERT INTO question_options VALUES (70, 18, 'To delete a specific row from a table', 0);
INSERT INTO question_options VALUES (71, 18, 'To truncate the table structure', 0);
INSERT INTO question_options VALUES (72, 18, 'To remove all data and reset high-water mark', 1);
INSERT INTO question_options VALUES (73, 19, 'To retrieve data from a table', 0);
INSERT INTO question_options VALUES (74, 19, 'To manipulate data in a table', 1);
INSERT INTO question_options VALUES (75, 19, 'To create a new table', 0);
INSERT INTO question_options VALUES (76, 19, 'To define the table structure', 0);
INSERT INTO question_options VALUES (77, 20, 'Retrieves all unique rows from both tables', 0);
INSERT INTO question_options VALUES (78, 20, 'Retrieves all rows from both tables, including duplicates', 1);
INSERT INTO question_options VALUES (79, 20, 'Retrieves only common rows from both tables', 0);
INSERT INTO question_options VALUES (80, 20, 'Retrieves only distinct rows from both tables', 0);

--------------------------------------------------------------------------------------------------------------

INSERT INTO question_options VALUES (81, 21, 'To enhance software development', 0);
INSERT INTO question_options VALUES (82, 21, 'To design efficient algorithms', 0);
INSERT INTO question_options VALUES (83, 21, 'To improve computer performance', 1);
INSERT INTO question_options VALUES (84, 21, 'To facilitate data storage', 0);
INSERT INTO question_options VALUES (85, 22, 'Control Unit', 0);
INSERT INTO question_options VALUES (86, 22, 'Memory Unit', 0);
INSERT INTO question_options VALUES (87, 22, 'Arithmetic Logic Unit (ALU)', 1);
INSERT INTO question_options VALUES (88, 22, 'Input/Output Unit', 0);
INSERT INTO question_options VALUES (89, 23, 'To perform arithmetic calculations', 0);
INSERT INTO question_options VALUES (90, 23, 'To execute instructions in a program', 1);
INSERT INTO question_options VALUES (91, 23, 'To manage input and output operations', 0);
INSERT INTO question_options VALUES (92, 23, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (93, 24, 'RAM (Random Access Memory)', 1);
INSERT INTO question_options VALUES (94, 24, 'ROM (Read-Only Memory)', 0);
INSERT INTO question_options VALUES (95, 24, 'Cache Memory', 0);
INSERT INTO question_options VALUES (96, 24, 'Hard Disk Drive', 0);
INSERT INTO question_options VALUES (97, 25, 'To store frequently used program instructions', 1);
INSERT INTO question_options VALUES (98, 25, 'To store the operating system files', 0);
INSERT INTO question_options VALUES (99, 25, 'To provide long-term data storage', 0);
INSERT INTO question_options VALUES (100, 25, 'To manage input/output operations', 0);
INSERT INTO question_options VALUES (101, 26, 'Immediate Addressing Mode', 1);
INSERT INTO question_options VALUES (102, 26, 'Register Addressing Mode', 0);
INSERT INTO question_options VALUES (103, 26, 'Direct Addressing Mode', 0);
INSERT INTO question_options VALUES (104, 26, 'Indirect Addressing Mode', 0);
INSERT INTO question_options VALUES (105, 27, 'To synchronize the execution of instructions', 1);
INSERT INTO question_options VALUES (106, 27, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (107, 27, 'To manage input/output operations', 0);
INSERT INTO question_options VALUES (108, 27, 'To store program instructions', 0);
INSERT INTO question_options VALUES (109, 28, 'Memory Unit', 0);
INSERT INTO question_options VALUES (110, 28, 'Control Unit', 0);
INSERT INTO question_options VALUES (111, 28, 'Arithmetic Logic Unit (ALU)', 0);
INSERT INTO question_options VALUES (112, 28, 'Input/Output Unit', 1);
INSERT INTO question_options VALUES (113, 29, 'To perform arithmetic calculations', 1);
INSERT INTO question_options VALUES (114, 29, 'To execute instructions in a program', 0);
INSERT INTO question_options VALUES (115, 29, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (116, 29, 'To manage input and output operations', 0);
INSERT INTO question_options VALUES (117, 30, 'Von Neumann Architecture', 1);
INSERT INTO question_options VALUES (118, 30, 'Harvard Architecture', 0);
INSERT INTO question_options VALUES (119, 30, 'Pipelined Architecture', 0);
INSERT INTO question_options VALUES (120, 30, 'Multithreaded Architecture', 0);
INSERT INTO question_options VALUES (121, 31, 'To store the address of the current instruction', 1);
INSERT INTO question_options VALUES (122, 31, 'To store the contents of the accumulator', 0);
INSERT INTO question_options VALUES (123, 31, 'To manage input and output operations', 0);
INSERT INTO question_options VALUES (124, 31, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (125, 32, 'Cache Memory', 1);
INSERT INTO question_options VALUES (126, 32, 'RAM (Random Access Memory)', 0);
INSERT INTO question_options VALUES (127, 32, 'Hard Disk Drive', 0);
INSERT INTO question_options VALUES (128, 32, 'ROM (Read-Only Memory)', 0);
INSERT INTO question_options VALUES (129, 33, 'To fetch the instruction from memory', 1);
INSERT INTO question_options VALUES (130, 33, 'To decode the instruction', 0);
INSERT INTO question_options VALUES (131, 33, 'To execute the instruction', 0);
INSERT INTO question_options VALUES (132, 33, 'To store the result of the instruction', 0);
INSERT INTO question_options VALUES (133, 34, 'Immediate Addressing Mode', 0);
INSERT INTO question_options VALUES (134, 34, 'Register Addressing Mode', 0);
INSERT INTO question_options VALUES (135, 34, 'Direct Addressing Mode', 0);
INSERT INTO question_options VALUES (136, 34, 'Indirect Addressing Mode', 1);
INSERT INTO question_options VALUES (137, 35, 'To store the addresses of interrupt service routines', 1);
INSERT INTO question_options VALUES (138, 35, 'To store the contents of the program counter', 0);
INSERT INTO question_options VALUES (139, 35, 'To manage input/output operations', 0);
INSERT INTO question_options VALUES (140, 35, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (141, 36, 'Solid State Drive (SSD)', 1);
INSERT INTO question_options VALUES (142, 36, 'Hard Disk Drive (HDD)', 0);
INSERT INTO question_options VALUES (143, 36, 'DVD-ROM', 0);
INSERT INTO question_options VALUES (144, 36, 'USB Flash Drive', 0);
INSERT INTO question_options VALUES (145, 37, 'To manage input and output operations', 0);
INSERT INTO question_options VALUES (146, 37, 'To control the flow of data within the CPU', 0);
INSERT INTO question_options VALUES (147, 37, 'To synchronize the execution of instructions', 0);
INSERT INTO question_options VALUES (148, 37, 'To control the data transfer between the CPU and memory', 1);
INSERT INTO question_options VALUES (149, 38, 'Memory Bus', 1);
INSERT INTO question_options VALUES (150, 38, 'Data Bus', 0);
INSERT INTO question_options VALUES (151, 38, 'Control Bus', 0);
INSERT INTO question_options VALUES (152, 38, 'Address Bus', 0);
INSERT INTO question_options VALUES (153, 39, 'To store the addresses of interrupt service routines', 0);
INSERT INTO question_options VALUES (154, 39, 'To store the contents of the program counter', 0);
INSERT INTO question_options VALUES (155, 39, 'To manage input/output operations', 0);
INSERT INTO question_options VALUES (156, 39, 'To store the memory address from which data will be fetched or to which data will be sent', 1);
INSERT INTO question_options VALUES (157, 40, 'x86', 1);
INSERT INTO question_options VALUES (158, 40, 'ARM', 0);
INSERT INTO question_options VALUES (159, 40, 'MIPS', 0);
INSERT INTO question_options VALUES (160, 40, 'PowerPC', 0);

-------------------------------------------------------------------------------------------------------------------------------------------------


INSERT INTO question_options VALUES (161, 41, 'O(log n)', 1);
INSERT INTO question_options VALUES (162, 41, 'O(n)', 0);
INSERT INTO question_options VALUES (163, 41, 'O(n log n)', 0);
INSERT INTO question_options VALUES (164, 41, 'O(n^2)', 0);
INSERT INTO question_options VALUES (165, 42, 'Array', 0);
INSERT INTO question_options VALUES (166, 42, 'Linked List', 0);
INSERT INTO question_options VALUES (167, 42, 'Queue', 0);
INSERT INTO question_options VALUES (168, 42, 'Stack', 1);
INSERT INTO question_options VALUES (169, 43, 'To find optimal solutions to problems with overlapping subproblems', 1);
INSERT INTO question_options VALUES (170, 43, 'To perform dynamic memory allocation', 0);
INSERT INTO question_options VALUES (171, 43, 'To optimize the execution time of a program', 0);
INSERT INTO question_options VALUES (172, 43, 'To create dynamic data structures', 0);
INSERT INTO question_options VALUES (173, 44, 'Sorting elements in ascending order', 0);
INSERT INTO question_options VALUES (174, 44, 'Finding the shortest path in a graph', 0);
INSERT INTO question_options VALUES (175, 44, 'Managing tasks based on priority levels', 1);
INSERT INTO question_options VALUES (176, 44, 'Searching for an element in an array', 0);
INSERT INTO question_options VALUES (177, 45, 'Constant time complexity for all operations', 0);
INSERT INTO question_options VALUES (178, 45, 'Effective for small datasets only', 0);
INSERT INTO question_options VALUES (179, 45, 'Automatic handling of collisions', 0);
INSERT INTO question_options VALUES (180, 45, 'Fast retrieval and insertion of data', 1);
INSERT INTO question_options VALUES (181, 46, 'Quick Sort', 1);
INSERT INTO question_options VALUES (182, 46, 'Bubble Sort', 0);
INSERT INTO question_options VALUES (183, 46, 'Insertion Sort', 0);
INSERT INTO question_options VALUES (184, 46, 'Merge Sort', 0);
INSERT INTO question_options VALUES (185, 47, 'To implement dynamic arrays', 0);
INSERT INTO question_options VALUES (186, 47, 'To represent a hierarchical relationship between elements', 0);
INSERT INTO question_options VALUES (187, 47, 'To perform searching operations', 0);
INSERT INTO question_options VALUES (188, 47, 'To store and retrieve data efficiently', 1);
INSERT INTO question_options VALUES (189, 48, 'Linear Search', 0);
INSERT INTO question_options VALUES (190, 48, 'Binary Search', 0);
INSERT INTO question_options VALUES (191, 48, 'Depth-First Search', 0);
INSERT INTO question_options VALUES (192, 48, 'Merge Sort', 1)
INSERT INTO question_options VALUES (193, 49, 'To find the shortest path in a graph', 1);
INSERT INTO question_options VALUES (194, 49, 'To perform sorting operations', 0);
INSERT INTO question_options VALUES (195, 49, 'To traverse a tree in post-order', 0);
INSERT INTO question_options VALUES (196, 49, 'To find the minimum spanning tree', 0);
INSERT INTO question_options VALUES (197, 50, 'Sorting elements in ascending order', 0);
INSERT INTO question_options VALUES (198, 50, 'Finding the shortest path in a graph', 0);
INSERT INTO question_options VALUES (199, 50, 'Optimally solving a problem by making the locally optimal choice at each stage', 1);
INSERT INTO question_options VALUES (200, 50, 'Searching for an element in an array', 0);
INSERT INTO question_options VALUES (201, 51, 'O(n log n)', 0);
INSERT INTO question_options VALUES (202, 51, 'O(n^2)', 1);
INSERT INTO question_options VALUES (203, 51, 'O(n)', 0);
INSERT INTO question_options VALUES (204, 51, 'O(log n)', 0);
INSERT INTO question_options VALUES (205, 52, 'Array', 0);
INSERT INTO question_options VALUES (206, 52, 'Linked List', 0);
INSERT INTO question_options VALUES (207, 52, 'Binary Tree', 1);
INSERT INTO question_options VALUES (208, 52, 'Queue', 0);
INSERT INTO question_options VALUES (209, 53, 'Efficient storage and retrieval of data', 1);
INSERT INTO question_options VALUES (210, 53, 'Effective for small datasets only', 0);
INSERT INTO question_options VALUES (211, 53, 'Constant time complexity for all operations', 0);
INSERT INTO question_options VALUES (212, 53, 'Automatic handling of collisions', 0);
INSERT INTO question_options VALUES (213, 54, 'Finding the shortest path in a graph', 1);
INSERT INTO question_options VALUES (214, 54, 'Sorting elements in ascending order', 0);
INSERT INTO question_options VALUES (215, 54, 'Searching for an element in an array', 0);
INSERT INTO question_options VALUES (216, 54, 'Managing tasks based on priority levels', 0);
INSERT INTO question_options VALUES (217, 55, 'Sorting elements in ascending order', 0);
INSERT INTO question_options VALUES (218, 55, 'Searching for an element in an array', 0);
INSERT INTO question_options VALUES (219, 55, 'Merging two sorted arrays or lists', 1);
INSERT INTO question_options VALUES (220, 55, 'Finding the shortest path in a graph', 0);
INSERT INTO question_options VALUES (221, 56, 'Array', 0);
INSERT INTO question_options VALUES (222, 56, 'Linked List', 1);
INSERT INTO question_options VALUES (223, 56, 'Hash Table', 0);
INSERT INTO question_options VALUES (224, 56, 'Binary Tree', 0);
INSERT INTO question_options VALUES (225, 57, 'O(n)', 0);
INSERT INTO question_options VALUES (226, 57, 'O(n^2)', 1);
INSERT INTO question_options VALUES (227, 57, 'O(n log n)', 0);
INSERT INTO question_options VALUES (228, 57, 'O(log n)', 0);
INSERT INTO question_options VALUES (229, 58, 'Storing and retrieving data efficiently', 0);
INSERT INTO question_options VALUES (230, 58, 'Handling collisions automatically', 0);
INSERT INTO question_options VALUES (231, 58, 'Searching for an element in an array', 1);
INSERT INTO question_options VALUES (232, 58, 'Performing sorting operations', 0);
INSERT INTO question_options VALUES (233, 59, 'Finding the shortest path in a graph', 1);
INSERT INTO question_options VALUES (234, 59, 'Sorting elements in ascending order', 0);
INSERT INTO question_options VALUES (235, 59, 'Traversing a tree in pre-order', 0);
INSERT INTO question_options VALUES (236, 59, 'Searching for an element in an array', 0);
INSERT INTO question_options VALUES (237, 60, 'Quick Sort', 1);
INSERT INTO question_options VALUES (238, 60, 'Bubble Sort', 0);
INSERT INTO question_options VALUES (239, 60, 'Insertion Sort', 0);
INSERT INTO question_options VALUES (240, 60, 'Merge Sort', 0);

-----------------------------------------------------------------------------------------------------

INSERT INTO question_options VALUES (241, 61, 'A visual representation of data structures', 0);
INSERT INTO question_options VALUES (242, 61, 'A chart used for bar graphs', 0);
INSERT INTO question_options VALUES (243, 61, 'A collection of nodes and edges', 1);
INSERT INTO question_options VALUES (244, 61, 'A mathematical equation', 0);
INSERT INTO question_options VALUES (245, 62, 'The number of edges connected to a vertex', 0);
INSERT INTO question_options VALUES (246, 62, 'The number of vertices in a graph', 0);
INSERT INTO question_options VALUES (247, 62, 'The total number of edges in the graph', 0);
INSERT INTO question_options VALUES (248, 62, 'The number of edges connected to a vertex', 1);
INSERT INTO question_options VALUES (249, 63, 'It represents the degree of each vertex', 0);
INSERT INTO question_options VALUES (250, 63, 'It represents the adjacency of vertices in a graph', 1);
INSERT INTO question_options VALUES (251, 63, 'It is used for storing vertex labels', 0);
INSERT INTO question_options VALUES (252, 63, 'It is used for storing edge weights', 0);
INSERT INTO question_options VALUES (253, 64, 'Depth-First Search (DFS)', 0);
INSERT INTO question_options VALUES (254, 64, 'Breadth-First Search (BFS)', 0);
INSERT INTO question_options VALUES (255, 64, 'Prims algorithm', 0);
INSERT INTO question_options VALUES (256, 64, 'Dijkstras algorithm', 1);
INSERT INTO question_options VALUES (257, 65, 'A connected acyclic graph', 0);
INSERT INTO question_options VALUES (258, 65, 'A graph with no vertices', 0);
INSERT INTO question_options VALUES (259, 65, 'A connected graph with exactly one cycle', 1);
INSERT INTO question_options VALUES (260, 65, 'A graph with no edges', 0);
INSERT INTO question_options VALUES (261, 66, 'Determinants', 0);
INSERT INTO question_options VALUES (262, 66, 'Matrix multiplication', 0);
INSERT INTO question_options VALUES (263, 66, 'Eigenvalues and eigenvectors', 1);
INSERT INTO question_options VALUES (264, 66, 'Scalar multiplication', 0);
INSERT INTO question_options VALUES (265, 67, '0', 0);
INSERT INTO question_options VALUES (266, 67, '1', 1);
INSERT INTO question_options VALUES (267, 67, '-1', 0);
INSERT INTO question_options VALUES (268, 67, 'Depends on the matrix elements', 0);
INSERT INTO question_options VALUES (269, 68, 'The sum of the corresponding elements of the two vectors', 1);
INSERT INTO question_options VALUES (270, 68, 'The difference between the corresponding elements of the two vectors', 0);
INSERT INTO question_options VALUES (271, 68, 'The product of the corresponding elements of the two vectors', 0);
INSERT INTO question_options VALUES (272, 68, 'The cross product of the two vectors', 0);
INSERT INTO question_options VALUES (273, 69, 'The number of rows in the matrix', 0);
INSERT INTO question_options VALUES (274, 69, 'The number of columns in the matrix', 0);
INSERT INTO question_options VALUES (275, 69, 'The maximum absolute row sum of the matrix', 1);
INSERT INTO question_options VALUES (276, 69, 'The determinant of the matrix', 0);
INSERT INTO question_options VALUES (277, 70, 'A sequence of vertices with no repeated vertices', 0);
INSERT INTO question_options VALUES (278, 70, 'A sequence of edges with no repeated edges', 0);
INSERT INTO question_options VALUES (279, 70, 'A connected acyclic subgraph', 0);
INSERT INTO question_options VALUES (280, 70, 'A closed path that visits each vertex exactly once', 1);
INSERT INTO question_options VALUES (281, 71, 'Depth-First Search (DFS)', 0);
INSERT INTO question_options VALUES (282, 71, 'Breadth-First Search (BFS)', 1);
INSERT INTO question_options VALUES (283, 71, 'Prims Algorithm', 0);
INSERT INTO question_options VALUES (284, 71, 'Dijkstras Algorithm', 0);
INSERT INTO question_options VALUES (285, 72, 'It is used to represent the adjacency of vertices', 0);
INSERT INTO question_options VALUES (286, 72, 'It is used to calculate the Laplacian determinant', 0);
INSERT INTO question_options VALUES (287, 72, 'It is used to find the number of spanning trees', 0);
INSERT INTO question_options VALUES (288, 72, 'It is used to study the connectivity and flow in networks', 1);
INSERT INTO question_options VALUES (289, 73, 'Switching the rows and columns of a matrix', 1);
INSERT INTO question_options VALUES (290, 73, 'Finding the determinant of a matrix', 0);
INSERT INTO question_options VALUES (291, 73, 'Performing scalar multiplication on a matrix', 0);
INSERT INTO question_options VALUES (292, 73, 'Finding the inverse of a matrix', 0);
INSERT INTO question_options VALUES (293, 74, 'It cannot be colored with two colors', 1);
INSERT INTO question_options VALUES (294, 74, 'It is a complete graph', 0);
INSERT INTO question_options VALUES (295, 74, 'It contains a cycle with an odd number of vertices', 0);
INSERT INTO question_options VALUES (296, 74, 'It is a connected acyclic graph', 0);
INSERT INTO question_options VALUES (297, 75, '0', 1);
INSERT INTO question_options VALUES (298, 75, '1', 0);
INSERT INTO question_options VALUES (299, 75, 'Depends on the size of the matrix', 0);
INSERT INTO question_options VALUES (300, 75, 'Eigenvalue of the matrix', 0);
INSERT INTO question_options VALUES (301, 76, 'The number of edges connected to a vertex', 0);
INSERT INTO question_options VALUES (302, 76, 'The distance between two vertices', 0);
INSERT INTO question_options VALUES (303, 76, 'The number of vertices in the graph', 0);
INSERT INTO question_options VALUES (304, 76, 'The maximum eccentricity among all vertices', 1);
INSERT INTO question_options VALUES (305, 77, 'A standard form for representing matrices', 0);
INSERT INTO question_options VALUES (306, 77, 'A form for expressing a matrix as the product of elementary matrices', 0);
INSERT INTO question_options VALUES (307, 77, 'A canonical form for representing matrices up to similarity', 1);
INSERT INTO question_options VALUES (308, 77, 'A form for calculating determinants quickly', 0);
INSERT INTO question_options VALUES (309, 78, 'The number of vertices in a graph', 0);
INSERT INTO question_options VALUES (310, 78, 'The number of edges in a graph', 0);
INSERT INTO question_options VALUES (311, 78, 'The minimum number of colors needed to color the vertices of a graph', 1);
INSERT INTO question_options VALUES (312, 78, 'The maximum degree of a vertex in a graph', 0);
INSERT INTO question_options VALUES (313, 79, 'Depth-First Search (DFS)', 0);
INSERT INTO question_options VALUES (314, 79, 'Breadth-First Search (BFS)', 1);
INSERT INTO question_options VALUES (315, 79, 'Prims Algorithm', 0);
INSERT INTO question_options VALUES (316, 79, 'Dijkstras Algorithm',0);
INSERT INTO question_options VALUES (317, 80, 'A polynomial with integer coefficients', 0);
INSERT INTO question_options VALUES (318, 80, 'A polynomial representing the eigenvalues of a matrix', 0);
INSERT INTO question_options VALUES (319, 80, 'A polynomial with roots corresponding to the matrix elements', 0);
INSERT INTO question_options VALUES (320, 80, 'A polynomial that characterizes the matrix up to similarity', 1);

-------------------------------------------------------------------------------------------------------------------------------


INSERT INTO question_options VALUES (321, 81, 'Continuous mathematics', 0);
INSERT INTO question_options VALUES (322, 81, 'Study of continuous functions', 0);
INSERT INTO question_options VALUES (323, 81, 'Study of distinct and separate values', 1);
INSERT INTO question_options VALUES (324, 81, 'Applied mathematics', 0);
INSERT INTO question_options VALUES (325, 82, 'Intersection of two sets', 0);
INSERT INTO question_options VALUES (326, 82, 'Elements common to both sets', 1);
INSERT INTO question_options VALUES (327, 82, 'Subtraction of two sets', 0);
INSERT INTO question_options VALUES (328, 82, 'Cartesian product of two sets', 0);
INSERT INTO question_options VALUES (329, 83, '0', 0);
INSERT INTO question_options VALUES (330, 83, '1', 0);
INSERT INTO question_options VALUES (331, 83, 'Infinite', 0);
INSERT INTO question_options VALUES (332, 83, 'Undefined', 1);
INSERT INTO question_options VALUES (333, 84, 'P OR Q', 0);
INSERT INTO question_options VALUES (334, 84, 'NOT P AND NOT Q', 1);
INSERT INTO question_options VALUES (335, 84, 'P OR NOT Q', 0);
INSERT INTO question_options VALUES (336, 84, 'NOT P OR NOT Q', 0);
INSERT INTO question_options VALUES (337, 85, 'n(n-1)/2', 1);
INSERT INTO question_options VALUES (338, 85, 'n^2', 0);
INSERT INTO question_options VALUES (339, 85, '2n', 0);
INSERT INTO question_options VALUES (340, 85, '2^(n-1)', 0);
INSERT INTO question_options VALUES (341, 86, 'Counting elements in a set', 0);
INSERT INTO question_options VALUES (342, 86, 'Counting elements in multiple sets', 1);
INSERT INTO question_options VALUES (343, 86, 'Exclusion of elements from a set', 0);
INSERT INTO question_options VALUES (344, 86, 'Finding the union of two sets', 0);
INSERT INTO question_options VALUES (345, 87, 'Permutations of n items', 0);
INSERT INTO question_options VALUES (346, 87, 'Combinations of n items taken k at a time', 1);
INSERT INTO question_options VALUES (347, 87, 'Counting the total number of items', 0);
INSERT INTO question_options VALUES (348, 87, 'Partitioning sets into subsets', 0);
INSERT INTO question_options VALUES (349, 88, 'Counting elements in a set', 0);
INSERT INTO question_options VALUES (350, 88, 'Exclusion of elements from a set', 0);
INSERT INTO question_options VALUES (351, 88, 'Counting elements in multiple sets', 0);
INSERT INTO question_options VALUES (352, 88, 'Solving linear equations', 1);
INSERT INTO question_options VALUES (353, 89, 'A relation between two sets', 0);
INSERT INTO question_options VALUES (354, 89, 'A set of ordered pairs with no repeated first elements', 1);
INSERT INTO question_options VALUES (355, 89, 'A set of ordered pairs with no repeated second elements', 0);
INSERT INTO question_options VALUES (356, 89, 'A set of distinct elements', 0);
INSERT INTO question_options VALUES (357, 90, 'The number of vertices in a graph', 0);
INSERT INTO question_options VALUES (358, 90, 'The minimum number of colors needed to color the edges of a graph', 0);
INSERT INTO question_options VALUES (359, 90, 'The minimum number of colors needed to color the vertices of a graph', 1);
INSERT INTO question_options VALUES (360, 90, 'The number of edges in a graph', 0);
INSERT INTO question_options VALUES (361, 91, '-5', 0);
INSERT INTO question_options VALUES (362, 91, '5', 1);
INSERT INTO question_options VALUES (363, 91, 'Undefined', 0);
INSERT INTO question_options VALUES (364, 91, '0', 0);
INSERT INTO question_options VALUES (365, 92, 'Counting elements in a set', 0);
INSERT INTO question_options VALUES (366, 92, 'Counting elements in multiple sets', 0);
INSERT INTO question_options VALUES (367, 92, 'Solving linear equations', 1);
INSERT INTO question_options VALUES (368, 92, 'Finding the union of two sets', 0);
INSERT INTO question_options VALUES (369, 93, 'n!', 1);
INSERT INTO question_options VALUES (370, 93, 'n^n', 0);
INSERT INTO question_options VALUES (371, 93, '2^n', 0);
INSERT INTO question_options VALUES (372, 93, 'n^2', 0);
INSERT INTO question_options VALUES (373, 94, 'A set containing all elements of A', 0);
INSERT INTO question_options VALUES (374, 94, 'A set containing no elements', 0);
INSERT INTO question_options VALUES (375, 94, 'A set containing elements not in A', 1);
INSERT INTO question_options VALUES (376, 94, 'A set containing some elements of A', 0);
INSERT INTO question_options VALUES (377, 95, '1101', 1);
INSERT INTO question_options VALUES (378, 95, '1011', 0);
INSERT INTO question_options VALUES (379, 95, '1001', 0);
INSERT INTO question_options VALUES (380, 95, '1110', 0);
INSERT INTO question_options VALUES (381, 96, 'True', 1);
INSERT INTO question_options VALUES (382, 96, 'False', 0);
INSERT INTO question_options VALUES (383, 96, 'Undefined', 0);
INSERT INTO question_options VALUES (384, 96, 'Depends on the values of P and Q', 0);
INSERT INTO question_options VALUES (385, 97, 'm + n', 0);
INSERT INTO question_options VALUES (386, 97, 'm * n', 1);
INSERT INTO question_options VALUES (387, 97, 'm - n', 0);
INSERT INTO question_options VALUES (388, 97, '2^(m+n)', 0);
INSERT INTO question_options VALUES (389, 98, 'A graph with no cycles', 0);
INSERT INTO question_options VALUES (390, 98, 'A graph with at least one cycle', 1);
INSERT INTO question_options VALUES (391, 98, 'A graph with no edges', 0);
INSERT INTO question_options VALUES (392, 98, 'A graph with only one vertex', 0);
INSERT INTO question_options VALUES (393, 99, '1 (mod 5)', 0);
INSERT INTO question_options VALUES (394, 99, '4 (mod 5)', 0);
INSERT INTO question_options VALUES (395, 99, '2 (mod 5)', 1);
INSERT INTO question_options VALUES (396, 99, 'Undefined', 0);
INSERT INTO question_options VALUES (397, 100, '2^n', 0);
INSERT INTO question_options VALUES (398, 100, 'n!', 0);
INSERT INTO question_options VALUES (399, 100, '2^(2n)', 1);
INSERT INTO question_options VALUES (400, 100, 'n^2', 0);

select * from quiz_user;
select * from quiz;
select * from quiz_topics;
select * from questions;
select * from question_options;


