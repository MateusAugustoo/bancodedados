create user A1@localhost identified by '1234';

grant all on locadora.* to A1@localhost;

create user Az@localhost identified by '1234';

grant select on locadora.clientes to Az@localhost;

drop user A1@localhost, Az@localhost;

revoke select on clientes from Az@localhost;

drop user Az@localhost;