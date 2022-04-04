#  SwiftUI implementation in UIKit and vice versa

This project aims to integrate SwiftUI in UIKit and vice versa. 

SwitfUI was first released in 2019, that makes it a relatively new technology. Its declarative approach is the key differentiator when comparing SwiftUI to UIKit. 
It is important to keep in mind that SwiftUI and UIKit are not mutually exclusive, since SwiftUI has still some boundaries and limitations that UIkit allows you to cope with. 

A large part of already existing projects is developed in UIKit. This means it will probably be a common requirement to integrate the new SwiftUI app functionality with an existing UIKit based project.
This integration can be achieved easily using ContainerViews and UIHostingControllers.


##  About the Project

The project is based on UIKit and integrates a SwiftUI View. The latter presents two buttons using UIKit component and a non-modal experience using a UISheetPresentationController. 

![SimulatorArtefactGif]("https://user-images.githubusercontent.com/92525390/161572039-0ae8c9ea-c5a5-40c8-91bc-12ac6ebdeb91.gif" width=100)


##  SwifUI in UIKit

First of all you have to create a new project choosing iOS App as template and Storyboad as Interface.
Now that you have the project template, in Main.storyboard you will have your VIew Controller Scene. Embed this one in a Navigation Controller and set this last one as the storyboard entry point, in the Attributes inspector select the Is Initial View Controller checkbox.

In the ViewController you can drag whatever item you may need from the Library onto the canvas. For this project drag an image and two labels.
You can also set the image to be circular:
* First open the assistant, then control-drag the image into an available area within the ViewController class definition, you will be prompted to create an outlet
* Now override the function viewDidLoad() like this:

    ```
    override func viewDidLoad() {
        super.viewDidLoad()
        imageOutlet.layer.cornerRadius = imageOutlet.frame.height/2
    }
    ```


It's time to create a Model for the branches and another one for the tasks. The App will be structured on the Model-View-Controller (MVC) design pattern. This one is a common design pattern for UIKit apps. 
In the Project navigator, create a new group named "Model". 
Create a new Swift file named Branches.swift with a structure for your data model.
Declare properties for name and an isComplete Boolean, assigning it a default value of false.

    ```
    struct Branch {
        var name: String
        var isComplete: Bool = false
    }   
    ```

Now do the same process for the tasks Model.
