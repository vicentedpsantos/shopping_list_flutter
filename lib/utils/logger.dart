import 'package:intl/intl.dart';

void logInfo(String origin, List<String> messages) {
  DateTime now = DateTime.now();
  String formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);

  for (final message in messages) {
    print('[$formattedDate] [$origin] $message');
  }
}
