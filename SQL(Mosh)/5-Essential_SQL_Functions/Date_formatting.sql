select
     date_format(now(),'%y'),
     date_format(now(),'%Y'),
     date_format(now(),'%m'),
     date_format(now(),'%M'),
     date_format(now(),'%M-%y'),
     date_format(now(),'%M %d, %Y' ),
     time_format(now(),'%H:%i,%p' ),
    -- time_format(now(),'%H:%i,%a' ),
     time_format(now(),'%H:%i:%s,%p' )