CREATE TABLE IF NOT EXISTS `customer` (
    `customer_id` int AUTO_INCREMENT  PRIMARY KEY,
    `name` varchar(100) NOT NULL,
    `email` varchar(100) NOT NULL,
    `mobile_number` varchar(20) NOT NULL,
    `created_at` date NOT NULL,
    `created_by` varchar(20) NOT NULL,
    `updated_at` date DEFAULT NULL,
    `updated_by` varchar(20) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `accounts` (
    `customer_id` int NOT NULL,
    `account_number` int AUTO_INCREMENT  PRIMARY KEY,
    `account_type` varchar(100) NOT NULL,
    `branch_address` varchar(200) NOT NULL,
    `created_at` date NOT NULL,
    `created_by` varchar(20) NOT NULL,
    `updated_at` date DEFAULT NULL,
    `updated_by` varchar(20) DEFAULT NULL
);

-- INSERT para la tabla "customer"
INSERT INTO customer (name, email, mobile_number, created_at, created_by, updated_at, updated_by)
VALUES
    ('John Doe', 'john.doe@example.com', '123-456-7890', '2023-09-20', 'admin', NULL, NULL),
    ('Jane Smith', 'jane.smith@example.com', '987-654-3210', '2023-09-20', 'admin', NULL, NULL),
    ('Alice Johnson', 'alice.johnson@example.com', '555-123-4567', '2023-09-20', 'admin', NULL, NULL);

-- INSERT para la tabla "accounts"
INSERT INTO accounts (customer_id, account_type, branch_address, created_at, created_by, updated_at, updated_by)
VALUES
    (1, 'Savings', '123 Main St, Cityville', '2023-09-20', 'admin', NULL, NULL),
    (1, 'Checking', '123 Main St, Cityville', '2023-09-20', 'admin', NULL, NULL),
    (2, 'Savings', '456 Elm St, Townsville', '2023-09-20', 'admin', NULL, NULL),
    (3, 'Checking', '789 Oak St, Villageton', '2023-09-20', 'admin', NULL, NULL);
