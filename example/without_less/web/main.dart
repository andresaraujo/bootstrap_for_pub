import 'dart:html';

void main() {
  for (Element e in querySelectorAll('a, button')) {
    e.onClick.listen((e) => handleClick(e.target));
  }
}

void handleClick(var element) {
  print('[${element.text.trim()}]');
  querySelector("#list")
      .append(new LIElement()..innerHtml = element.text.trim());
}
