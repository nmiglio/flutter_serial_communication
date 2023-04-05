import 'package:flutter/services.dart';
import 'package:flutter_serial_communication/models/device_info.dart';

import 'flutter_serial_communication_platform_interface.dart';

class FlutterSerialCommunication {
  Future<List<String>?> getAvailableDevices() {
    return FlutterSerialCommunicationPlatform.instance.getAvailableDevices();
  }

  Future<List<DeviceInfo>> getDetailedAvailableDevices() async {
    return FlutterSerialCommunicationPlatform.instance
        .getDetailedAvailableDevices();
  }

  Future<bool> connect(int index, int baudRate) async {
    return FlutterSerialCommunicationPlatform.instance.connect(index, baudRate);
  }

  Future<void> disconnect() async {
    return FlutterSerialCommunicationPlatform.instance.disconnect();
  }

  Future<bool> write(Uint8List data) async {
    final isSent =
        await FlutterSerialCommunicationPlatform.instance.write(data);
    return isSent;
  }

  EventChannel getSerialMessageListener() {
    return FlutterSerialCommunicationPlatform.instance
        .getSerialMessageListener();
  }

  EventChannel getDeviceConnectionListener() {
    return FlutterSerialCommunicationPlatform.instance
        .getDeviceConnectionListener();
  }
}
