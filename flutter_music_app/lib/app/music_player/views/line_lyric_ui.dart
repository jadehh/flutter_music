import 'package:flutter/material.dart';
import 'package:flutter_lyric/lyric_ui/lyric_ui.dart';

///Sample Netease style
///should be extends LyricUI implementation your own UI.
///this property only for change UI,if not demand just only overwrite methods.
class LineLyricUi extends LyricUI {
  Color color;
  double defaultSize;
  double defaultExtSize;
  double otherMainSize;
  double bias;
  double lineGap;
  double inlineGap;
  LyricAlign lyricAlign;
  LyricBaseLine lyricBaseLine;
  bool highlight;
  HighlightDirection highlightDirection;

  LineLyricUi(
      { this.color = Colors.red,
        this.defaultSize = 10,
        this.defaultExtSize = 14,
        this.otherMainSize = 16,
        this.bias = 0.5,
        this.lineGap = 25,
        this.inlineGap = 25,
        this.lyricAlign = LyricAlign.LEFT,
        this.lyricBaseLine = LyricBaseLine.CENTER,
        this.highlight = false,
        this.highlightDirection = HighlightDirection.LTR});

  LineLyricUi.clone(LineLyricUi uiNetease)
      : this(
    color: uiNetease.color,
    defaultSize: uiNetease.defaultSize,
    defaultExtSize: uiNetease.defaultExtSize,
    otherMainSize: uiNetease.otherMainSize,
    bias: uiNetease.bias,
    lineGap: uiNetease.lineGap,
    inlineGap: uiNetease.inlineGap,
    lyricAlign: uiNetease.lyricAlign,
    lyricBaseLine: uiNetease.lyricBaseLine,
    highlight: uiNetease.highlight,
    highlightDirection: uiNetease.highlightDirection,
  );

  @override
  TextStyle getPlayingExtTextStyle() =>
      TextStyle(color: color, fontSize: defaultExtSize);

  @override
  TextStyle getOtherExtTextStyle() => TextStyle(
    color: color,
    fontSize: defaultExtSize,
  );

  @override
  TextStyle getOtherMainTextStyle() =>
      TextStyle(color: color, fontSize: otherMainSize);

  @override
  TextStyle getPlayingMainTextStyle() => TextStyle(
    color: color,
    fontSize: defaultSize,
  );

  @override
  double getInlineSpace() => inlineGap;

  @override
  double getLineSpace() => lineGap;

  @override
  double getPlayingLineBias() => bias;

  @override
  LyricAlign getLyricHorizontalAlign() => lyricAlign;

  @override
  LyricBaseLine getBiasBaseLine() => lyricBaseLine;

  @override
  bool enableHighlight() => highlight;

  @override
  HighlightDirection getHighlightDirection() => highlightDirection;
}
