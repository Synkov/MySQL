SELECT SUM(likes) 
FROM (SELECT COUNT(*) AS likes
	  FROM likes, profiles
	  WHERE to_user_id = profiles.user_id
	  GROUP BY to_user_id
	  ORDER BY profiles.birthday DESC
	  LIMIT 10) as countlikes
;
