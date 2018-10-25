# Filters

## Introduction

The goal of this project is to create a macOS application that adds filters to an image on their Mac that the user opens in the app.

## Instructions

Please fork and clone this repository. Create a new Xcode project. Commit regularly as you complete the requirements in this project.

1. In the Main.storyboard, add the following to a view controller scene:
    - An image view that shows the image to be filtered.
    - A table view that will show a list of filters for the user to choose from.
    - A second table view that will show and allow the user to adjust the input parameters that a selected filter has.  Create a custom cell (subclass of `NSTableCellView`) that shows the name of the input, and a slider that lets the user adjust the input's value. For example, `CIColorControls` can change the brightness, contrast, and saturation.
2. Create a Cocoa subclass of `NSViewController` for this view controller scene. Make sure that this view controller scene is the window content of a window controller. This window controller should be the initial controller. 
3. Create an `Filter` data type. This should have a `CIFilter` property. It should also have an array of a second data type that represent each input parameter that can be adjusted. Open a playground and print out the `attributes` property of a few `CIFilter`s. In this dictionary is some information about each input parameter (in a sub-dictionary) along with some other information as well. This second data type should pull the relevant information from these sub-dictionaries. For example, each input parameter **may** include things like the minimum and maximum values for the slider related to it.

**WARNING:** For the sake of simplicity, set up your data types assuming that you will only use filters whose input values (other than the inpput image) are always scalars like `CIColorControls`, `CIGaussianBlur`, etc. For example, most of the distortion filters take in `CIVector` parameters, which will complicate the base requirements of this project.

4. Add actions from the "Open..." and "Save As..." menu items in the `AppDelegate`. Use an `NSOpenPanel` and a `NSSavePanel` to get and save the filtered image in their respective actions. You may want to wait until you finish implementing the view controller, then come back to finish the "Save As..." action.
5. Implement the view controller subclass. For now, simply hard-code an array of `Filter` objects to be used as the data source for the first table view. The other table view's data source should be a currently selected filter's adjustments, if there is one at all. In the view controller (or a helper that you create), filter the image that the user opened when they move a slider.

**As a base requirement, the application needs to only implement a single filter and be able to save it.**

## Go Further

- Allow for the user to combine filters together to allow for more customizable editing of the image.
- Add support for other filters with input parameters such as `CIVectors`.
