-- USERS
CREATE TABLE users (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    phone VARCHAR(15),
    password TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- PRODUCTS (Medicines)
CREATE TABLE products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT,
    brand TEXT,
    price NUMERIC,
    stock INT,
    requires_prescription BOOLEAN DEFAULT false
);

-- ORDERS
CREATE TABLE orders (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID REFERENCES users(id),
    total NUMERIC,
    status VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ORDER ITEMS
CREATE TABLE order_items (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    order_id UUID REFERENCES orders(id),
    product_id UUID REFERENCES products(id),
    quantity INT,
    price NUMERIC
);

-- DOCTORS
CREATE TABLE doctors (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT,
    specialization TEXT,
    experience INT,
    rating NUMERIC
);

-- APPOINTMENTS
CREATE TABLE appointments (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID,
    doctor_id UUID,
    slot TIMESTAMP,
    status VARCHAR(20)
);

-- LAB TESTS
CREATE TABLE lab_tests (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT,
    price NUMERIC
);

-- BOOKINGS
CREATE TABLE lab_bookings (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id UUID,
    test_id UUID,
    slot TIMESTAMP
);
