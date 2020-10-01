/*
 * // Copyright <2020> <Universitat Politència de València>
 * // Permission is hereby granted, free of charge, to any person obtaining a copy of this
 * // software and associated documentation files (the "Software"), to deal in the Software
 * // without restriction, including without limitation the rights to use, copy, modify, merge,
 * // publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons
 * // to whom the Software is furnished to do so, subject to the following conditions:
 * //
 * //The above copyright notice and this permission notice shall be included in all copies or
 * // substantial portions of the Software.
 * // THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
 * // EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * // FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS
 * // OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN
 * // AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH
 * // THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 * //
 * // This version was built by senenpalanca@gmail.com in ${DATE}
 * // Updates available in github/senenpalanca/esgarden
 * //
 * //
 */

import 'package:firebase_database/firebase_database.dart';

class Vegetable {
  String key;
  String Description;
  String BigDescription;
  String Img;
  String imgBig;
  int tmpMax;
  int tmpMin;
  String name;
  String continent;

  Vegetable(this.key, this.name, this.Description, this.Img, this.tmpMax,
      this.tmpMin);

  Vegetable.fromSnapshot(DataSnapshot snapshot)
      : key = snapshot.key,
        name = snapshot.value["Name"],
        Description = snapshot.value["Descr"],
        BigDescription = snapshot.value["BigDescr"],
        Img = snapshot.value["img"],
        tmpMax = snapshot.value["temp_max"],
        tmpMin = snapshot.value["temp_min"],
        continent = snapshot.value["continent"],
        imgBig = snapshot.value["img1200x900"];

  toJson() {
    return {
      "key": key,
      "Descr": Description,
      "img": Img,
    };
  }
}
