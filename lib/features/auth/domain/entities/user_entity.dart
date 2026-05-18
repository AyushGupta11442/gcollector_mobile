// In Clean Architecture + Flutter, entities are the pure core business objects of your app.

// They represent:

// WHAT your app works with
// NOT how data comes from API
// NOT how UI displays it

// Think of entities as:

// the “truth” of your business/domain

// Example
// Suppose you are building:
// marketplace app
// chat app
// finance app
// You’ll have things like:
// User
// Product
// Message
// Transaction

// These are entities.


class UserEntity {
  final String id;
  final String email;

  UserEntity({
    required this.id,
    required this.email,
  });
}