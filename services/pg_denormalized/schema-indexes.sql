CREATE INDEX gin_index ON tweets_jsonb USING gin((data->'entities'->'hashtags'));
CREATE INDEX gin_jsonb_extended ON tweets_jsonb USING gin((data->'extended_tweet'->'entities'->'hashtags'));
CREATE INDEX ON tweets_jsonb((data->>'lang'));
CREATE INDEX ON tweet_jsonb USING gin(to_tsvector('english', COALESCE(data->'extended_tweet'->>'full_text', data->>'text'))) where data->>'lang'='en';
