import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:playing_with_canvas/painter/circle_frame_painter.dart';
import 'dart:ui' as ui;
import 'package:image/image.dart' as image;

class CircleFrame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ui.Image>(
        future: getUiImage("assets/animal.jpg", 250, 300),
        builder: (context, snapshot) => Center(
              child: Container(
                width: 400,
                height: 400,
                child: CustomPaint(
                  size: Size(400, 400),
                  painter: CirlceFramePainter(snapshot.data),
                ),
              ),
            ));
  }

  Future<ui.Image> getUiImage(
      String imageAssetPath, int height, int width) async {
    final ByteData assetImageByteData = await rootBundle.load(imageAssetPath);
    image.Image baseSizeImage =
        image.decodeImage(assetImageByteData.buffer.asUint8List());
    image.Image resizeImage =
        image.copyResize(baseSizeImage, height: height, width: width);
    ui.Codec codec =
        await ui.instantiateImageCodec(image.encodePng(resizeImage));
    ui.FrameInfo frameInfo = await codec.getNextFrame();
    return frameInfo.image;
  }
}
