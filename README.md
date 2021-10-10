# GoToBible.Model

The model for use with the GoTo.Bible API, with Bible verse parsing support.

## Class Documentation 
Please refer to [https://github.com/pmachapman/GoTo.Bible/](https://github.com/pmachapman/GoTo.Bible/) for class documentation, in particular the class and property comments in the C# implementation of GoToBible.Model.

## Unique Classes
The following classes are unique to the Swift implementation of GotoBible.Model:
* `SwiftExtensions` - extensions to implement C# or Kotlin functionality not found in Swift

## Implemented Differently
The following classes are found in the C# implementation, but are implemented differently in Swift:
* `IProvider` - is not implemented asynchronously, and is not disposable
* `IRenderer` - is not implemented asynchronously, and is not disposable
* `LanguageComparer` - is implemented as the `compareLanguage` extension for `String`
