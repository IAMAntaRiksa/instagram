import 'package:equatable/equatable.dart';

class Account extends Equatable {
  final String username;
  final String bio;
  final int followersCount;
  final int followingCount;
  final int postCount;

  Account({
    required this.username,
    required this.bio,
    required this.followersCount,
    required this.followingCount,
    required this.postCount,
  });

  @override
  List<Object> get props {
    return [
      username,
      bio,
      followersCount,
      followingCount,
      postCount,
    ];
  }

  @override
  bool get stringify => true;

  @override
  String toString() {
    return 'Account(username: $username, bio: $bio, followersCount: $followersCount, followingCount: $followingCount, postCount: $postCount)';
  }
}
