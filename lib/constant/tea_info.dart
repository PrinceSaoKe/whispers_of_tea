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
  String temperature;
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
      temperature: '≥85',
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
      name: '白茶',
      temperature: '95',
      teaWeight: 5,
      waterVolume: 150,
      warmOrCold: '性凉',
      introduction:
          '白茶是一种轻微发酵的茶类，制作过程包括萎凋和干燥。\n白茶富含氨基酸、茶多酚、黄酮等物质，而且随着时间的推移，茶叶会越陈越香。',
      makeTeaMethod:
          '先准备好盖碗和一壶开水，用开水将茶具清洗一遍。然后用茶针将茶叶拨入盖碗中，注入约95℃左右的开水（沿碗壁注水），推荐茶具选用白瓷盖碗或玻璃壶。第一泡浸润约10秒内出汤，用于清洗茶叶。第二泡茶开始饮用，将茶汤滤入公道杯，最后分入茶杯品饮。',
      teaWaterRatio: '投茶量以 1 : 30 为宜，即1克茶叶应注水30毫升。',
      time: '第一泡不饮用，接下来再次注入约七分满的高温水，盖上盖子，闷泡约20秒后茶汤就可以倒出饮用。',
      note:
          '使用高温水，如果是新白茶，水温可以在85~90℃左右，而老白茶则需要使用95℃以上的水温。将沸水缓缓注入盖碗时，要避免直接对着茶叶冲击，水流的高度要低。',
      color: AppTheme.whiteTeaThemeColor,
    ),
    TeaInfo(
      name: '黄茶',
      temperature: '90',
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
      name: '乌龙茶',
      temperature: '100',
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性平',
      introduction:
          '乌龙茶又叫青茶，是一种半发酵茶，鲜叶经过晒青和摇青的过程，使其在发酵后通过高温杀青，破坏酶活性，然后进行揉捻和干燥。因此，乌龙茶的品质特征介于绿茶和红茶之间，兼具绿茶的清香和红茶的醇厚。',
      makeTeaMethod:
          '先准备好茶具，用烧开的水充分烫洗茶具，提升杯子的温度。将茶叶投入盖碗中，沿着碗壁环绕注水。注水后让茶叶浸润约5~10秒钟的时间，然后将茶汤滤出，最后倒入茶杯中饮用。',
      teaWaterRatio: '一般为5克茶叶配水量120毫升。',
      time:
          '在冲泡乌龙茶时，温润茶后，第一泡适宜浸泡约5~10秒钟，品饮后可根据茶汤的浓淡来确定最佳出汤时间。从第四泡开始，每次递增15秒，一次为15秒、20秒、25秒。',
      note: '以沸水注入盖碗中，沿边环绕注水。冲泡时，开水温度以95~100℃为宜。',
      color: AppTheme.oolongTeaThemeColor,
    ),
    TeaInfo(
      name: '红茶',
      temperature: '95',
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
      name: '黑茶',
      temperature: '100',
      teaWeight: 5,
      waterVolume: 120,
      warmOrCold: '性温',
      introduction: '黑茶是一种后发酵茶，\n也是具有长期陈放属性的茶品之一。',
      makeTeaMethod:
          '准备一只白瓷盖碗，先用开水将差距烫洗干净。可以选择定点高冲或环绕注水的方式，让茶叶充分接触水和温度。第一泡为洗茶，不饮用。再次注水后等待约5秒钟时间，即可滤出茶汤进行品饮。',
      teaWaterRatio: '一般5克茶叶配水量120毫升。',
      time: '前3泡约5秒左右，第4泡开始约10秒、15秒或20秒左右，好的黑茶冲泡10秒左右不成问题。具体的冲泡时间可以根据个人口感喜好微调。',
      note: '事先烫洗茶具是必要的，此外，出汤宜快速，不可长时间浸泡。',
      color: AppTheme.blackTeaThemeColor,
    ),
  ];
}
