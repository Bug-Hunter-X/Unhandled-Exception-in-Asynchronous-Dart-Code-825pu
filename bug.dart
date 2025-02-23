```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Handle successful response
      final json = jsonDecode(response.body);
      // Access the data as you see fit
      print(json['key']);
    } else {
      // Handle error response
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Handle exceptions
    print('Error: $e');
    // Here's where the bug might reside:  re-throwing the exception or not handling it completely.
  }
}
```