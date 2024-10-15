// createTestDB.js
print('Creating testdb database...');

// Connect to the admin database to authenticate
db = db.getSiblingDB('testdb');

// Optionally, you can add collections or initial data here, for example:
// db.createCollection('users');
// db.users.insert({ name: "John Doe", email: "john@example.com" });

print('testdb database created.');
