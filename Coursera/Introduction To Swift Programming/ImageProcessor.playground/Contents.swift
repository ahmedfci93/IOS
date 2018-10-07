//: Playground - noun: a place where people can play

import UIKit

let image = UIImage(named: "sample.png")

class ImageProcessing{
    
    var filterList: [String] = []
    
    func addFilter(filter: String)  {
        filterList.append(filter)
    }
    
    func processImage(image: UIImage) -> UIImage {
        var rgbImage = RGBAImage(image: image)!
        
        for y in 0 ..< rgbImage.height
        {
            for x in 0 ..< rgbImage.width {
                let index = y * rgbImage.width + x
                var filteredPixel : Pixel
                filteredPixel = rgbImage.pixels[index]
                if filterList.count != 0 {
                    if filterList.contains("brightness"){
                        filteredPixel = brightness(filteredPixel, brightnessVal: 70)
                    }
                    if filterList.contains("contrast"){
                        filteredPixel = contrast(filteredPixel, contrastVal: 150)
                    }
                    if filterList.contains("removeColor"){
                        filteredPixel = removeColor(filteredPixel, removingColor: "red")
                    }
                    if filterList.contains("subtractColor"){
                        filteredPixel = subtractColor(filteredPixel, value: 150)
                    }
                    if filterList.contains("grayScale"){
                        filteredPixel = grayScale(filteredPixel)
                    }
                }
                rgbImage.pixels[index] = filteredPixel
            }
        }
        
        return rgbImage.toUIImage()!
    }
    
    func brightness(pixel: Pixel, brightnessVal: Int) -> Pixel {
        var newPixel: Pixel = pixel
        newPixel.blue = UInt8(validatedValue(Int(newPixel.blue) + brightnessVal))
        newPixel.red = UInt8(validatedValue(Int(newPixel.red) + brightnessVal))
        newPixel.green = UInt8(validatedValue(Int(newPixel.green) + brightnessVal))
        
        return newPixel
    }
    
    func contrast(pixel: Pixel, contrastVal: Double) -> Pixel {
        var newPixel: Pixel = pixel
        
        var factor: Int
        factor = Int(( 259 * (contrastVal + 255)) / (255 * (259 - contrastVal)))
        
        newPixel.blue = UInt8(validatedValue(factor * (Int(newPixel.blue) - 128) + 128 ))
        newPixel.red = UInt8(validatedValue(factor * (Int(newPixel.red) - 128) + 128 ))
        newPixel.green = UInt8(validatedValue(factor * (Int(newPixel.green) - 128) + 128 ))
        
        return newPixel
    }
    
    func removeColor(pixel: Pixel, removingColor: String) -> Pixel {
        var newPixel: Pixel = pixel
        if removingColor == "red"{
            newPixel.red = 0
        } else if removingColor == "green"{
            newPixel.green = 0
        } else if removingColor == "blue"{
            newPixel.blue = 0
        }
        return newPixel
    }
    
    func subtractColor(pixel: Pixel, value: Int) -> Pixel {
        var newPixel: Pixel = pixel
        newPixel.blue = UInt8(validatedValue(Int(newPixel.blue) - value))
        newPixel.red = UInt8(validatedValue(Int(newPixel.red) - value))
        newPixel.green = UInt8(validatedValue(Int(newPixel.green) - value))
        return newPixel
    }
    
    func grayScale(pixel: Pixel) -> Pixel {
        var newPixel: Pixel = pixel
        var weight: Int = Int (( Double(pixel.red) * 0.11) + ( Double(pixel.green) * 0.59) + (Double(pixel.blue) * 0.3))
        newPixel.blue = UInt8(validatedValue(weight))
        newPixel.red = UInt8(validatedValue(weight))
        newPixel.green = UInt8(validatedValue(weight))
        return newPixel
    }
    
    func validatedValue(value: Int) -> Int {
        if value < 0 {
            return 0
        } else if value > 255{
            return 255
        }
        return value
    }
}
var imageProcessor: ImageProcessing = ImageProcessing()
imageProcessor.addFilter("brightness")
imageProcessor.addFilter("contrast")
imageProcessor.addFilter("removeColor")
imageProcessor.addFilter("subtractColor")
imageProcessor.addFilter("grayScale")
imageProcessor.processImage(image)



