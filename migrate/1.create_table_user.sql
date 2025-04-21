-- up
create table users(
    id               uuid      not null default gen_random_uuid(),
    email            text      not null,
    first_name       text      not null,
    last_name        text      not null,
    password_number  text      not null,
    phone            text      not null,
    pass_hash        bytea     not null,
    status           text      not null,
    created_at       timestamp not null default now(),
    updated_at       timestamp not null default now(),
    unique (email),
    unique (first_name),
    primary key (id)
);
-- down
drop table users;