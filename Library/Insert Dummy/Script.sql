
-- Address data
INSERT INTO marketplace.address (buyer_id, street, city, phone_number) VALUES 
    (1, 'Digital Park', 'Batam', '6281312341234');

-- Buyer data
INSERT INTO marketplace.buyer (name, address, contact_info) VALUES 
    ('Sum Ting Wong', 'Digital Park Batam Kepulauan Riau', '6281312341234');
    
-- Expedition data (Courier Service)
INSERT INTO marketplace.expedition (name, weight, shipping_addres, shipping_fee, insurace) VALUES 
    ('J&T - Reguler', '5 kg', 'Digital Park Batam Kepulauan Riau', 'free shipping', 'tokopedia shipping'); 
   
-- Invoice data
INSERT INTO marketplace.invoice (invoice, buyer_id, seller_id, label, expedition, payment) VALUES 
    ('INV/20330111/MPL/3694776524', 'JP230356785', 'J&T - Reguler', 'BCA Virtual Account & GoPay Coins');
   
-- Invoice Item data
INSERT INTO marketplace.invoice_item (product, quantity) VALUES 
    ('SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB', '1');
   
-- Order data
INSERT INTO marketplace."order" (buyer_id, product, quantity, expedition, address) VALUES 
    (1, 'SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB', '1', 'J&T - Reguler', 'Digital Park Batam Kepulauan Riau');
   
-- Payment Types data
INSERT INTO marketplace.payment_types (invoice_id, name, amount, cashback) VALUES 
    ('INV/20330111/MPL/3694776524', 'BCA Virtual Account & GoPay Coins', '20685000', '986385'),
   
-- Product data
INSERT INTO marketplace.product (seller_id, name, price, weight, description, created_at, updated_at, deleted_at) VALUES 
    (1, 'SAPPHIRE NITRO+ Radeon RX 7900 XTX 24GB', '20500000', '5 kg', 'Computer Component', NOW(), NOW(), NOW());
  
-- Seller data
INSERT INTO "ECommerse".seller (name, phone_number) VALUES 
    ('COC Komputer','6281269037417');
