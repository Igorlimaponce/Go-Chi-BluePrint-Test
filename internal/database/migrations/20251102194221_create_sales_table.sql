-- +goose Up
-- +goose StatementBegin
CREATE TABLE IF NOT EXISTS sales (
    id BIGSERIAL PRIMARY KEY,
    sale_value NUMERIC(18,2) NOT NULL DEFAULT 0,
    sale_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
)
-- +goose StatementEnd

-- +goose Down
-- +goose StatementBegin
DROP TABLE IF EXISTS sales;
-- +goose StatementEnd
