import 'dart:isolate';

main(List<String> args, SendPort sendPort) {
  ReceivePort receivePort = ReceivePort();
  sendPort.send(receivePort.sendPort);

  receivePort.listen((msg) {
    sendPort.send('ECHO: $msg');
  });
}