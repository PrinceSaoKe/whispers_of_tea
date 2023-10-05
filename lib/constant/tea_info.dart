import 'package:flutter/material.dart';
import 'package:whispers_of_tea/app_theme.dart';

class TeaInfo {
  TeaInfo({
    required this.name,
    required this.temperature,
    required this.teaWeight,
    required this.waterVolume,
    required this.warmOrCold,
    required this.introduction,
    required this.makeTeaMethod,
    required this.teaWaterRatio,
    required this.time,
    required this.note,
    required this.color,
  });

  String name;
  int temperature;
  int teaWeight;
  int waterVolume;
  String warmOrCold;
  String introduction;
  String makeTeaMethod;
  String teaWaterRatio;
  String time;
  String note;
  Color color;

  static List<TeaInfo> teaInfoList = [
    TeaInfo(
      name: '绿茶',
      temperature: 85,
      teaWeight: 3,
      waterVolume: 130,
      warmOrCold: '性寒',
      introduction:
          '绿茶是传统六大茶类之一，属于不发酵茶。茶叶的产地广泛分布在陕西、浙江、福建、云南、河南、安徽、湖北等地，采用鲜嫩的茶树芽叶经过杀青、揉捻和干燥等工序制作而成。',
      makeTeaMethod:
          '水温不宜过高，最好在80-85°C左右这个温度并不是刚烧开的水，而是将水烧开后静置1-2分钟。冲泡时，可以使用吊水的方式沿着杯壁缓缓注水，避免直接冲击茶叶。',
      teaWaterRatio: '一般是1:50，即1克茶叶配50毫升水。如果使用普通的玻璃杯，一般容量为200毫升，只需要放入约4克茶叶即可。',
      time:
          '第一泡只需浸泡30秒到60秒左右，当茶汤剩余1/3时再注水，第二泡的时间稍微延长，浸泡40秒到90秒；之后的泡法根据茶汤的浓度逐渐延长。',
      note: '选择玻璃杯或玻璃壶进行冲泡。一方面上好的绿茶具有较强的观赏性；另一方面，绿茶的芽叶较为嫩嫩的，使用盖碗等容器容易烫熟或烫伤茶叶。',
      color: AppTheme.greenTeaThemeColor,
    ),
    TeaInfo(
      name: '红茶',
      temperature: 95,
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性温',
      introduction: '红茶是我国最大的出口茶，属于全发酵茶类。\n它以干茶色泽、冲泡后的茶汤和叶底呈现红色为主调而得名。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约90°C的水（沿碗壁注水），浸润约5秒后即可出汤，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '一般为1:25，即1克茶叶配25毫升水,茶叶用量约为5克，水量约为120毫升。',
      time:
          '红茶的出汤时间要快，前13泡都是约5秒出汤，从第4泡开始逐渐延长至约10秒，第810泡为约15秒，依次递增。出汤后不要盖上茶杯的盖子。',
      note: '在冲泡红茶时要注意水温不宜太低，以免无法发挥红茶独特的甜香滋味。每一泡的盖碗茶汤一定要倒干净，以保持后续茶汤的口感。',
      color: AppTheme.redTeaThemeColor,
    ),
    TeaInfo(
      name: '黄茶',
      temperature: 90,
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性凉',
      introduction: '黄茶属于轻微发酵茶类，具有黄汤和黄叶的特点。\n制茶工艺与绿茶相似，但在过程中有焖黄的环节。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约90℃的水（沿碗壁注水），浸润约5秒后即可出汤，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '一般为1:25，即1克茶叶配25毫升水，茶叶用量约为5克，水量约为120毫升。',
      time:
          '出汤时间较短，最好的口感在头几泡，不需要进行茶叶洗涤，第一泡即可真接品饮。如果使用盖碗，约6秒左右即可出汤，如果使用玻璃杯，漫泡约3分钟后即可饮用。',
      note: '最好使用玻璃杯作为茶具。投茶量过多是导致茶汤过苦过涩的主要原因。对于比较嫩的芽茶，可以使用85°C左右的水温进行冲泡。',
      color: AppTheme.yellowTeaThemeColor,
    ),
    TeaInfo(
      name: '白茶',
      temperature: 90,
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性凉',
      introduction: '黄茶属于轻微发酵茶类，具有黄汤和黄叶的特点。\n制茶工艺与绿茶相似，但在过程中有焖黄的环节。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约90℃的水（沿碗壁注水），浸润约5秒后即可出汤，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '一般为1:25，即1克茶叶配25毫升水，茶叶用量约为5克，水量约为120毫升。',
      time:
          '出汤时间较短，最好的口感在头几泡，不需要进行茶叶洗涤，第一泡即可真接品饮。如果使用盖碗，约6秒左右即可出汤，如果使用玻璃杯，漫泡约3分钟后即可饮用。',
      note: '最好使用玻璃杯作为茶具。投茶量过多是导致茶汤过苦过涩的主要原因。对于比较嫩的芽茶，可以使用85°C左右的水温进行冲泡。',
      color: AppTheme.whiteTeaThemeColor,
    ),
    TeaInfo(
      name: '黑茶',
      temperature: 90,
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性凉',
      introduction: '黄茶属于轻微发酵茶类，具有黄汤和黄叶的特点。\n制茶工艺与绿茶相似，但在过程中有焖黄的环节。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约90℃的水（沿碗壁注水），浸润约5秒后即可出汤，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '一般为1:25，即1克茶叶配25毫升水，茶叶用量约为5克，水量约为120毫升。',
      time:
          '出汤时间较短，最好的口感在头几泡，不需要进行茶叶洗涤，第一泡即可真接品饮。如果使用盖碗，约6秒左右即可出汤，如果使用玻璃杯，漫泡约3分钟后即可饮用。',
      note: '最好使用玻璃杯作为茶具。投茶量过多是导致茶汤过苦过涩的主要原因。对于比较嫩的芽茶，可以使用85°C左右的水温进行冲泡。',
      color: AppTheme.blackTeaThemeColor,
    ),
    TeaInfo(
      name: '乌龙茶',
      temperature: 90,
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性凉',
      introduction: '黄茶属于轻微发酵茶类，具有黄汤和黄叶的特点。\n制茶工艺与绿茶相似，但在过程中有焖黄的环节。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约90℃的水（沿碗壁注水），浸润约5秒后即可出汤，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '一般为1:25，即1克茶叶配25毫升水，茶叶用量约为5克，水量约为120毫升。',
      time:
          '出汤时间较短，最好的口感在头几泡，不需要进行茶叶洗涤，第一泡即可真接品饮。如果使用盖碗，约6秒左右即可出汤，如果使用玻璃杯，漫泡约3分钟后即可饮用。',
      note: '最好使用玻璃杯作为茶具。投茶量过多是导致茶汤过苦过涩的主要原因。对于比较嫩的芽茶，可以使用85°C左右的水温进行冲泡。',
      color: AppTheme.oolongTeaThemeColor,
    ),
  ];
}
