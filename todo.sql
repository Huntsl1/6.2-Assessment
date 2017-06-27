CREATE TABLE "todos" (
  'id' serial NOT NULL PRIMARY KEY,
  'title' VARCHAR(255) NOT NULL,
  'details'VARCHAR(1000) NULL,
  'priority' INT NOT NULL DEFAULT 1,
  'created_at' DATETIME TIMESTAMP NOT NULL,
  'completed_at' DATETIME TIMESTAMP NULL,
);

INSERT INTO todos ('title','details','priority','created_at','completed_at') VALUES ('take out trash', 'walk down to the end of the driveway and throw away trash', 2, '6/27/2017 02:30:00','6/27/2017 3:53:00');
INSERT INTO todos VALUES (2,'wash the car','take car out and wash then drive to dry', 1,'6/27/2017 06:25:00','06/28/2017 12:35:00');
INSERT INTO todos ('title','priority','created_at') VALUES ('get groceries', 3, '06/29/2017 10:30:00');
INSERT INTO todos ('title','priority','created_at') VALUES ('go swimming', 1, '07/04/2017 12:00:00');
INSERT INTO todos ('title','details','priority','created_at') VALUES ('cook a whole hog','assemble cooker and cook for 24 hours', 2, '07/03/2017 11:45:00');

SELECT * FROM todos WHERE todos.details = null, todo.completed_at = null;

SELECT * FROM todos WHERE todos.priority > 1;

UPDATE todos SET completed_at = '07/05/2017 12:25:00' WHERE todos.id = 4;

DELETE FROM todos WHERE todos.completed_at !~ NULL;
