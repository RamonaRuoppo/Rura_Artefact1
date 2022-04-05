#  SwiftUI implementation in UIKit and vice versa


This project aims to integrate SwiftUI in UIKit and vice versa. 

SwitfUI was first released in 2019, that makes it a relatively new technology. Its declarative approach is the key differentiator when comparing SwiftUI to UIKit. 
It is important to keep in mind that SwiftUI and UIKit are not mutually exclusive, since SwiftUI has still some boundaries and limitations that UIkit allows you to cope with. 

A large part of already existing projects is developed in UIKit. This means it will probably be a common requirement to integrate the new SwiftUI app functionality with an existing UIKit based project.
This integration can be achieved easily using ContainerViews and UIHostingControllers.


##  About the Project

The project is based on UIKit and integrates a SwiftUI View. The latter presents two buttons using UIKit component and a non-modal experience using a UISheetPresentationController. 

##  SwifUI in UIKit

<img src= "https://user-images.githubusercontent.com/92525390/161785813-143c9e7b-0651-4c94-9a92-cf8673417b65.gif" width="200"> 

The goal of the first part of this project is to navigate from the `ViewController` to a view built in SwiftUI once we tap on the `UIButton`.

You can easily integrate the SwiftUI functionalities within an existing UIKit project using `ContainerView` and `UIHostingController`.
To embed a SwiftUI View into a UIKit view hierarchy as an entire scene all you need is a `UIHostingController`. 
This controller is compatible with UIKit since it is a subclass of UIViewController. 

##  UIKit in SwifUI

<img src= "https://user-images.githubusercontent.com/92525390/161786409-6f5ea5ae-2cf2-4d75-bd5b-098d95d804a3.gif" width="200">

The second part of this project aims to integrate a non-modal sheet built with UIKit into a SwiftUI view. To do that, Apple provides you the `UIViewRepresentable` protocol.
