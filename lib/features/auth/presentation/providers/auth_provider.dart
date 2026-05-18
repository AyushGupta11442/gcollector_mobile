

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hooks_riverpod/legacy.dart';

final counterProvider = StateProvider<int>((ref) => 0);