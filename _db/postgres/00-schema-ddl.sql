CREATE SCHEMA ci4;


/* Novo script de criação da tabela de sessão do Codeigniter 4.2.7
 * @see https://codeigniter4.github.io/userguide/libraries/sessions.html#databasehandler-driver
 */
CREATE TABLE ci4.ci_sessions
(
    id          varchar(128)                          NOT NULL,
    ip_address  inet                                  NOT NULL,
    "timestamp" timestamptz DEFAULT CURRENT_TIMESTAMP NOT NULL,
    "data"      bytea       DEFAULT ''                NOT NULL
);
CREATE INDEX ix_cisessions_timestamp ON ci4.ci_sessions ("timestamp");