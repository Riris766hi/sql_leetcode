-- Trips and Users

select Request_at as day, 
    round(cast(sum(case when Status like 'cancelled%' then 1 else 0 end) as float)/count(*),2) as 'Cancellation Rate'
    from trips
    where
    Client_Id not in (select users_id from users where banned = 'Yes')
    and Driver_Id not in (select users_id from users where banned = 'Yes')
    and Request_at >= '2013-10-01' and Request_at <= '2013-10-03'
    group by Request_at;
