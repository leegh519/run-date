enum Year {
  y2024('2024년'),
  y2025('2025년'),
  ;

  final String name;

  const Year(this.name);
}

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

enum Region {
  seoul('서울'),
  gyeonggi('경기'),
  incheon('인천'),
  gangwon('강원'),
  chungbuk('충북'),
  chungnam('충남'),
  daejeon('대전'),
  sejong('세종'),
  jeonbuk('전북'),
  jeonnam('전남'),
  gwangju('광주'),
  gyeongbuk('경북'),
  gyeongnam('경남'),
  daegu('대구'),
  busan('부산'),
  ulsan('울산'),
  jeju('제주'),
  abroad('해외'),
  other('기타');

  final String name;

  const Region(this.name);
}
