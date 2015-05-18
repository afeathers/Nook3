import UIKit

// updateTime pulls the time, breaks it into its components, and returns hours, minutes and seconds and summons drawRect to redraw the visual representation of the time.


class timeUpdate: UIView {
    
    func updateTime() -> (Int, Int, Int) {

        
        var date:NSDate = NSDate()
        var calendar:NSCalendar = NSCalendar.currentCalendar()
        var components:NSDateComponents = calendar.components(NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond, fromDate: date)
        
        
        var hour = components.hour
        var minute = components.minute
        var second = components.second
        
        setNeedsDisplay()
        return (hour, minute, second)
        
        
    }
    

}

// trying to get this timer to automatically run, updateTime, and then redraw the graphics.

class timer: NSObject {
    
    override init () { super.init() }
    func timeTimer() {
        
        var timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
        
    }
    
}


@IBDesignable class clock: UIView {
    
    
    
    
//drawRect contains all of the draw Methods and a switch/case for matching draw methods with returned time components.
    
    override func drawRect(rect: CGRect) {
        
        let (hour, minute, second) = timeUpdate().updateTime()
        
        switch hour {
            
        case 0:
            
            ClockStyleKit.drawCanvas0()
        
        case 01, 13:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            
        case 02, 14:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            
        case 03, 15:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            
        case 04, 16:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            
        case 05, 17:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            
        case 06, 18:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            
        case 07, 19:
            ClockStyleKit.drawCanvas0()
            ClockStyleKit.drawCanvas01()
            ClockStyleKit.drawCanvas02()
            ClockStyleKit.drawCanvas03()
            ClockStyleKit.drawCanvas04()
            ClockStyleKit.drawCanvas05()
            ClockStyleKit.drawCanvas06()
            ClockStyleKit.drawCanvas07()
            
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
            
            
        default:
            
            println("hour tick")
            //// Color Declarations
            let color0 = UIColor(red: 0.894, green: 0.000, blue: 0.476, alpha: 1.000)
            
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
        
        
        switch minute {
            
        case 0-60:
            println("minute tick")
            
        default:
            println("minute default")
            
        }
        
        switch second {
            
        case 0-60:
            println("second tick")
            
        default:
            println("second value")
            
            
        }
        
        
        
    }
    

}
