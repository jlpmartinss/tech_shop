import 'package:built_value/serializer.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

import '../flutter_flow/flutter_flow_util.dart';

import 'schema/users_record.dart';
import 'schema/laptops_record.dart';
import 'schema/desktops_record.dart';
import 'schema/components_record.dart';
import 'schema/peripherals_record.dart';
import 'schema/products_record.dart';
import 'schema/favourites_record.dart';
import 'schema/cart_record.dart';
import 'schema/serializers.dart';

export 'dart:async' show StreamSubscription;
export 'package:cloud_firestore/cloud_firestore.dart';
export 'schema/index.dart';
export 'schema/serializers.dart';

export 'schema/users_record.dart';
export 'schema/laptops_record.dart';
export 'schema/desktops_record.dart';
export 'schema/components_record.dart';
export 'schema/peripherals_record.dart';
export 'schema/products_record.dart';
export 'schema/favourites_record.dart';
export 'schema/cart_record.dart';

/// Functions to query UsersRecords (as a Stream and as a Future).
Stream<List<UsersRecord>> queryUsersRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<UsersRecord>> queryUsersRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<UsersRecord>> queryUsersRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      UsersRecord.collection,
      UsersRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query LaptopsRecords (as a Stream and as a Future).
Stream<List<LaptopsRecord>> queryLaptopsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      LaptopsRecord.collection,
      LaptopsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<LaptopsRecord>> queryLaptopsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      LaptopsRecord.collection,
      LaptopsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<LaptopsRecord>> queryLaptopsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      LaptopsRecord.collection,
      LaptopsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query DesktopsRecords (as a Stream and as a Future).
Stream<List<DesktopsRecord>> queryDesktopsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      DesktopsRecord.collection,
      DesktopsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<DesktopsRecord>> queryDesktopsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      DesktopsRecord.collection,
      DesktopsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<DesktopsRecord>> queryDesktopsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      DesktopsRecord.collection,
      DesktopsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ComponentsRecords (as a Stream and as a Future).
Stream<List<ComponentsRecord>> queryComponentsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ComponentsRecord.collection,
      ComponentsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ComponentsRecord>> queryComponentsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ComponentsRecord.collection,
      ComponentsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ComponentsRecord>> queryComponentsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      ComponentsRecord.collection,
      ComponentsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query PeripheralsRecords (as a Stream and as a Future).
Stream<List<PeripheralsRecord>> queryPeripheralsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      PeripheralsRecord.collection,
      PeripheralsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<PeripheralsRecord>> queryPeripheralsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      PeripheralsRecord.collection,
      PeripheralsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<PeripheralsRecord>> queryPeripheralsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      PeripheralsRecord.collection,
      PeripheralsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query ProductsRecords (as a Stream and as a Future).
Stream<List<ProductsRecord>> queryProductsRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      ProductsRecord.collection,
      ProductsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<ProductsRecord>> queryProductsRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      ProductsRecord.collection,
      ProductsRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<ProductsRecord>> queryProductsRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      ProductsRecord.collection,
      ProductsRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query FavouritesRecords (as a Stream and as a Future).
Stream<List<FavouritesRecord>> queryFavouritesRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      FavouritesRecord.collection,
      FavouritesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<FavouritesRecord>> queryFavouritesRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      FavouritesRecord.collection,
      FavouritesRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<FavouritesRecord>> queryFavouritesRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      FavouritesRecord.collection,
      FavouritesRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

/// Functions to query CartRecords (as a Stream and as a Future).
Stream<List<CartRecord>> queryCartRecord({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollection(
      CartRecord.collection,
      CartRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<List<CartRecord>> queryCartRecordOnce({
  Query Function(Query) queryBuilder,
  int limit = -1,
  bool singleRecord = false,
}) =>
    queryCollectionOnce(
      CartRecord.collection,
      CartRecord.serializer,
      queryBuilder: queryBuilder,
      limit: limit,
      singleRecord: singleRecord,
    );

Future<FFFirestorePage<CartRecord>> queryCartRecordPage({
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) =>
    queryCollectionPage(
      CartRecord.collection,
      CartRecord.serializer,
      queryBuilder: queryBuilder,
      nextPageMarker: nextPageMarker,
      pageSize: pageSize,
      isStream: isStream,
    );

Stream<List<T>> queryCollection<T>(Query collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.snapshots().handleError((err) {
    print('Error querying $collection: $err');
  }).map((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

Future<List<T>> queryCollectionOnce<T>(
    Query collection, Serializer<T> serializer,
    {Query Function(Query) queryBuilder,
    int limit = -1,
    bool singleRecord = false}) {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection);
  if (limit > 0 || singleRecord) {
    query = query.limit(singleRecord ? 1 : limit);
  }
  return query.get().then((s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList());
}

class FFFirestorePage<T> {
  final List<T> data;
  final Stream<List<T>> dataStream;
  final QueryDocumentSnapshot nextPageMarker;

  FFFirestorePage(this.data, this.dataStream, this.nextPageMarker);
}

Future<FFFirestorePage<T>> queryCollectionPage<T>(
  Query collection,
  Serializer<T> serializer, {
  Query Function(Query) queryBuilder,
  DocumentSnapshot nextPageMarker,
  int pageSize,
  bool isStream,
}) async {
  final builder = queryBuilder ?? (q) => q;
  var query = builder(collection).limit(pageSize);
  if (nextPageMarker != null) {
    query = query.startAfterDocument(nextPageMarker);
  }
  Stream<QuerySnapshot> docSnapshotStream;
  QuerySnapshot docSnapshot;
  if (isStream) {
    docSnapshotStream = query.snapshots();
    docSnapshot = await docSnapshotStream.first;
  } else {
    docSnapshot = await query.get();
  }
  final getDocs = (QuerySnapshot s) => s.docs
      .map(
        (d) => safeGet(
          () => serializers.deserializeWith(serializer, serializedData(d)),
          (e) => print('Error serializing doc ${d.reference.path}:\n$e'),
        ),
      )
      .where((d) => d != null)
      .toList();
  final data = getDocs(docSnapshot);
  final dataStream = docSnapshotStream?.map(getDocs);
  final nextPageToken = docSnapshot.docs.isEmpty ? null : docSnapshot.docs.last;
  return FFFirestorePage(data, dataStream, nextPageToken);
}

// Creates a Firestore document representing the logged in user if it doesn't yet exist
Future maybeCreateUser(User user) async {
  final userRecord = UsersRecord.collection.doc(user.uid);
  final userExists = await userRecord.get().then((u) => u.exists);
  if (userExists) {
    return;
  }

  final userData = createUsersRecordData(
    email: user.email,
    displayName: user.displayName,
    photoUrl: user.photoURL,
    uid: user.uid,
    phoneNumber: user.phoneNumber,
    createdTime: getCurrentTimestamp,
  );

  await userRecord.set(userData);
}
