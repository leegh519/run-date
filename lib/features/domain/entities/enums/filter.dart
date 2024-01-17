enum Month {
  jan('1월'),
  feb('2월'),
  mar('3월'),
  apr('4월'),
  may('5월'),
  jun('6월'),
  jul('7월'),
  aug('8월'),
  sep('9월'),
  oct('10월'),
  nov('11월'),
  dec('12월');

  final String name;

  const Month(this.name);
}

enum Reception {
  progress('접수중'),
  end('완료');

  final String name;

  const Reception(this.name);
}

enum Event {
  full('풀'),
  half('하프'),
  ten('10km'),
  five('5km');

  final String name;

  const Event(this.name);
}

enum NotificationOnOff {
  onn('ON'),
  off('OFF');

  final String name;

  const NotificationOnOff(this.name);
}
