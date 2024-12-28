#!/bin/sh

python DjangoAPI/manage.py migrate --no-input
python DjangoAPI/manage.py collectstatic default	09:22:11.715909-0700	exchangesyncd	Change Item property_blob size: 5322

default	09:22:11.717092-0700	exchangesyncd	pushing items [(

    "<0x83e30e1c0> Added Canceled: DriveUX: Dev-QA sync up  <NSDateComponents: 0x883963590> {\n    TimeZone: America/Denver (MST) offset -25200\n    Era: 1\n    Calendar Year: 2019\n    Month: 7\n    Day: 2\n    Hour: 10\n    Minute: 0\n    Second: 0\n    Nanosecond: 0 <NSDateComponents: 0x8839634b0> {\n    TimeZone: America/Denver (MST) offset -25200\n    Era: 1\n    Calendar Year: 2019\n    Month: 7\n    Day: 2\n    Hour: 11\n    Minute: 0\n    Second: 0\n    Nanosecond: 0 Event Item change 13649 internal (null) item 13210 SyncProtocol-EWS-0E0BFC6C-F845-443A-BAE6-B98336F55515"

)]

error	09:22:11.720241-0700	exchangesyncd	Error getting event with uniqueId F52A93B6-54F9-40B4-8209-35E209D0EE0E/RID=583776000: Error Domain=EKCADErrorDomain Code=1010 "Object not found. It may have been deleted." UserInfo={NSLocalizedDescription=Object not found. It may have been deleted.}

default	09:22:11.725795-0700	exchangesyncd	creating event [<0x83e30e1c0> Added Canceled: DriveUX: Dev-QA sync up  <NSDateComponents: 0x883963590> {

    TimeZone: America/Denver (MST) offset -25200

    Era: 1

    Calendar Year: 2019

    Month: 7

    Day: 2

    Hour: 10

    Minute: 0

    Second: 0

    Nanosecond: 0 <NSDateComponents: 0x8839634b0> {

    TimeZone: America/Denver (MST) offset -25200

    Era: 1

    Calendar Year: 2019

    Month: 7

    Day: 2

    Hour: 11

    Minute: 0

    Second: 0

    Nanosecond: 0 Event Item change 13649 internal (null) item 13210 SyncProtocol-EWS-0E0BFC6C-F845-443A-BAE6-B98336F55515]

error	09:22:11.727365-0700	exchangesyncd	Error getting event with uniqueId F52A93B6-54F9-40B4-8209-35E209D0EE0E/RID=583776000: Error Domain=EKCADErrorDomain Code=1010 "Object not found. It may have been deleted." UserInfo={NSLocalizedDescription=Object not found. It may have been deleted.}

error	09:22:11.730119-0700	exchangesyncd	Tried to set proposed start date on invalid event: <EKEvent rowid=[16952] UUID=[716ADEF7-FE8B-485F-B17E-D44200878936] start-date=[2019-07-02 16:00:00 +0000]>
# python DjangoAPI/manage.py runserver 0.0.0.0:8000
# gunicorn DjangoAPI.wsgi:application --bind 0.0.0.0:8000
gunicorn -w 2 -b 0.0.0.0:8000 --chdir /code/DjangoAPI DjangoAPI.wsgi
