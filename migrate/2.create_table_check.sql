-- up
create table  check(
    id         uuid      not null,
    owner_id   uuid      not null,
    created_at timestamp not null default now(),
    updated_at timestamp not null default now(),
    current_check text default "0",

    foreign key (owner_id) references users on delete cascade,
    unique (id),
    unique (owner_id, id)
);
-- down
drop table check;