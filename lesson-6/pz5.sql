SELECT users.id AS id, COUNT(media.user_id) + COUNT(likes.from_user_id) + COUNT(messages.from_user_id) AS acts
  FROM users
       LEFT JOIN media
              ON users.id = media.user_id
       LEFT JOIN likes
              ON users.id = likes.from_user_id
       LEFT JOIN messages
              ON users.id = messages.from_user_id
 GROUP BY id
 ORDER BY acts
 LIMIT 10;