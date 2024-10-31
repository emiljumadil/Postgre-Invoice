CREATE TABLE "invoice" (
  "id" id,
  "invoice" id,
  "buyer_id" id,
  "seller_id" id,
  "lable" text,
  "expedition" integer,
  "payment" integer
);

CREATE TABLE "buyer" (
  "id" id,
  "name" text,
  "address" text,
  "contact_info" text
);

CREATE TABLE "address" (
  "id" id,
  "buyer_id" id,
  "street" text,
  "city" text,
  "phone_number" number
);

CREATE TABLE "order" (
  "id" id,
  "buyer_id" id,
  "product" integer,
  "quantity" integer,
  "expedition" interger,
  "address" integer
);

CREATE TABLE "invoice_item" (
  "id" id,
  "product" id,
  "quantity" integer
);

CREATE TABLE "expedition" (
  "id" id,
  "name" text,
  "weight" number,
  "shipping_address" id,
  "shipping_fee" integer,
  "insurance" bool
);

CREATE TABLE "payment_types" (
  "id" id,
  "invoice_id" id,
  "name" text,
  "amount" int,
  "cashback" int
);

CREATE TABLE "products" (
  "id" id,
  "seller_id" integer,
  "name" text,
  "price" number,
  "weight" number,
  "description" text,
  "created_at" datetime,
  "updated_at" datetime,
  "deleted_at" datetime
);

CREATE TABLE "seller" (
  "id" id,
  "name" text,
  "phone_number" text
);

ALTER TABLE "buyer" ADD FOREIGN KEY ("id") REFERENCES "invoice" ("id");

ALTER TABLE "invoice_item" ADD FOREIGN KEY ("id") REFERENCES "invoice" ("invoice");

ALTER TABLE "order" ADD FOREIGN KEY ("buyer_id") REFERENCES "buyer" ("id");

ALTER TABLE "order" ADD FOREIGN KEY ("address") REFERENCES "buyer" ("address");

ALTER TABLE "address" ADD FOREIGN KEY ("id") REFERENCES "order" ("address");

ALTER TABLE "seller" ADD FOREIGN KEY ("id") REFERENCES "products" ("seller_id");

ALTER TABLE "expedition" ADD FOREIGN KEY ("id") REFERENCES "order" ("expedition");

ALTER TABLE "order" ADD FOREIGN KEY ("product") REFERENCES "products" ("id");

ALTER TABLE "payment_types" ADD FOREIGN KEY ("invoice_id") REFERENCES "invoice_item" ("id");

ALTER TABLE "buyer" ADD FOREIGN KEY ("name") REFERENCES "invoice" ("buyer_id");

ALTER TABLE "products" ADD FOREIGN KEY ("id") REFERENCES "invoice_item" ("product");

ALTER TABLE "products" ADD FOREIGN KEY ("seller_id") REFERENCES "invoice" ("seller_id");

ALTER TABLE "payment_types" ADD FOREIGN KEY ("id") REFERENCES "invoice" ("payment");

ALTER TABLE "expedition" ADD FOREIGN KEY ("id") REFERENCES "invoice" ("expedition");
