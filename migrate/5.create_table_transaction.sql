-- up
create table acctransactionount(
    id                   uuid           not null,
    transaction_date     timestamp      not null,
    transaction_type     text           not null,
    amount               DECIMAL(10,2)  not null,
    currency             text           not null,
    card_number          text           not null,
    user_id              uuid           not null,
    status               text           not null,
    created_at           timestamp      not null default now(),
    updated_at           timestamp      not null default now(),

    foreign key (user_id) references user on delete cascade,
    unique (id)
);
-- down
drop table chetransactionck;