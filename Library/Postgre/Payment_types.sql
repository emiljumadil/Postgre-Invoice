create table payment_types (
  id serial primary key,
  invoice_id integer,
  name text,
  amount int,
  cashback int
);