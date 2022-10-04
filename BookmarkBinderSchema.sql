CREATE TABLE bookmarks (
    bookmark_id SERIAL PRIMARY KEY NOT NULL,
    url_suffix varchar NOT NULL,
    hash varchar NOT NULL,
    created_at TIMESTAMPTZ
);

CREATE TABLE users (
    uid varchar NOT NULL PRIMARY KEY,
    local_id serial,
    created_at TIMESTAMPTZ 
);

CREATE TABLE user_bookmarks (
    user_bookmark_id SERIAL PRIMARY KEY NOT NULL,
    bookmark_id INT,
    uid_id varchar,
    created_at TIMESTAMPTZ
    CONSTRAINT fk_bookmark_id
        FOREIGN KEY(bookmark_id)
            REFERENCES bookmarks(bookmark_id),
    CONSTRAINT fk_uid
        FOREIGN KEY(uid_id),
            REFERENCES users(uid)
);




```````````