// Copyright (c) 2012 Ecma International.  All rights reserved.
// This code is governed by the BSD license found in the LICENSE file.

/*---
info: |
    15.5.5.2 defines [[GetOwnProperty]] for Strings. It supports using indexing
    notation to look up non numeric property names.
es5id: 15.5.5.5.2-3-7
description: >
    String value indexing returns undefined if the numeric index
    (Infinity) is not an array index
---*/

  var s = String("hello world");

assert.sameValue(s[Infinity], undefined, 's[Infinity]');

reportCompare(0, 0);
