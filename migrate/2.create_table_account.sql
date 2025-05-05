-- up
create table account(
    id         uuid      not null,
    card_id    uuid      not null,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now(),
    balance DECIMAL(10, 2),

    foreign key (card_id) references bank_card on delete cascade,
    unique (card_id, id)
);
-- down
drop table check;