void main() async {
  Stream<int> stream = boatStream();
  stream.listen((recievedData) {
    print("Recieved boat no : ${recievedData.toString()}");
  });
}

Stream<int> boatStream() async* {
  for (int i = 1; i < 10; i++) {
    print("SENT boat no. " + i.toString());
    await Future.delayed(const Duration(seconds: 2));
    yield i;
  }
}
