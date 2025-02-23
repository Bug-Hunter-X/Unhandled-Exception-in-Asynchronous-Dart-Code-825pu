# Unhandled Exception in Asynchronous Dart Code

This repository demonstrates a common bug in Dart code involving asynchronous operations and exception handling. The `fetchData` function fetches data from a remote API.  The issue lies in the `catch` block; it currently only prints the error but doesn't propagate it up the call stack.  This can lead to silent failures where the application doesn't explicitly signal an error condition.

The `bug.dart` file contains the buggy code. The solution, found in `bugSolution.dart`, addresses this by re-throwing the exception.