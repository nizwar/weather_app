export 'navigations.dart';
export 'preferences.dart';

bool get alreadyNight {
  var now = DateTime.now();
  if (now.hour >= 0 && now.hour < 5) return true;
  if (now.hour >= 20 && now.hour < 24) return true;
  return false;
}

DateTime? unixToDateTime(int? data) {
  if (data == null) return null;
  final int millis = data * 1000;
  return DateTime.fromMillisecondsSinceEpoch(millis);
}
