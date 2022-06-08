import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TechShopFirebaseUser {
  TechShopFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

TechShopFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TechShopFirebaseUser> techShopFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TechShopFirebaseUser>(
            (user) => currentUser = TechShopFirebaseUser(user));
