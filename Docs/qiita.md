[iOS] Storyboardで角丸やボーダーを設定したい! そんなあなたに贈るUIView拡張ライブラリ「EXTView」
===


問題意識
---
単純なプロトタイプ作成まではStoryboardだけで済んだのに。。。アプリ開発が本格化してきてデザイナーさんから上がってきたデザイン案を元にViewの作り込みを始めると「う、ここでViewに角丸がいるのか。。」「おっと、このViewにはボーダー表示入れないと。。」という状況が増え、それまでStoryboardのみで調整してきたViewもソースコード上から見た目の修正を入れなければならないシーンが増えますよね。

角丸やボーダー程度のちょっとした見た目調整なら、できればStoryboard上で行いたい! そんな希望を叶えるのが今回紹介するUIView拡張ライブラリ「EXTView」です。


利用準備
---
「EXTView」のgithubのアドレスは以下です。

　　https://github.com/recruit-mtl/EXTView

CocoaPodsに対応していますので、以下の設定をプロジェクトのPodfileに追加するだけで利用できるようになります。

```ruby
use_frameworks!

pod "EXTView"
```

pod tryにも対応しているので、もっと簡単に試したい場合は、コマンドラインから以下のコマンドを打って試してみましょう。

```bash
pod try EXTView
```

利用方法
---
EXTViewはUIView群を継承したクラスとして実装されています。具体的にはStoryboard上に配置したUIViewをカスタムクラス指定でEXTView系統に置き換えることで、角丸やボーダーが指定できるようになります。

1. まずはViewをStoryboard上に配置します。例ではUIButtonを配置しています。
![Added a UIButton](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/added_buttton.png)

1. 次に「Identity Inspector」を開いて、カスタムクラスとして EXTView系統のクラス名を指定します。例ではUIButtonを配置しましたので、カスタムクラスとして 「EXTButton」を指定します。
![Set EXTView class name](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/identity_inspector.png)

1. カスタムクラスをEXTView系統に指定した後に、「Attributes Inspector」を開くと、ボーダー、角丸、背景のグラデーションが追加で指定できるようになります。
![design EXTView's Attributes](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/attributes_inspector2.png)<br/><br/>
![Rendered a EXTView in IB](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/set_attributes_button.png)

拡張されたUIViewクラス一覧
---
EXTViewライブラリでは以下のUIViewクラスが拡張されています。

| 継承元クラス名 | 拡張クラス名 |
|--|--|
| UIView | EXTView |
| UILabel | EXTLabel |
| UIButton | EXTButton |
| UISegmentedControl | EXTSegmentedControl |
| UITextField | EXTTextField |
| UISlider | EXTSlider |
| UISwitch | EXTSwitch |
| UIActivityIndicatorView | EXTActivityIndicatorView |
| UIProgressView | EXTProgressView |
| UIPageControl | EXTPageControl |
| UIStepper | EXTStepper |
| UITableView | EXTTableView |
| UIImageView | EXTImageView |
| UICollectionView | EXTCollectionView |
| UICollectionViewCell | EXTCollectionViewCell |
| UICollectionReusableView | EXTCollectionReusableView |
| UITextView | EXTTextView |
| UIScrollView | EXTScrollView |
| UIPickerView | EXTPickerView |
| UINavigationBar | EXTNavigationBar |
| UIToolbar | EXTToolbar |
| UITabBar | EXTTabBar |
| UISearchBar | EXTSearchBar |

実装解説
---
今回のStoryboardの拡張はXcode 6から導入されたIB_DESIGNABLE / IBInspectableという機能を利用して実現されています。IB_DESIGNABLE / IBInspectableの機能を利用すると、今回のようにStoryboardの設定を拡張することができるため、見た目でデザインを管理・調整できる範囲が広がり、ソースコードで見た目調整するよりメンテナンシビリティ向上に貢献できる場合があります。ぜひ有用なシーンで活用してみてください。
