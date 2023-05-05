SELECT '#' || (tag->>'text'::TEXT) AS tag, count(*) as count

