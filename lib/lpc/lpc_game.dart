import 'package:bonfire/bonfire.dart';
import 'package:example/lpc/lpc_player.dart';
import 'package:example/lpc/lpc_sprite_sheet_loader.dart';
import 'package:example/lpc/widgets/button_interface.dart';
import 'package:flutter/material.dart';

///
/// Created by
///
/// ─▄▀─▄▀
/// ──▀──▀
/// █▀▀▀▀▀█▄
/// █░░░░░█─█
/// ▀▄▄▄▄▄▀▀
///
/// Rafaelbarbosatec
/// on 27/06/22
/// Para funcionar corretamente na web deve executar com flag --dart-define=BROWSER_IMAGE_DECODING_ENABLED=false
/// flutter run -d chrome --web-renderer canvaskit --dart-define=BROWSER_IMAGE_DECODING_ENABLED=false --release
///
/// issue: https://github.com/flutter/flutter/issues/103803
class LPCGame extends StatelessWidget {
  const LPCGame({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BonfireWidget(
      joystick: Joystick(
        keyboardConfig: KeyboardConfig(),
        directional: JoystickDirectional(),
      ),
      map: WorldMapByTiled(
        'tiled/mapa2.json',
        forceTileSize: Vector2(32, 32),
      ),
      cameraConfig: CameraConfig(zoom: 2),
      overlayBuilderMap: {
        ButtonInterface.name: ButtonInterface.builder,
      },
      initialActiveOverlays: [
        ButtonInterface.name,
      ],
      player: LPCPlayer(
        position: Vector2(140, 140),
        customStatus: CustomStatus(),
      ),
      onDispose: () => FollowerWidget.remove(LPCPlayer.customWidgetKey),
    );
  }
}
