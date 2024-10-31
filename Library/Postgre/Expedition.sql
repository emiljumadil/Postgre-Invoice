create table expeddition (
  id serial primary key,
  name text,
  weight integer,
  shipping_address integer,
  shipping_fee integer,
  insurance bool
);