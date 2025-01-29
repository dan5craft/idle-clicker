class Number {
  double size;
  int suffix;
  int c;
  Number(double size, int suffix) {
    this.size = size;
    this.suffix = suffix;
  }
  //gør sådan at suffix og værdi passer ordenligt
  void fixNumber() {
    while (size > 1000) {
      suffix++;
      size /= 1000;
    }
    while (size < 1 && suffix != 0) {
      suffix--;
      size *= 1000;
    }
  }
  //Disse funktioner ændrer tallet
  void Add(Number num) {
    size += num.size*pow(10, (num.suffix-suffix)*3);
    fixNumber();
  }
  void Subtract(Number num) {
    size -= num.size*pow(10, (num.suffix-suffix)*3);
    fixNumber();
  }
  void Multiply(Number num){
    size *= num.size*pow(10, num.suffix);
    fixNumber();
  }
  void changeTo(Number num){
    size = num.size;
    suffix = num.suffix;
  }
  //Disse funktioner returner et tal
  Number returnAdd(Number num) {
    Number copy = new Number(size, suffix);
    copy.size += num.size*pow(10, (num.suffix-suffix)*3);
    copy.fixNumber();
    return copy;
  }
  Number returnSubtract(Number num) {
    Number copy = new Number(size, suffix);
    copy.size -= num.size*pow(10, (num.suffix-suffix)*3);
    copy.fixNumber();
    return copy;
  }
  Number returnMultiply(Number num){
    Number copy = new Number(size, suffix);
    copy.size *= num.size*pow(10, num.suffix);
    copy.fixNumber();
    return copy;
  }
  //check om dette tal er større eller lig et andet
  boolean isBiggerOrEqualTo(Number num) {
    if (suffix > num.suffix || suffix == num.suffix && size >= num.size) {
      return true;
    } else {
      return false;
    }
  }
  //lav en string der tilsvarer tallet
  String string() {
    String text;
    if (size < 10) {
      c = 2;
    } else if (size < 100) {
      c = 1;
    } else {
      c = 0;
    }
    if (c != 0) {
      text = Double.toString(roundDouble(size, c));
      println(text.length());
      if(text.length() == 3 && c == 2){
        text += "0";
      }
    } else {
      text = str((int)size);
    }
    if(suffix < suffixes.length){
      text += suffixes[suffix];
    }
    else{
      text = "VERY BIG NUMBER";
    }
    return text;
  }
}
