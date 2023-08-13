
-- To create tale in database that you already created.
create table tableName (
    id int(length) not null auto_increment,
    attribute1 string(length),
    .
    .
    .
    primary key (id) -- possible to have more than one primary key called composite key
    -- notice if you want to use composite key you should not define primary key in line of defind attribute.
)