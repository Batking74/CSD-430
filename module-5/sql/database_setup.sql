-- Drop table if it already exists to allow clean recreation
DROP TABLE IF EXISTS InventoryItems;

-- Create the table with a unique key and a minimum of 5 data fields
CREATE TABLE InventoryItems (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    stock_quantity INT NOT NULL,
    supplier VARCHAR(100) NOT NULL
);

-- Populate the table with sample data
INSERT INTO InventoryItems (item_id, item_name, category, price, stock_quantity, supplier) VALUES
(101, 'Ergonomic Office Chair', 'Furniture', 149.99, 45, 'Apex Office Supplies'),
(102, 'Mechanical Gaming Keyboard', 'Electronics', 89.50, 120, 'TechGear Inc.'),
(103, 'Ultra-Wide 34-inch Monitor', 'Electronics', 399.00, 30, 'Visionary Displays'),
(104, 'Standing Desk Converter', 'Furniture', 215.75, 18, 'ErgoWorks'),
(105, 'Wireless Noise-Canceling Headphones', 'Audio', 199.99, 65, 'SoundWave Audio');
