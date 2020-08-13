DROP TABLE IF EXISTS distances;

CREATE TABLE IF NOT EXISTS distances (
    id SERIAL PRIMARY KEY,
    x1 INT NOT NULL,
    y1 INT NOT NULL,
    x2 INT NOT NULL,
    y2 INT NOT NULL,
    distance DOUBLE AS (SQRT(POW(x1 -x2, 2) + POW(y1 - y2, 2)))
) COMMENT = 'DISTANCE BETWEEN TWO POINTS';

INSERT INTO distances (x1, y1, x2, y2) VALUES
    (1, 1, 4, 5),
    (4, -1, 3, 2),
    (-2, 5, 1, 3);

SELECT * FROM distances;

-- ------------------------------------------
DROP TABLE IF EXISTS distances;

CREATE TABLE IF NOT EXISTS distances (
    id SERIAL PRIMARY KEY,
    a JSON NOT NULL,
    b JSON NOT NULL,
    distance DOUBLE AS (SQRT(POW(a->>'$.x' - b->>'$.x', 2) + POW(a->>'$.y' - b->>'$.y', 2)))
) COMMENT = 'DISTANCE BETWEEN TWO POINTS';

INSERT INTO distances (a, b) VALUES
('{"x": 1, "y": 1}', '{"x": 4, "y": 5}'),
('{"x": 4, "y": -1}', '{"x": 3, "y": 2}'),
('{"x": -2, "y": 5}', '{"x": 1, "y": 3}');

SELECT * FROM distances;

-- -------------------------------------------
-- Площадь треугольника

DROP TABLE IF EXISTS triangles;

CREATE TABLE IF NOT EXISTS triangles
(
    id SERIAL PRIMARY KEY,
    a DOUBLE NOT NULL,
    b DOUBLE NOT NULL,
    angle INT NOT NULL,
    square DOUBLE AS (a * b *SIN(RADIANS(angle)) / 2.0)
) COMMENT = 'AREA OF A TRIANGLE';

INSERT INTO triangles (a, b, angle) VALUES
    (1.414, 1, 45),
    (2.707, 2.104, 60),
    (2.088, 2.112, 56),
    (5.014, 2.304, 23),
    (3.482, 4.708, 38);

SELECT * FROM triangles;

-- ОКРУГЛИМ ЗНАЧЕНИЕ

ALTER TABLE triangles CHANGE square square DOUBLE AS (ROUND(a * b * SIN(RADIANS(angle)) / 2.0, 4));

SELECT * FROM triangles;


