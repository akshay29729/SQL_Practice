select
      date_add(now(), interval 1 day),
      date_add(now(), interval 1 year),
      date_add(now(), interval -1 year),
      date_add(now(), interval 1 hour),
      date_sub(now(), interval 1 year),
      date_sub(now(), interval -1 year),
      datediff('2019-01-01','2019-01-05'),
      datediff('2019-01-05','2019-01-01'),
      datediff('2019-01-05 09:12:11','2019-01-01 09:11:1'), -- Gives difference in days only
      time_to_sec('09:00'),
      time_to_sec('9:00'),
      time_to_sec('9:00') - time_to_sec('09:01')