import UIKit


@IBDesignable class clock: UIView {
    
    //declaring time variables
    
    var hour = 0
    var minute = 0
    var second = 0
    
    //this is declaring a timer that runs updateTime() which returns the time and then orders a redraw of the UIView element I have in storyboard 
    var timer = NSTimer()
    
    // I want this timer to run every second so that the new view is redrawn each second. This will be necessary when updating
    // seconds/minutes when I add that functionality.
    
    timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "updateTime", userInfo: nil, repeats: true)
    
    //this function is supposed to return the current hour, minute and second, but I am having difficulty with getting it to 
    //return values for the switch/case statement to crunch through
    
    func updateTime(hour: Int, minute: Int, second: Int) -> (hour: Int, minute: Int, second: Int) {
        
        var date:NSDate = NSDate()
        var calendar:NSCalendar = NSCalendar.currentCalendar()
        var components:NSDateComponents = calendar.components(NSCalendarUnit.CalendarUnitHour | NSCalendarUnit.CalendarUnitMinute | NSCalendarUnit.CalendarUnitSecond, fromDate: date)
        
        let hour = components.hour
        let minute = components.minute
        let second = components.second
        
        
        setNeedsDisplay()
        return (hour, minute, second)
        
    }
    
    // drawrect is supposed to draw out the different clockfaces based on the time returned by updateTime() drawCanvas0() is the default clock face
    
    override func drawRect(rect: CGRect) {
        
        
        
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
        
    }
    

}
