import 'package:flutter/material.dart';
import 'package:cctv_news/configs/GlobalConfig.dart';

/// 首页天气提醒小组件
class WeatherTipsWidget extends StatefulWidget {
  final String location;
  final String weatherDesc;
  final String temperatureCurrent;
  final String temperatureRange;
  WeatherTipsWidget({
    this.location,
    this.weatherDesc,
    this.temperatureRange,
    this.temperatureCurrent,
  });

  @override
  _WeatherTipsWidgetState createState() => _WeatherTipsWidgetState();
}

class _WeatherTipsWidgetState extends State<WeatherTipsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(height: 44.0),
      color: Color(0xfff3f3f3),
      padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Text(widget.location ?? '北京',
                    style: GlobalConfig.textThemeConfig.defaultSubTextStyle),
                SizedBox(
                  width: 10.0,
                ),
                Icon(
                  Icons.timelapse,
                  color: Color(0xff245DB4),
                  size: 16.0,
                ),
                SizedBox(
                  width: 4.0,
                ),
                Text(
                  widget.weatherDesc ?? '多云 -6~2℃  |  ',
                  style: GlobalConfig.textThemeConfig.defaultSubTextStyle
                      .copyWith(fontSize: 15.0),
                ),
                Text(
                  widget.temperatureCurrent ?? '1℃',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff245DB4),
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              print('点击切换城市');
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Icon(
                  Icons.location_on,
                  size: 18.0,
                  color: GlobalConfig.colorConfig.defaultThemeColor,
                ),
                Text(
                  '切换城市',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: GlobalConfig.colorConfig.defaultThemeColor),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
