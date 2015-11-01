drop index IF EXISTS ScheduleIndex;

create index ScheduleIndex on Schedule (
  stop_area,
  route,
  direction,
  schedule_type
);