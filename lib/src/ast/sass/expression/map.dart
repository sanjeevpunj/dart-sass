// Copyright 2016 Google Inc. Use of this source code is governed by an
// MIT-style license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:source_span/source_span.dart';

import '../../../utils.dart';
import '../../../visitor/sass/expression.dart';
import '../expression.dart';

class MapExpression implements Expression {
  final List<List<Expression>> pairs;

  final FileSpan span;

  MapExpression(Iterable<Pair<Expression, Expression>> pairs, {this.span})
      : pairs = new List.unmodifiable(pairs);

  /*=T*/ accept/*<T>*/(ExpressionVisitor/*<T>*/ visitor) =>
      visitor.visitMapExpression(this);

  String toString() =>
      '(${pairs.map((pair) => '${pair.first}: ${pair.last}').join(', ')})';
}