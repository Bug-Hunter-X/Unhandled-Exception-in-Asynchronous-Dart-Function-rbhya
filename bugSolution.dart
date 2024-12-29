```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://example.com/data'));
    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
    } else {
      throw Exception('Failed to load data: ${response.statusCode} from https://example.com/data');
    }
  } catch (e, stacktrace) {
    print('Error fetching data: $e, stacktrace: $stacktrace');
    //Re-throwing with context can be useful for higher-level error handling.
    //For example, you could catch this exception in a top-level error handler.
    throw Exception('Error during data fetch: $e',StackTrace.fromString(stacktrace.toString()));
  }
}
```