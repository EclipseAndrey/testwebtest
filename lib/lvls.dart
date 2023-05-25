import 'dart:math';

import 'package:testwebtest/models/level.dart';
import 'package:testwebtest/models/platform.dart';
import 'package:testwebtest/models/type.dart';

/// i LevelType.increment
/// u LevelType.upp
/// m LevelType.minus
/// d LevelType.dec
/// q LevelType.monster
/// e LevelType.energy
///
/// 1
/// 2 k
/// 3 млн
/// 4 млрд
/// 5 трлн
///
///
///
///
/// 1i10001
/// size type dmg exp
///
///
/// Напиши программу на dart которая генерирует код на dart из строки
/// Первая цифра это стартовый index
/// затем следует последовательность строк разделенная пробелами
/// строка состоит из
/// первая цифра это size
/// затем следует LevelType
/// i LevelType.increment
/// u LevelType.upp
/// m LevelType.minus
/// d LevelType.dec
/// q LevelType.monster
/// e LevelType.energy
/// затем следует значение dmg числом с индексом на конце от 1 до 5
/// когда size достигает в сумме 4х то переход к следуюзему лвл
///
///
/// пример входных данных 151  3i80701 1u21 3m532802 1m1006403
/// результат
///
///  Level(151, [
///     Platform(3, LevelType.increment, 8070, 1),
///     Platform(1, LevelType.upp, 2, 1),
///   ]),
///   Level(152, [
///     Platform(3, LevelType.monster, 53280, 2),
///     Platform(1, LevelType.monster, 100640, 3),
///   ]),
///
///
// List<Level> levels = [
//   Level(151, [
//     Platform(3, LevelType.increment, 8070, 1),
//     Platform(1, LevelType.upp, 2, 1),
//   ]),
//   Level(152, [
//     Platform(3, LevelType.monster, 53280, 2),
//     Platform(1, LevelType.monster, 100640, 3),
//   ]),
//   Level(153, [
//     Platform(1, LevelType.increment, 6510),
//     Platform(3, LevelType.minus, 45570),
//   ]),
//   Level(154, [
//     Platform(3, LevelType.monster, 64440),
//     Platform(1, LevelType.increment, 7160),
//   ]),
//   Level(155, [
//     Platform(4, LevelType.monster, 78800),
//   ]),
//   Level(156, [
//     Platform(1, LevelType.monster, 60690),
//     Platform(3, LevelType.increment, 8670),
//   ]),
//   Level(157, [
//     Platform(1, LevelType.energy, 1),
//     Platform(2, LevelType.monster, 47700),
//     Platform(1, LevelType.monster, 57240),
//   ]),
//   Level(158, [
//     Platform(1, LevelType.monster, 73500),
//     Platform(3, LevelType.increment, 15750),
//   ]),
//   Level(159, [
//     Platform(1, LevelType.energy, 1),
//     Platform(2, LevelType.increment, 1),
//     Platform(1, LevelType.monster, 74750),
//   ]),
//   Level(160, [
//     Platform(4, LevelType.monster, 48900),
//   ]),

// Level(116, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// Level(114, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// Level(114, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// Level(114, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// Level(114, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// Level(114, [
//   Platform(3, LevelType.increment, 98300),
//   Platform(1, LevelType.monster, 1470000),
// ]),
// ];

List<Level> levels = [
  // Level(20, [
  //   Platform(4, LevelType.monster, 94, 1),
  // ]),
  Level(21, [
    Platform(3, LevelType.monster, 101, 1),
    Platform(1, LevelType.monster, 100, 1),
  ]),
  Level(22, [
    Platform(1, LevelType.increment, 130, 1),
    Platform(3, LevelType.upp, 2, 1),
  ]),
  Level(23, [
    Platform(1, LevelType.monster, 143, 1),
    Platform(2, LevelType.monster, 305, 1),
    Platform(1, LevelType.monster, 224, 1),
  ]),
  Level(24, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.increment, 45, 1),
    Platform(1, LevelType.monster, 246, 1),
  ]),
  Level(25, [
    Platform(2, LevelType.minus, 197, 1),
    Platform(2, LevelType.dec, 2, 1),
  ]),
  Level(26, [
    Platform(3, LevelType.monster, 162, 1),
    Platform(1, LevelType.increment, 54, 1),
  ]),
  Level(27, [
    Platform(1, LevelType.increment, 179, 1),
    Platform(2, LevelType.monster, 179, 1),
    Platform(1, LevelType.increment, 60, 1),
  ]),
  Level(28, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(3, LevelType.minus, 33, 1),
  ]),
  Level(29, [
    Platform(1, LevelType.monster, 216, 1),
    Platform(2, LevelType.energy, 1, 1),
    Platform(1, LevelType.increment, 36, 1),
  ]),
  Level(30, [
    Platform(4, LevelType.monster, 396, 1),
  ]),
  Level(31, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 306, 1),
    Platform(1, LevelType.minus, 153, 1),
  ]),
  Level(32, [
    Platform(3, LevelType.upp, 2, 1),
    Platform(1, LevelType.upp, 3, 1),
  ]),
  Level(33, [
    Platform(1, LevelType.monster, 527, 1),
    Platform(3, LevelType.monster, 738, 1),
  ]),
  Level(34, [
    Platform(1, LevelType.increment, 174, 1),
    Platform(3, LevelType.energy, 1, 1),
  ]),
  Level(35, [
    Platform(3, LevelType.increment, 64, 1),
    Platform(1, LevelType.monster, 957, 1),
  ]),
  Level(36, [
    Platform(2, LevelType.minus, 562, 1),
    Platform(2, LevelType.dec, 2, 1),
  ]),
  Level(37, [
    Platform(2, LevelType.monster, 695, 1),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(38, [
    Platform(1, LevelType.increment, 170, 1),
    Platform(2, LevelType.monster, 850, 1),
    Platform(1, LevelType.monster, 978, 1),
  ]),
  Level(39, [
    Platform(2, LevelType.minus, 141, 1),
    Platform(2, LevelType.increment, 187, 1),
  ]),
  Level(40, [
    Platform(4, LevelType.monster, 1243, 1),
  ]),
  Level(41, [
    Platform(1, LevelType.upp, 2, 1),
    Platform(3, LevelType.increment, 186, 1),
  ]),
  Level(42, [
    Platform(1, LevelType.monster, 2329, 1),
    Platform(3, LevelType.monster, 1233, 1),
  ]),
  Level(43, [
    Platform(3, LevelType.minus, 1057, 1),
    Platform(1, LevelType.increment, 151, 1),
  ]),
  Level(44, [
    Platform(1, LevelType.increment, 166, 1),
    Platform(3, LevelType.monster, 1494, 1),
  ]),
  Level(45, [
    Platform(4, LevelType.monster, 1820, 1),
  ]),
  Level(46, [
    Platform(3, LevelType.increment, 300, 1),
    Platform(1, LevelType.increment, 200, 1),
  ]),
  Level(47, [
    Platform(1, LevelType.minus, 110, 1),
    Platform(2, LevelType.monster, 1980, 1),
    Platform(1, LevelType.monster, 1650, 1),
  ]),
  Level(48, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.increment, 243, 1),
    Platform(1, LevelType.monster, 1944, 1),
  ]),
  Level(49, [
    Platform(1, LevelType.monster, 2403, 1),
    Platform(3, LevelType.increment, 534, 1),
  ]),
  Level(50, [
    Platform(4, LevelType.monster, 293, 0),
  ]),
  Level(51, [
    Platform(1, LevelType.minus, 1131, 1),
    Platform(2, LevelType.monster, 226, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(52, [
    Platform(1, LevelType.upp, 3, 1),
    Platform(3, LevelType.upp, 2, 1),
  ]),
  Level(53, [
    Platform(3, LevelType.monster, 6474, 1),
    Platform(1, LevelType.monster, 3910, 1),
  ]),
  Level(54, [
    Platform(3, LevelType.energy, 1, 1),
    Platform(1, LevelType.increment, 1290, 1),
  ]),
  Level(55, [
    Platform(1, LevelType.monster, 7095, 1),
    Platform(3, LevelType.increment, 473, 1),
  ]),
  Level(56, [
    Platform(2, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 4160, 1),
  ]),
  Level(57, [
    Platform(2, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 5145, 1),
  ]),
  Level(58, [
    Platform(1, LevelType.monster, 7243, 1),
    Platform(2, LevelType.monster, 6290, 1),
    Platform(1, LevelType.increment, 1258, 1),
  ]),
  Level(59, [
    Platform(2, LevelType.increment, 1384, 1),
    Platform(2, LevelType.minus, 1038, 1),
  ]),
  Level(60, [
    Platform(4, LevelType.monster, 7610, 1),
  ]),
  Level(61, [
    Platform(2, LevelType.increment, 2511, 1),
    Platform(2, LevelType.monster, 5859, 1),
  ]),
  Level(62, [
    Platform(1, LevelType.monster, 7368, 1),
    Platform(3, LevelType.minus, 921, 1),
  ]),
  Level(63, [
    Platform(3, LevelType.minus, 1010, 1),
    Platform(1, LevelType.monster, 9090, 1),
  ]),
  Level(64, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(3, LevelType.increment, 3330, 1),
  ]),
  Level(65, [
    Platform(4, LevelType.monster, 12300, 1),
  ]),
  Level(66, [
    Platform(2, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 2700, 1),
  ]),
  Level(67, [
    Platform(3, LevelType.minus, 2960, 1),
    Platform(1, LevelType.dec, 2, 1),
  ]),
  Level(68, [
    Platform(2, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 3260, 1),
  ]),
  Level(69, [
    Platform(1, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 3580, 1),
    Platform(1, LevelType.minus, 1790, 1),
  ]),
  Level(70, [
    Platform(1, LevelType.increment, 13790, 1),
    Platform(2, LevelType.monster, 11820, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(71, [
    Platform(2, LevelType.increment, 2170, 1),
    Platform(2, LevelType.minus, 2170, 1),
  ]),
  Level(72, [
    Platform(3, LevelType.upp, 2, 1),
    Platform(1, LevelType.increment, 19120, 1),
  ]),
  Level(73, [
    Platform(2, LevelType.increment, 21040, 1),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(74, [
    Platform(3, LevelType.monster, 28900, 1),
    Platform(1, LevelType.upp, 2, 1),
  ]),
  Level(75, [
    Platform(4, LevelType.monster, 31800, 1),
  ]),
  Level(76, [
    Platform(2, LevelType.increment, 3500, 1),
    Platform(2, LevelType.monster, 24500, 1),
  ]),
  Level(77, [
    Platform(1, LevelType.monster, 23100, 1),
    Platform(2, LevelType.monster, 19250, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(78, [
    Platform(3, LevelType.increment, 6345, 1),
    Platform(1, LevelType.monster, 29610, 1),
  ]),
  Level(79, [
    Platform(1, LevelType.monster, 30290, 1),
    Platform(2, LevelType.increment, 4660, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(80, [
    Platform(4, LevelType.monster, 61930, 1),
  ]),
  Level(81, [
    Platform(2, LevelType.increment, 6200, 1),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(82, [
    Platform(3, LevelType.monster, 47740, 1),
    Platform(1, LevelType.monster, 54560, 1),
  ]),
  Level(83, [
    Platform(1, LevelType.increment, 7500, 1),
    Platform(2, LevelType.monster, 75000, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(84, [
    Platform(3, LevelType.increment, 8250, 1),
    Platform(1, LevelType.monster, 66000, 1),
  ]),
  Level(85, [
    Platform(4, LevelType.monster, 90700, 1),
  ]),
  Level(86, [
    Platform(1, LevelType.minus, 34930, 1),
    Platform(2, LevelType.monster, 69860, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(87, [
    Platform(1, LevelType.upp, 3, 1),
    Platform(3, LevelType.upp, 2, 1),
  ]),
  Level(88, [
    Platform(3, LevelType.monster, 169400, 1),
    Platform(1, LevelType.monster, 1221000, 1),
  ]),
  Level(89, [
    Platform(3, LevelType.energy, 1, 1),
    Platform(1, LevelType.increment, 39900, 1),
  ]),
  Level(90, [
    Platform(1, LevelType.monster, 219000, 1),
    Platform(3, LevelType.increment, 14600, 1),
  ]),
  Level(91, [
    Platform(2, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 128800, 1),
  ]),
  Level(92, [
    Platform(2, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 159300, 1),
  ]),
  Level(93, [
    Platform(1, LevelType.monster, 223100, 1),
    Platform(2, LevelType.monster, 194000, 1),
    Platform(1, LevelType.increment, 38800, 1),
  ]),
  Level(94, [
    Platform(2, LevelType.increment, 42800, 1),
    Platform(2, LevelType.minus, 32100, 1),
  ]),
  Level(95, [
    Platform(4, LevelType.monster, 235000, 2),
  ]),
  Level(96, [
    Platform(2, LevelType.increment, 12950, 1),
    Platform(2, LevelType.increment, 181300, 1),
  ]),
  Level(97, [
    Platform(2, LevelType.increment, 14250, 1),
    Platform(2, LevelType.dec, 2, 1),
  ]),
  Level(98, [
    Platform(2, LevelType.upp, 2, 1),
    Platform(2, LevelType.increment, 219100, 1),
  ]),
  Level(99, [
    Platform(2, LevelType.increment, 17250, 1),
    Platform(2, LevelType.increment, 241500, 1),
  ]),
  Level(100, [
    Platform(4, LevelType.monster, 530600, 1),
  ]),
  Level(101, [
    Platform(2, LevelType.increment, 41700, 1),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(102, [
    Platform(3, LevelType.monster, 321300, 1),
    Platform(1, LevelType.monster, 367200, 1),
  ]),
  Level(103, [
    Platform(1, LevelType.increment, 50400, 1),
    Platform(2, LevelType.monster, 50400, 1),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(104, [
    Platform(3, LevelType.increment, 55500, 1),
    Platform(1, LevelType.monster, 444000, 1),
  ]),
  Level(105, [
    Platform(4, LevelType.monster, 610000, 2),
  ]),
  Level(106, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 469700, 1),
    Platform(1, LevelType.minus, 234850, 1),
  ]),
  Level(107, [
    Platform(3, LevelType.upp, 2, 1),
    Platform(1, LevelType.upp, 3, 1),
  ]),
  Level(108, [
    Platform(1, LevelType.monster, 812000, 2),
    Platform(3, LevelType.monster, 1130000, 2),
  ]),
  Level(109, [
    Platform(1, LevelType.increment, 268200, 1),
    Platform(3, LevelType.energy, 1, 1),
  ]),
  Level(110, [
    Platform(3, LevelType.increment, 98300, 1),
    Platform(1, LevelType.monster, 1470, 1),
  ]),
  Level(111, [
    Platform(2, LevelType.minus, 864000, 2),
    Platform(2, LevelType.dec, 2, 1),
  ]),
  Level(112, [
    Platform(2, LevelType.monster, 1070000, 2),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(113, [
    Platform(1, LevelType.increment, 262000, 2),
    Platform(2, LevelType.monster, 1310000, 2),
    Platform(1, LevelType.monster, 1500000, 2),
  ]),
  Level(114, [
    Platform(2, LevelType.minus, 216000, 2),
    Platform(2, LevelType.increment, 288000, 2),
  ]),
  Level(115, [
    Platform(4, LevelType.monster, 1580000, 2),
  ]),
  Level(116, [
    Platform(1, LevelType.increment, 174000, 2),
    Platform(3, LevelType.increment, 2610000, 2),
  ]),
  Level(117, [
    Platform(1, LevelType.monster, 1440000, 2),
    Platform(2, LevelType.monster, 1720000, 2),
    Platform(1, LevelType.minus, 96000, 2),
  ]),
  Level(118, [
    Platform(1, LevelType.monster, 1680000, 2),
    Platform(2, LevelType.increment, 211000, 2),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(119, [
    Platform(3, LevelType.increment, 464000, 2),
    Platform(1, LevelType.monster, 2080000, 2),
  ]),
  Level(120, [
    Platform(4, LevelType.monster, 3080000, 2),
  ]),
  Level(121, [
    Platform(1, LevelType.minus, 1070000, 2),
    Platform(2, LevelType.monster, 2150000, 2),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(122, [
    Platform(1, LevelType.upp, 3, 1),
    Platform(3, LevelType.upp, 2, 1),
  ]),
  Level(123, [
    Platform(3, LevelType.monster, 5220000, 2),
    Platform(1, LevelType.monster, 3730000, 2),
  ]),
  Level(124, [
    Platform(3, LevelType.energy, 1, 1),
    Platform(1, LevelType.increment, 1230000, 2),
  ]),
  Level(125, [
    Platform(1, LevelType.monster, 6780000, 2),
    Platform(3, LevelType.increment, 452000, 2),
  ]),
  Level(126, [
    Platform(2, LevelType.dec, 2, 1),
    Platform(2, LevelType.minus, 3970000, 2),
  ]),
  Level(127, [
    Platform(2, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 4920000, 2),
  ]),
  Level(128, [
    Platform(1, LevelType.monster, 6910000, 2),
    Platform(2, LevelType.monster, 6010000, 2),
    Platform(1, LevelType.increment, 1200000, 2),
  ]),
  Level(129, [
    Platform(2, LevelType.increment, 1320000, 2),
    Platform(2, LevelType.minus, 991500, 1),
  ]),
  Level(130, [
    Platform(4, LevelType.monster, 7270000, 2),
  ]),
  Level(131, [
    Platform(3, LevelType.increment, 1200000, 2),
    Platform(1, LevelType.increment, 800000, 2),
  ]),
  Level(132, [
    Platform(1, LevelType.minus, 440000, 2),
    Platform(2, LevelType.monster, 7920000, 2),
    Platform(1, LevelType.monster, 6600000, 2),
  ]),
  Level(133, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.increment, 968000, 2),
    Platform(1, LevelType.monster, 7740000, 2),
  ]),
  Level(134, [
    Platform(1, LevelType.monster, 9540000, 2),
    Platform(3, LevelType.increment, 2120000, 2),
  ]),
  Level(135, [
    Platform(4, LevelType.monster, 11700000, 2),
  ]),
  Level(136, [
    Platform(2, LevelType.minus, 3870000, 2),
    Platform(2, LevelType.dec, 2, 1),
  ]),
  Level(137, [
    Platform(2, LevelType.minus, 4260000, 2),
    Platform(2, LevelType.minus, 2840000, 2),
  ]),
  Level(138, [
    Platform(3, LevelType.energy, 1, 1),
    Platform(1, LevelType.monster, 6240000, 2),
  ]),
  Level(139, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(3, LevelType.monster, 8600000, 2),
  ]),
  Level(140, [
    Platform(4, LevelType.monster, 12170000, 2),
  ]),
  Level(141, [
    Platform(2, LevelType.monster, 14560000, 2),
    Platform(2, LevelType.increment, 6240000, 2),
  ]),
  Level(142, [
    Platform(3, LevelType.minus, 2280000, 2),
    Platform(1, LevelType.monster, 18240000, 2),
  ]),
  Level(143, [
    Platform(1, LevelType.monster, 22590000, 2),
    Platform(3, LevelType.minus, 2510000, 2),
  ]),
  Level(144, [
    Platform(3, LevelType.increment, 8280000, 2),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(145, [
    Platform(4, LevelType.monster, 30400000, 2),
  ]),
  Level(146, [
    Platform(2, LevelType.increment, 3340000, 2),
    Platform(2, LevelType.energy, 1, 1),
  ]),
  Level(147, [
    Platform(3, LevelType.monster, 25760000, 2),
    Platform(1, LevelType.monster, 29440000, 2),
  ]),
  Level(148, [
    Platform(1, LevelType.increment, 4040000, 2),
    Platform(2, LevelType.monster, 40400000, 2),
    Platform(1, LevelType.energy, 1, 1),
  ]),
  Level(149, [
    Platform(3, LevelType.increment, 4450000, 2),
    Platform(1, LevelType.monster, 35600000, 2),
  ]),
  Level(150, [
    Platform(4, LevelType.monster, 48900000, 2),
  ]),
  Level(151, [
    Platform(3, LevelType.increment, 8070000, 2),
    Platform(1, LevelType.upp, 2, 1),
  ]),
  Level(152, [
    Platform(3, LevelType.monster, 53280000, 2),
    Platform(1, LevelType.monster, 100640000, 2),
  ]),
  Level(153, [
    Platform(1, LevelType.increment, 6510000, 2),
    Platform(3, LevelType.minus, 45570000, 2),
  ]),
  Level(154, [
    Platform(3, LevelType.monster, 64440000, 2),
    Platform(1, LevelType.increment, 7160000, 2),
  ]),
  Level(155, [
    Platform(4, LevelType.monster, 78800000, 2),
  ]),
  Level(156, [
    Platform(1, LevelType.monster, 60690000, 2),
    Platform(3, LevelType.increment, 8670000, 2),
  ]),
  Level(157, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.monster, 47700000, 2),
    Platform(1, LevelType.monster, 57240000, 2),
  ]),
  Level(158, [
    Platform(1, LevelType.monster, 73500000, 2),
    Platform(3, LevelType.increment, 15750000, 2),
  ]),
  Level(159, [
    Platform(1, LevelType.energy, 1, 1),
    Platform(2, LevelType.increment, 15750000, 2),
    Platform(1, LevelType.monster, 74750000, 2),
  ]),
  Level(160, [
    Platform(4, LevelType.monster, 161000000, 3),
  ]),
];

void main() {
  String input =
      '141 2m145602 2i62402 3q22802 1m182402 1m225902 3q25102 3i82802 1e11 4m304002 2i33402 2e11 3m257602 1m294402 1i40402 2m404002 1e11 3i44502 1m356002 4m489002 3i80702 1u21 3m532802 1m1006402 1i65102 3q455702 3m644402 1i71602 4m788002 1m606902 3i86702 1e11 2m477002 1m572402 1m735002 3i157502 1e11 2i157502 1m747502 4m1613';
  // '121 1q10702 2m21502 1e11 1u31 3u21 3m52202 1m37302 3e11 1i12302 1m67802 3i4522 2d21 2q39702 2e11 2m49202 1m69102 2m60102 1i12002 2i13202 2q9915001 4m72702 3i12002 1i8002 1q4402 2m79202 1m66002 1e11 2i9682 1m77402 1m95402 3i21202 4m117002 2q38702 2d21 2q42602 2q28402 3e11 1m62402 1e11 3m86002 4m121702';

  // String d41to61 =
  //     ' 1u21 3i1861 1m23291 3m12331 3q10571 1i1511 1i1661 3m14941 4m18201 3i3001 1i2001 1q1101 2m19801 1m16501 1e11 2i2431 1m19441 1m24031 3i5341 4m2930 1q11311 2m2261 1e11 1u31 3u21 3m64741 1m39101 3e11 1i12901 1m70951 3i4731 2d21 2q41601 2e11 2m51451 1m72431 2m62901 1i12581 2i13841 2q10381 4m76101';
  //
  // input += d41to61;

  List<String> parts = input.split(' ');

  List<Level> levels = [];

  int currentLevelIndex = int.parse(parts[0]);

  List<Platform> currentPlatforms = [];

  int currentSize = 0;

  for (int i = 1; i < parts.length; i++) {
    String platformString = parts[i];

    LevelType type = LevelType.energy;
    switch (platformString[1]) {
      case 'i':
        type = LevelType.increment;
        break;
      case 'u':
        type = LevelType.upp;
        break;
      case 'm':
        type = LevelType.monster;
        break;
      case 'd':
        type = LevelType.dec;
        break;
      case 'q':
        type = LevelType.minus;
        break;
      case 'e':
        type = LevelType.energy;
        break;
    }

    int size = int.parse(platformString[0]);

    int dmg = int.parse(platformString.substring(2, platformString.length - 1));
    int index = int.parse(platformString[platformString.length - 1]);

    Platform platform = Platform(size, type, dmg * pow(1000, index - 1).toInt(), index);
    currentPlatforms.add(platform);
    currentSize += size;

    if (currentSize == 4) {
      levels.add(Level(currentLevelIndex, currentPlatforms));
      currentLevelIndex++;
      currentPlatforms = [];
      currentSize = 0;
    }
  }

  // Print generated code
  print("List<Level> levels = [");
  for (Level level in levels) {
    print("  Level(${level.index}, [");
    for (Platform platform in level.platforms) {
      String typeString;
      switch (platform.type) {
        case LevelType.increment:
          typeString = "increment";
          break;
        case LevelType.upp:
          typeString = "upp";
          break;
        case LevelType.minus:
          typeString = "minus";
          break;
        case LevelType.dec:
          typeString = "dec";
          break;
        case LevelType.monster:
          typeString = "monster";
          break;
        case LevelType.energy:
          typeString = "energy";
          break;
      }
      print("    Platform(${platform.size}, LevelType.${typeString}, ${platform.dmg}, ${platform.exp}),");
    }
    print("  ]),");
  }
  print("];");
}
