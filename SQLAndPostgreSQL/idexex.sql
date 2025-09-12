CREATE INDEX ON users (username)
--DROP INDEX users_username_idx

select pg_size_pretty(pg_relation_size('users_username_idx'))

select relname,relkind
from pg_class
where relkind = 'i'
