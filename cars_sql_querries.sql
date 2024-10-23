# dataset
select * from cars;

# max score given for air pollution and green house score for each fuel type.
select fuel,max(air_pollution_score) as max_air_pol, max(greenhouse_gas_score) as max_greenhouse_score 
from cars group by fuel
order by max_air_pol desc, max_greenhouse_score desc;


## Average display and cyl of each car model ?
select model, round(avg(displ)) as avg_disp, round(avg(Cyl)) as avg_cyl from cars
group by model;


## Air polution and greenhouse score of each fuel type
select fuel, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by fuel
order by air_pol desc, Avg_greenscore desc;


## Air polution and greenhouse score of each vehicle type
select veh_class, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by veh_class
order by air_pol desc;

## Air polution and greenhouse score of each transmission type
select trans, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by trans
order by air_pol desc;

## Air polution and greenhouse score of each drive type
select drive, round(avg(air_pollution_score)) as air_pol,
round(avg(greenhouse_gas_score)) as Avg_greenscore
from cars
group by drive
order by air_pol desc;

# which fuel gives best mileage in city and highway
select fuel, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by fuel
order by Avg_city, avg_highway;

# which drive gives best mileage in city and highway
select drive, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by drive
order by Avg_city, avg_highway;

# which transmission type gives best mileage in city and highway
select trans, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by trans
order by Avg_city, avg_highway;


# which vehicle class gives best mileage in city and highway
select veh_class, round(avg(city_mpg)) as Avg_city, round(avg(hwy_mpg)) as avg_highway, round(avg(hwy_mpg))-round(avg(city_mpg)) as Diff_avg
from cars
group by veh_class
order by Diff_avg desc,Avg_city, avg_highway;

# number of 2-wheeldrive and 4-wheeldrive cars for each fuel type
create or replace view wheel_drive as select fuel, veh_class, case 
when drive = "2WD" then 1
end as 2wd,
case
when drive = "4WD" then 1
end as 4wd
from cars;
select fuel, sum(2wd) as sum_2wd, sum(4wd) as sum_4wd from wheel_drive group by fuel;

select veh_class, sum(2wd) as sum_2wd, sum(4wd) as sum_4wd from wheel_drive group by veh_class;


#  Number of fuel types of each vehicle class.
create or replace view fuel_type as select veh_class , case
when fuel = "Gasoline" then 1
else 0
end as Gasoline,
case
when fuel = 'Diesel'then 1
else 0
end as Diesel,
case
when fuel = "Ethanol" then 1
else 0
end as Ethanol,
case
when fuel = "Electricity" then 1
else 0
end as Electricity,
case
when fuel = "Gas" then 1
else 0
end as Gas
from cars;

select veh_class,sum(Gasoline) as Total_Gasoline,sum(Diesel) as Total_Diesel,
sum(Ethanol) as Total_Ethanol, sum(Electricity) as Total_Electricity,
sum(Gas) as Total_Gas  from fuel_type group by veh_class;


