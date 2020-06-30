%dw 2.0
import * from dw::test::Asserts
---
payload must equalTo({
  "abbreviation": "PDT",
  "client_ip": "103.99.150.189",
  "datetime": "2020-06-29T23:14:57.867314-07:00",
  "day_of_week": 1,
  "day_of_year": 181,
  "dst": true,
  "dst_from": "2020-03-08T10:00:00+00:00",
  "dst_offset": 3600,
  "dst_until": "2020-11-01T09:00:00+00:00",
  "raw_offset": -28800,
  "timezone": "America/Los_Angeles",
  "unixtime": 1593497697,
  "utc_datetime": "2020-06-30T06:14:57.867314+00:00",
  "utc_offset": "-07:00",
  "week_number": 27
})