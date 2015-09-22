# EXTView

<!-- [![CI Status](http://img.shields.io/travis/MORITA Hideyuki/EXTView.svg?style=flat)](https://travis-ci.org/MORITA Hideyuki/EXTView) -->
[![Version](https://img.shields.io/cocoapods/v/EXTView.svg?style=flat)](http://cocoapods.org/pods/EXTView)
[![License](https://img.shields.io/cocoapods/l/EXTView.svg?style=flat)](http://cocoapods.org/pods/EXTView)
[![Platform](https://img.shields.io/cocoapods/p/EXTView.svg?style=flat)](http://cocoapods.org/pods/EXTView)

## About

This library extends UIViews for Interface Builder editable. For example, border color, border width, corner radius or graduated background are not supported in Interface Builder. But you can edit them by using this library.

## Try

Try out a example project.

```bash
pod try EXTView
```

and open "Main.storyboard".

You can edit border, corner radius and graduated background.

## Installation

EXTView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
use_frameworks!

pod "EXTView"
```

NOTE: You must specify 'use_frameworks!'. Because if it was not specified, cocoapods fails to build a EXTView in IB.

## Usage

1. Add a view to a storyboard or  a xib.
![Added a UIButton](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/added_buttton.png)

1. Select the view and open 'Identity Inspector' and set EXTView class name to 'Class' ( e.g. Added view is a UIButton, you set 'EXTButton' as class name).
![Set EXTView class name](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/identity_inspector.png)

1. Open Attributes Inspector and design extended view's attributes.
![design EXTView's Attributes](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/attributes_inspector2.png)<br/><br/>
![Rendered a EXTView in IB](https://github.com/recruit-mtl/EXTView/raw/master/Images/README/set_attributes_button.png)

1. Build and Run!

## Extended UIView List
- UIView (EXTView)
- UILabel (EXTLabel)
- UIButton (EXTButton)
- UISegmentedControl (EXTSegmentedControl)
- UITextField (EXTTextField)
- UISlider (EXTSlider)
- UISwitch (EXTSwitch)
- UIActivityIndicatorView (EXTActivityIndicatorView)
- UIProgressView (EXTProgressView)
- UIPageControl (EXTPageControl)
- UIStepper (EXTStepper)
- UITableView (EXTTableView)
- UIImageView (EXTImageView)
- UICollectionView (EXTCollectionView)
- UICollectionViewCell (EXTCollectionViewCell)
- UICollectionReusableView (EXTCollectionReusableView)
- UITextView (EXTTextView)
- UIScrollView (EXTScrollView)
- UIPickerView (EXTPickerView)
- UINavigationBar (EXTNavigationBar)
- UIToolbar (EXTToolbar)
- UITabBar (EXTTabBar)
- UISearchBar (EXTSearchBar)

## Author

Recruit Holdings Co.,Ltd. Media Technology Lab.

MORITA Hideyuki

## License

EXTView is available under the MIT license. See the LICENSE file for more info.
