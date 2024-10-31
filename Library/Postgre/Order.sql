create table ordder (
  id serial NOT NULL,
  buyer_id integer,
  product integer,
  quantity integer DEFAULT 0,
  expedition integer PRIMARY KEY,
  address integer
);