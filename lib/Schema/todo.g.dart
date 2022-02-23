// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class TodoSchema extends _TodoSchema with RealmObject {
  TodoSchema(
    String id,
    String name,
    String owner_image,
    String owner_name,
    String parent,
    String project_id,
    String start_date,
    String due_date,
    String status,
  ) {
    RealmObject.set(this, 'id', id);
    this.name = name;
    this.owner_image = owner_image;
    this.owner_name = owner_name;
    this.parent = parent;
    this.project_id = project_id;
    this.start_date = start_date;
    this.due_date = due_date;
    this.status = status;
  }

  TodoSchema._();

  @override
  String get id => RealmObject.get<String>(this, 'id') as String;
  @override
  set id(String value) => throw RealmUnsupportedSetError();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  String get owner_image =>
      RealmObject.get<String>(this, 'owner_image') as String;
  @override
  set owner_image(String value) => RealmObject.set(this, 'owner_image', value);

  @override
  String get owner_name =>
      RealmObject.get<String>(this, 'owner_name') as String;
  @override
  set owner_name(String value) => RealmObject.set(this, 'owner_name', value);

  @override
  String get parent => RealmObject.get<String>(this, 'parent') as String;
  @override
  set parent(String value) => RealmObject.set(this, 'parent', value);

  @override
  String get project_id =>
      RealmObject.get<String>(this, 'project_id') as String;
  @override
  set project_id(String value) => RealmObject.set(this, 'project_id', value);

  @override
  String get start_date =>
      RealmObject.get<String>(this, 'start_date') as String;
  @override
  set start_date(String value) => RealmObject.set(this, 'start_date', value);

  @override
  String get due_date => RealmObject.get<String>(this, 'due_date') as String;
  @override
  set due_date(String value) => RealmObject.set(this, 'due_date', value);

  @override
  String get status => RealmObject.get<String>(this, 'status') as String;
  @override
  set status(String value) => RealmObject.set(this, 'status', value);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(TodoSchema._);
    return const SchemaObject(TodoSchema, [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('owner_image', RealmPropertyType.string),
      SchemaProperty('owner_name', RealmPropertyType.string),
      SchemaProperty('parent', RealmPropertyType.string),
      SchemaProperty('project_id', RealmPropertyType.string),
      SchemaProperty('start_date', RealmPropertyType.string),
      SchemaProperty('due_date', RealmPropertyType.string),
      SchemaProperty('status', RealmPropertyType.string),
    ]);
  }
}
