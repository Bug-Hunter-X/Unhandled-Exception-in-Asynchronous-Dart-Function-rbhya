# Unhandled Exception in Asynchronous Dart

This repository demonstrates a common error in asynchronous Dart code: rethrowing exceptions without providing additional context.  The `fetchData` function fetches data from a remote URL.  While it includes error handling, the use of `rethrow` makes it difficult to identify the exact location and reason for the failure when the exception bubbles up.

The `bug.dart` file contains the erroneous code.  The `bugSolution.dart` file provides a corrected version with improved error handling.  This improved solution provides more descriptive messages that enhance debugging and troubleshooting.
