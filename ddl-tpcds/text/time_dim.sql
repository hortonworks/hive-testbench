create database if not exists ${DB};
use ${DB};

drop table if exists time_dim;

create external table time_dim
(
    t_time_sk                 int,
    t_time_id                 string,
    t_time                    int,
    t_hour                    int,
    t_minute                  int,
    t_second                  int,
    t_am_pm                   string,
    t_shift                   string,
    t_sub_shift               string,
    t_meal_time               string
)
row format delimited fields terminated by '|' 
location '${LOCATION}';
