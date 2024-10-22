import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final jsonString =
    '[{ "id": 1, "name": "User1", "email": "User1@gmail.com" }, { "id": 2, "name": "User2", "email": "User2@gmail.com" }, { "id": 3, "name": "User3", "email": "User3@gmail.com" }]';

class User {
  final int id;
  final String name;
  final String email;

  User({required this.id, required this.name, required this.email});
  User copyWith({int? id, String? name, String? email}) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }

  String toJson() {
    return '{ "id": $id, "name": "$name", "email": "$email" }';
  }

  factory User.fromJson(String json) {
    final jsonMappe = jsonDecode(json);
    return User(
      id: jsonMappe['id'],
      name: jsonMappe['name'],
      email: jsonMappe['email'],
    );
  }
}

class AppStateFakeAPI {
  final List<User> users;

  AppStateFakeAPI({required this.users});
  AppStateFakeAPI copyWith({List<User>? users}) {
    return AppStateFakeAPI(users: users ?? this.users);
  }

  String toJson() {
    return users.map((user) => user.toJson()).toList().toString();
  }

  factory AppStateFakeAPI.fromJson(Map<String, dynamic> json) {
    return AppStateFakeAPI(
      users: List<User>.from(json['users'].map((x) => User.fromJson(x))),
    );
  }
}

class UsersNotifier extends Notifier<AppStateFakeAPI> {
  @override
  AppStateFakeAPI build() {
    return AppStateFakeAPI(users: [
      User(id: 1, name: 'User1', email: 'User1@gmail.com'),
      User(id: 2, name: 'User2', email: 'User2@gmail.com'),
      User(id: 3, name: 'User3', email: 'User3@gmail.com'),
    ]);
  }

  Future<List<User>> fetcAllUsers() async {
    await Future.delayed(const Duration(milliseconds: 500));
    return state.users;
  }

  Future<void> addUser(User user) async {
    state = state.copyWith(users: [...state.users, user]);
  }

  Future<void> deleteUser() async {
    state = state.copyWith(users: [...state.users]..removeLast());
  }
}

final getAllUsers = FutureProvider<List<User>>(
  (ref) async {
    ref.watch(fakeAPINotifierProvider);
    return ref.watch(fakeAPINotifierProvider.notifier).fetcAllUsers();
  },
);

final fakeAPINotifierProvider = NotifierProvider<UsersNotifier, AppStateFakeAPI>(() => UsersNotifier());




// import 'package:flutter_riverpod/flutter_riverpod.dart';

// class User {
//   final int id;
//   final String name;
//   final String email;

//   User({required this.id, required this.name, required this.email});
//   User copyWith({int? id, String? name, String? email}) {
//     return User(
//       id: id ?? this.id,
//       name: name ?? this.name,
//       email: email ?? this.email,
//     );
//   }
// }

// class UsersState {
//   final List<User> users;

//   UsersState({required this.users});
//   UsersState copyWith({List<User>? users}) {
//     return UsersState(users: users ?? this.users);
//   }
// }

// class UsersNotifier extends Notifier<UsersState> {
//   @override
//   UsersState build(){
   
//     return UsersState(users: [
//         User(id: 1, name: 'User1', email: 'User1@gmail.com'),
//         User(id: 2, name: 'User2', email: 'User2@gmail.com'),
//         User(id: 3, name: 'User3', email: 'User3@gmail.com'),
//       ]);
//   } 

//   Future<void> addUser(User user) async {
//     state =state.copyWith(users:[...state.users, user] );
//   }

//   Future<void> deleteUser() async {
//     state =state.copyWith(users: [...state.users]..removeLast());
//   }
// }

// final fakeAPIFutureProvider = FutureProvider<UsersState>(
//   (ref) async {
//     await Future.delayed(
//       const Duration(milliseconds: 500),
//     );
//     return ref.watch(fakeAPINotifierProvider);
//   },
// );
// final fakeAPINotifierProvider = NotifierProvider<UsersNotifier, UsersState>(() => UsersNotifier());




