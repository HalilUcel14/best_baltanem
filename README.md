# Baltanem Paketi

### Dynamic Text Widget in FittedBox
Ne İşe Yarar: Dinamik olarak boyutlanır ve belirli bir sınır içerisinde şekillenir.

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DynamicText(
      text: "Hello",
      fontSize: 0.05,
      colors: Colors.black,
    );
  }
}
```


### Dikey veya Yatay Oranlı Dinamik Sizedbox
Ne İşe Yarar: 0 ile 1 arasında verilecek yüzdesel oran ile Ekran içerisinde alan kaplayacak bir widget oluşturmanızı sağlar

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
          Text("Hello"),
          SpaceSizedHeightBox(0.2), // %20 oranlı yüksek widget
          Text("Hello"),
      ]
    );
  }
}
```

### Rastgele Color Değerleri
Ne İşe Yarar: 17 Renk Paleti arasında rastgele bir Renk getirir.

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
          Text("Hello",
          style: TextStyle(color: context.randomColor),
          ),
      ]
    );
  }
}
```

### Rastgele Resim (İnternetten)
Ne İşe Yarar: Random image sitesi api ile rastgele resim getirir. Ölçüleri (300x200)

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
          Image.network("".randomImage),
      ]
    );
  }
}
```

### Animation Onboard
Ne İşe Yarar: Animasyonlu Onboard Kullanımı 

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOnboardScreen();
  }
}
```