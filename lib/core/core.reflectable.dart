// This file has been generated by the reflectable package.
// https://github.com/dart-lang/reflectable.
// @dart = 2.12

import 'dart:core';
import 'package:karee_core/src/controllers/controller.dart' as prefix0;
import 'package:people_modal/app/controllers/home/home_controller.dart'
    as prefix1;
import 'package:people_modal/app/controllers/panel/dashboard_controller.dart'
    as prefix2;

// ignore_for_file: prefer_adjacent_string_concatenation
// ignore_for_file: prefer_collection_literals
// ignore_for_file: unnecessary_const
// ignore_for_file: implementation_imports

// ignore:unused_import
import 'package:reflectable/mirrors.dart' as m;
// ignore:unused_import
import 'package:reflectable/src/reflectable_builder_based.dart' as r;
// ignore:unused_import
import 'package:reflectable/reflectable.dart' as r show Reflectable;

final _data = <r.Reflectable, r.ReflectorData>{
  const prefix0.ControllerReflectable(): r.ReflectorData(
      <m.TypeMirror>[
        r.NonGenericClassMirrorImpl(
            r'HomeController',
            r'.HomeController',
            7,
            0,
            const prefix0.ControllerReflectable(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix1.HomeController() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'index': 0
            }),
        r.NonGenericClassMirrorImpl(
            r'DashboardController',
            r'.DashboardController',
            7,
            1,
            const prefix0.ControllerReflectable(),
            const <int>[-1],
            null,
            null,
            -1,
            {},
            {},
            {r'': (bool b) => () => b ? prefix2.DashboardController() : null},
            -1,
            -1,
            const <int>[-1],
            null,
            {
              r'==': 1,
              r'toString': 0,
              r'noSuchMethod': 1,
              r'hashCode': 0,
              r'runtimeType': 0,
              r'index': 0
            })
      ],
      null,
      null,
      <Type>[prefix1.HomeController, prefix2.DashboardController],
      2,
      {
        r'==': (dynamic instance) => (x) => instance == x,
        r'toString': (dynamic instance) => instance.toString,
        r'noSuchMethod': (dynamic instance) => instance.noSuchMethod,
        r'hashCode': (dynamic instance) => instance.hashCode,
        r'runtimeType': (dynamic instance) => instance.runtimeType,
        r'index': (dynamic instance) => instance.index
      },
      {},
      null,
      [
        const [0, 0, null],
        const [1, 0, null]
      ])
};

final _memberSymbolMap = null;

void initializeReflectable() {
  r.data = _data;
  r.memberSymbolMap = _memberSymbolMap;
}
