-- up
create table bank_card(
    id               uuid      not null default gen_random_uuid(),
    card_number      text      not null,
    expiration_date  date      not null,
    cvv              text      not null,
    user_id          uuid      not null,
    card_type        text      not null,
    foreign key (user_id) references users on delete cascade,
    primary key (id)
    unique (user_id, id)

);
-- down
drop table users;