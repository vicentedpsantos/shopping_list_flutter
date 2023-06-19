import 'package:logging/logging.dart';

final log = Logger('Logger');

void logInfo(String origin, List<String> messages) {
  Logger.root.level = Level.INFO;
  Logger.root.onRecord.listen((record) {
    print('${record.level.name}: ${record.time}: ${record.message}');
  });

  for (final message in messages) {
    log.info('[$origin] $message');
  }
}
