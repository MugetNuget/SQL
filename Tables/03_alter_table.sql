ALTER TABLE persons8 
ADD surname varchar(50);

ALTER TABLE persons8 
RENAME COLUMN surname TO description;

ALTER TABLE persons8 
DROP COLUMN description;