import 'package:web_admin_dashboard/domain/entities/user.dart';

class Group {
  final int? id;
  final User? user;
  final int? updateDurationSeconds;
  final int? lastIotChangesTimeUnix;

  Group({
    this.id,
    this.user,
    this.updateDurationSeconds,
    this.lastIotChangesTimeUnix,
  });
}
