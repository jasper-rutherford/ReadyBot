-- migrate:up

-- This table stores the message IDs for the ballots.
-- ballot_type is the primary key, ensuring that there is only one message ID per ballot type.
-- ballot_type can only be either 'utility' or 'vote'.
CREATE TABLE ballots_info (
  ballot_type TEXT PRIMARY KEY,
  message_id  TEXT NOT NULL,
  CHECK (ballot_type IN ('utility', 'vote'))
);

-- migrate:down

DROP TABLE IF EXISTS ballots_info;