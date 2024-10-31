create table products (
  id serial primary key,
  seller_id integer,
  name text,
  price integer,
  weight integer,
  description text,
  created_at timestamp,
  updated_at timestamp,
  deleted_at timestamp
);