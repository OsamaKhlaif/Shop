// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projectSchema.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class ProjectSchema extends _ProjectSchema with RealmObject {
  ProjectSchema(
    String id,
    String name,
  ) {
    RealmObject.set(this, 'id', id);
    this.name = name;
  }

  ProjectSchema._();

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => throw RealmUnsupportedSetError();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(ProjectSchema._);
    return const SchemaObject(ProjectSchema, [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
    ]);
  }
}
