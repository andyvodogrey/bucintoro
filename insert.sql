
SET search_path TO bucintoro;

-- --------------------------------------------------------

INSERT INTO soci VALUES
(22, 'Dustin', 7, 45.0),
(29, 'Brutus', 1, 33.0),
(31, 'Lubber', 8, 55.5),
(32, 'Andy', 8, 25.5),
(58, 'Rusty', 10, 35.0),
(64, 'Horatio', 7, 35.0),
(71, 'Zorba', 10, 16.0),
(74, 'Horatio', 9, 35.0),
(85, 'Art', 3, 25.5),
(95, 'Bob', 3, 63.5);

-- --------------------------------------------------------

INSERT INTO barche VALUES
(101, 'Interlake', 'blue'),
(102, 'Interlake', 'red'),
(103, 'Clipper', 'green'),
(104, 'Marine', 'red');

-- --------------------------------------------------------

INSERT INTO prenotazioni VALUES
(22, 101, '10/10/15'),
(22, 101, '10/10/14'),
(22, 102, '10/10/15'),
(22, 103, '10/8/15'),
(22, 104, '10/7/15'),
(31, 102, '11/10/15'),
(31, 103, '11/6/15'),
(31, 104, '11/12/15'),
(64, 101, '9/5/15'),
(64, 102, '9/8/15'),
(74, 103, '9/8/15');