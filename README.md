# Baltanem Paketi 

## mail address : hucelsoft@gmail.com

## youtube : https://www.youtube.com/channel/UC4GTOIiDWEe6jIuXlqSIhQg,

## Github : https://github.com/HalilUcel14

## Linkedin : https://www.linkedin.com/in/halilucel/

### OnBoard Screen Best Practices with Mobx
Ne İşe Yarar: Tüm View Modelleri tek bir üst sınıftan alarak ortaklaştırmaya ve bazı özelliklerin zorunlu kılınmasına yardımcı olacak.

```dart
class OnBoardTest extends StatelessWidget {
  const OnBoardTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnBoardView(
      onBoardItems: defaultTestOnBoardList,
      navigatePushName: "Home",
    );
  }
}

const List<String> defaultImage = <String>[
  "assets/images/onboard/hu_onboard_1.png",
  "assets/images/onboard/hu_onboard_2.png",
  "assets/images/onboard/hu_onboard_3.png"
];

List<OnBoardModel> defaultTestOnBoardList = [
  OnBoardModel(
    title: "TOKOTO",
    description: "Welcome to Tokoto, Let's Shop!",
    imagePath: defaultImage[0],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description:
        "We help people connect with store around United State of America",
    imagePath: defaultImage[1],
  ),
  OnBoardModel(
    title: "TOKOTO",
    description: "We show the easy way to shop. Just stay at home with us",
    imagePath: defaultImage[2],
  ),
];
```

### Random Color Container  Widget 
Ne İşe Yarar: Tüm View Modelleri tek bir üst sınıftan alarak ortaklaştırmaya ve bazı özelliklerin zorunlu kılınmasına yardımcı olacak.

```dart
return Scaffold(
      body: Column(
        children: const [
          Expanded(flex: 5, child: RandomColorContainer()),
          Expanded(flex: 3, child: RandomColorContainer()),
          Expanded(flex: 2, child: RandomColorContainer()),
        ],
      ),
    );
```

### Base View  Widget
Ne İşe Yarar: Tüm View Modelleri tek bir üst sınıftan alarak ortaklaştırmaya ve bazı özelliklerin zorunlu kılınmasına yardımcı olacak.

```dart
import 'package:flutter/material.dart';

import '../../core/baseview/base_view.dart';
import '../viewmodel/onboard_viewmodel.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<OnBoardViewModel>(
      viewModel: OnBoardViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (BuildContext context,OnBoardViewModel value) => Scaffold(),
    );
  }
}
```


### Base View Model Widget
Ne İşe Yarar: Tüm View Modelleri tek bir üst sınıftan alarak ortaklaştırmaya ve bazı özelliklerin zorunlu kılınmasına yardımcı olacak.

```dart
import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../core/baseviewmodel/base_view_model.dart';
part 'onboard_viewmodel.g.dart';

class OnBoardViewModel = _OnBoardViewModelBase with _$OnBoardViewModel;

abstract class _OnBoardViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;
  @override
  void init() {}
}
```

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
Ne İşe Yarar: Animasyonlu Onboard Kullanımı Ekranda x saniye animasyon oynattıktan sonra İlgili Sayfaya Geçiş Yapar.

```dart
class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedOnboardScreen(
      routeName: "routeName",
      duration: const Duration(seconds: 2),
      child: Icon(
        Icons.home,
        size: 500,
      ),
    );
  }
}
```