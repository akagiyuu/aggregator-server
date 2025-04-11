CREATE TABLE IF NOT EXISTS providers(
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE IF NOT EXISTS tokens(
    id serial PRIMARY KEY,
    name text NOT NULL
);

CREATE TABLE IF NOT EXISTS borrows(
    id serial PRIMARY KEY,
    provider_id serial NOT NULL,
    token_id serial NOT NULL,
    apr real NOT NULL,
    created_at timestamp default (timezone('utc', now()))
);

CREATE TABLE IF NOT EXISTS lends(
    id serial PRIMARY KEY,
    provider_id serial NOT NULL,
    token_id serial NOT NULL,
    apr real NOT NULL,
    created_at timestamp default (timezone('utc', now()))
);

CREATE TABLE IF NOT EXISTS stakes(
    id serial PRIMARY KEY,
    provider_id serial NOT NULL,
    token_id serial NOT NULL,
    apr real NOT NULL,
    created_at timestamp default (timezone('utc', now()))
);
