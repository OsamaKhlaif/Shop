import 'package:realm/realm.dart';

part 'projectSchema.g.dart';

@RealmModel()
class _ProjectSchema {
  @PrimaryKey()
  late final String id;
  late String name;
}
