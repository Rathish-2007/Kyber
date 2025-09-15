-- Transaction tracking table for PostgreSQL
CREATE TABLE IF NOT EXISTS transactions (
    transaction_id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    transaction_hash VARCHAR(66),
    from_address VARCHAR(66),
    to_address VARCHAR(66),
    amount NUMERIC(36, 18) NOT NULL,
    status VARCHAR(20) DEFAULT 'pending',
    block_number BIGINT,
    gas_used BIGINT,
    transaction_fee NUMERIC(36, 18),
    error TEXT,
    created_at TIMESTAMP DEFAULT NOW()
);
