```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      print(json['key']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Improved error handling: Re-throw the exception to be handled elsewhere.
    print('Error: $e'); // Add more specific error reporting here, e.g., logging
    rethrow; // This is crucial for propagating the error.
  }
}
```