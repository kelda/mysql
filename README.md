# MySQL

An example of seeding MySQL databases in Docker Compose with volumes.

All SQL files in `seed-data` are loaded on boot. To customize with your data,
just delete `./seed-data/create-table.sql` and add your own `.sql` files.

## Gotchas

The database is only initialized **the very first time it boots**. So
if you change your seed data, you need to force the container to restart by
running `blimp down` followed by `blimp up`.

## Example Blimp Usage

1. Run `blimp up` and wait for the container to start.

1. Connect to the database by running `blimp ssh mysql`, then `mysql example`.

1. Run `SELECT * FROM users;`. You should see:

    ```
    +----+------+-------+
    | id | name | email |
    +----+------+-------+
    |  1 | name | email |
    +----+------+-------+
    ```
