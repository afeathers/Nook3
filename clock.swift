import UIKit
import Foundation



@IBDesignable class clockView: UIView {
    
    var timer = NSTimer()
    
    // I want this timer to run every second so that the new view is redrawn each second with the updated hour, minute and second.
    
    func updateTime(timer: NSTimer!) -> (hour: Int, minute: Int, second: Int){
            
        var date:NSDate = NSDate()
        var calendar:NSCalendar = NSCalendar.currentCalendar()
        var components:NSDateComponents = calendar.components(NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond, fromDate: date)
            
        var hour = components.hour
        var minute = components.minute
        var second = components.second
        println("updateTime fired")
        self.setNeedsDisplay()
        return (hour, minute, second)
        
    }
    
    
    //This timer isn't firing. Does it belong in the viewDidLoad in the View Controller?
    
    func fire() {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector:"updateTime:", userInfo: nil, repeats: true)
        println("timer fired")
        
    }
    
    
    
    // drawrect is supposed to draw out the different clockfaces based on the time components returned by updateTime()
    
    override func drawRect(rect: CGRect) {
        
        //var hour = timerFunction().hour
        //var minute = timerFunction().minute
        //var second = timerFunction().second
        
        switch updateTime(timer).hour {
            
        case 0:
            
            //// Color Declarations
            let color0 = UIColor(red: 0.894, green: 0.000, blue: 0.476, alpha: 1.000)
            
            
            //// HOUR1 Drawing
            var eMPTY1Path = UIBezierPath(ovalInRect: CGRectMake(127, 49.47, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY1Path.lineWidth = 1
            eMPTY1Path.stroke()
            
            //// EMPTY12 Drawing
            var eMPTY12Path = UIBezierPath(ovalInRect: CGRectMake(96.25, 41.23, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY12Path.lineWidth = 1
            eMPTY12Path.stroke()
            
            
            //// EMPTY2 Drawing
            var eMPTY2Path = UIBezierPath(ovalInRect: CGRectMake(149.51, 71.98, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY2Path.lineWidth = 1
            eMPTY2Path.stroke()
            
            
            //// EMPTY3 Drawing
            var eMPTY3Path = UIBezierPath(ovalInRect: CGRectMake(157.75, 102.73, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY3Path.lineWidth = 1
            eMPTY3Path.stroke()
            
            
            //// EMPTY4 Drawing
            var eMPTY4Path = UIBezierPath(ovalInRect: CGRectMake(149.51, 133.48, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY4Path.lineWidth = 1
            eMPTY4Path.stroke()
            
            
            //// EMPTY5 Drawing
            var eMPTY5Path = UIBezierPath(ovalInRect: CGRectMake(127, 155.99, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY5Path.lineWidth = 1
            eMPTY5Path.stroke()
            
            
            //// EMPTY6 Drawing
            var eMPTY6Path = UIBezierPath(ovalInRect: CGRectMake(96.25, 164.23, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY6Path.lineWidth = 1
            eMPTY6Path.stroke()
            
            
            //// EMPTY7 Drawing
            var eMPTY7Path = UIBezierPath(ovalInRect: CGRectMake(65.5, 155.99, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY7Path.lineWidth = 1
            eMPTY7Path.stroke()
            
            
            //// EMPTY8 Drawing
            var eMPTY8Path = UIBezierPath(ovalInRect: CGRectMake(42.99, 133.48, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY8Path.lineWidth = 1
            eMPTY8Path.stroke()
            
            
            //// EMPTY9 Drawing
            var eMPTY9Path = UIBezierPath(ovalInRect: CGRectMake(34.75, 102.73, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY9Path.lineWidth = 1
            eMPTY9Path.stroke()
            
            
            //// EMPTY10 Drawing
            var eMPTY10Path = UIBezierPath(ovalInRect: CGRectMake(42.99, 71.98, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY10Path.lineWidth = 1
            eMPTY10Path.stroke()
            
            
            //// EMPTY11 Drawing
            var eMPTY11Path = UIBezierPath(ovalInRect: CGRectMake(65.5, 49.47, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY11Path.lineWidth = 1
            eMPTY11Path.stroke()

        
        case 01, 13:
            
            let color0 = UIColor(red: 0.894, green: 0.000, blue: 0.476, alpha: 1.000)
            var hOUR1Path = UIBezierPath(ovalInRect: CGRectMake(127, 49.47, 24, 24))
            color0.setFill()
            hOUR1Path.fill()
            
        case 02, 14:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            
        case 03, 15:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            println("hour tick")
            
        case 04, 16:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            println("hour tick")
            
        case 05, 17:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            println("hour tick")
            
        case 06, 18:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            println("hour tick")
            
        case 07, 19:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            println("hour tick")
            
        case 08, 20:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            ClockStyleKit.drawCanvas08()
            println("hour tick")
            
        case 09, 21:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            ClockStyleKit.drawCanvas08()
            ClockStyleKit.drawCanvas09()
            println("hour tick")
            
        case 10, 22:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            ClockStyleKit.drawCanvas08()
            ClockStyleKit.drawCanvas09()
            ClockStyleKit.drawCanvas10()
            println("hour tick")
            
        case 11, 23:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            ClockStyleKit.drawCanvas08()
            ClockStyleKit.drawCanvas09()
            ClockStyleKit.drawCanvas10()
            ClockStyleKit.drawCanvas11()
            println("hour tick")
            
        case 12, 24:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            ClockStyleKit.drawCanvas08()
            ClockStyleKit.drawCanvas09()
            ClockStyleKit.drawCanvas10()
            ClockStyleKit.drawCanvas11()
            ClockStyleKit.drawCanvas12()
            println("hour tick")
            
            
        default:
            //// Color Declarations
            let color0 = UIColor(red: 0.894, green: 0.000, blue: 0.476, alpha: 1.000)
            
            
            //// HOUR1 Drawing
            var eMPTY1Path = UIBezierPath(ovalInRect: CGRectMake(127, 49.47, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY1Path.lineWidth = 1
            eMPTY1Path.stroke()
            
            //// EMPTY12 Drawing
            var eMPTY12Path = UIBezierPath(ovalInRect: CGRectMake(96.25, 41.23, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY12Path.lineWidth = 1
            eMPTY12Path.stroke()
            
            
            //// EMPTY2 Drawing
            var eMPTY2Path = UIBezierPath(ovalInRect: CGRectMake(149.51, 71.98, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY2Path.lineWidth = 1
            eMPTY2Path.stroke()
            
            
            //// EMPTY3 Drawing
            var eMPTY3Path = UIBezierPath(ovalInRect: CGRectMake(157.75, 102.73, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY3Path.lineWidth = 1
            eMPTY3Path.stroke()
            
            
            //// EMPTY4 Drawing
            var eMPTY4Path = UIBezierPath(ovalInRect: CGRectMake(149.51, 133.48, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY4Path.lineWidth = 1
            eMPTY4Path.stroke()
            
            
            //// EMPTY5 Drawing
            var eMPTY5Path = UIBezierPath(ovalInRect: CGRectMake(127, 155.99, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY5Path.lineWidth = 1
            eMPTY5Path.stroke()
            
            
            //// EMPTY6 Drawing
            var eMPTY6Path = UIBezierPath(ovalInRect: CGRectMake(96.25, 164.23, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY6Path.lineWidth = 1
            eMPTY6Path.stroke()
            
            
            //// EMPTY7 Drawing
            var eMPTY7Path = UIBezierPath(ovalInRect: CGRectMake(65.5, 155.99, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY7Path.lineWidth = 1
            eMPTY7Path.stroke()
            
            
            //// EMPTY8 Drawing
            var eMPTY8Path = UIBezierPath(ovalInRect: CGRectMake(42.99, 133.48, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY8Path.lineWidth = 1
            eMPTY8Path.stroke()
            
            
            //// EMPTY9 Drawing
            var eMPTY9Path = UIBezierPath(ovalInRect: CGRectMake(34.75, 102.73, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY9Path.lineWidth = 1
            eMPTY9Path.stroke()
            
            
            //// EMPTY10 Drawing
            var eMPTY10Path = UIBezierPath(ovalInRect: CGRectMake(42.99, 71.98, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY10Path.lineWidth = 1
            eMPTY10Path.stroke()
            
            
            //// EMPTY11 Drawing
            var eMPTY11Path = UIBezierPath(ovalInRect: CGRectMake(65.5, 49.47, 24, 24))
            ClockStyleKit.color1.setStroke()
            eMPTY11Path.lineWidth = 1
            eMPTY11Path.stroke()
        
            
            
            
        }
        
        switch updateTime(timer).minute {
            
        case 0...60:
            println("minute tick")
        default:
            println("minute tick")
        }
        
        switch updateTime(timer).second {
            
        case 0...60:
            println("second tick")
        case 1:
            println("second tick")
            
        default:
            println("no data")
            
        }
        
        
    }
    
    
    

}
