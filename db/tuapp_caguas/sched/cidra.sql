
-- Terminal de Caguas a Cidra Lunes a Viernes
with trip as (
    SELECT
      'CI' route,
      'TERM_CAGUAS' stop_area,
      'CIDRA' direction,
      'WORKDAY' schedule_type
), stop_times as (
  select time '05:00:00' stop_time
  union select time '05:20:00'
  union select time '05:40:00'
  union select time '06:00:00'
  union select time '06:20:00'
  union select time '06:40:00'
  union select time '07:00:00'
  union select time '07:20:00'
  union select time '07:40:00'
  union select time '08:00:00'
  union select time '08:30:00'
  union select time '09:00:00'
  union select time '09:30:00'
  union select time '10:00:00'
  union select time '10:30:00'
  union select time '11:00:00'
  union select time '11:30:00'
  union select time '12:00:00'
  union select time '12:30:00'
  union select time '13:00:00'
  union select time '13:30:00'
  union select time '14:00:00'
  union select time '14:30:00'
  union select time '15:00:00'
  union select time '15:30:00'
  union select time '16:00:00'
  union select time '16:30:00'
  union select time '17:00:00'
  union select time '17:10:00'
  union select time '18:00:00'
  union select time '18:10:00'

) INSERT INTO schedule (route, stop_area, direction, schedule_type, stop_time)
  select trip.route, trip.stop_area, trip.direction, trip.schedule_type, stop_times.stop_time
  from trip, stop_times order by stop_times.stop_time;


-- Terminal de Caguas a Cidra Fin de Semana
with trip as (
    SELECT
      'CI' route,
      'TERM_CAGUAS' stop_area,
      'CIDRA' direction,
      'RESTDAY' schedule_type
), stop_times as (
  select time '07:30:00' stop_time
  union select time '09:00:00'
  union select time '10:30:00'
  union select time '12:00:00'
  union select time '13:45:00'
  union select time '15:00:00'
  union select time '16:00:00'

) INSERT INTO schedule (route, stop_area, direction, schedule_type, stop_time)
  select trip.route, trip.stop_area, trip.direction, trip.schedule_type, stop_times.stop_time
  from trip, stop_times order by stop_times.stop_time;
