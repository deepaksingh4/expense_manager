
class InvalidLoginDetails implements Exception{
  String error() => 'Login failed due to invalid details';
}

class IssueGettingGames implements Exception {
  final String error;
  final int errorCode;

  IssueGettingGames({this.error = 'Issue getting games', required this.errorCode});

}