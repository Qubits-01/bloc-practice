// ignore_for_file: avoid_print

Stream<int> boatStream() async* {
  for (int i = 0; i < 10; i++) {
    print('SENT boat no. $i');
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}

void main(List<String> args) async {
  Stream<int> stream = boatStream();

  stream.listen((receivedData) {
    print('RECEIVED boat no. $receivedData');
  });
}
