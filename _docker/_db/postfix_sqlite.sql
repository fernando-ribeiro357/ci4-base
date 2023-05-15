CREATE TABLE postfixadmin_mailbox
(
    username       text(255),
    password       text(255),
    name           text(255),
    maildir        text(255),
    quota          INTEGER,
    local_part     text(255),
    domain         text(255),
    created        TEXT(19),
    modified       TEXT(19),
    active         INTEGER,
    phone          text(30),
    email_other    text(255),
    token          text(255),
    token_validity TEXT(19)
);
CREATE INDEX postfixadmin_mailbox_username_IDX ON postfixadmin_mailbox (username);

-- postfix.postfixadmin_quota2 definition

CREATE TABLE postfixadmin_quota2
(
    username text(100),
    bytes    INTEGER,
    messages INTEGER
);

CREATE INDEX postfixadmin_quota_IDX ON postfixadmin_quota (username);