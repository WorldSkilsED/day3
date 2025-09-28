class StringUtils {
  static String formaterString(int number) {
      String s = number.toString();
      StringBuffer buffer = StringBuffer();
      int length = s.length;
      int count = 0;
      for(int i = length - 1; i >= 0; i--) {
          buffer.write(s[i]);
          count++;
          if (count % 3 == 0 && i != 0) {
            buffer.write(',');
          }
      }
      return buffer.toString().split('').reversed.join();
  }
}