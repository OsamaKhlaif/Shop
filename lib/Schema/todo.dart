import 'package:realm/realm.dart';

part 'todo.g.dart';

@RealmModel()
class _TodoSchema {
  @PrimaryKey()
  late final String id;
  late String name;
  late String owner_image;
  late String owner_name;
  late String parent;
  late String project_id;
  late String start_date;
  late String due_date;
  late String status;
}
