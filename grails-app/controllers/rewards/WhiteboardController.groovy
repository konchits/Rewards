package rewards

class WhiteboardController {
    def calculationsService
    def index() { }
    def variables(){
        def myTotal = '1'
        //myTotal = 2
        render("Total: " + myTotal)
        render("<br>myTotal is " + myTotal.class)
        
        def firstName = "Mike"
        render("<br>Name : " + firstName)
        render("<br>firstName is " + firstName.class)
        
        def today = new Date()
        render("<br>Today :" + today)
        render("<br>today is " + today.class)
    }
    
    def strings(){
        def first = "Mike"
        def points = "4"
        def state = "ut"
        def input = "SHOUTING"
         render ("Welcome back " + first + ". You have " + points + " points.")
         render ("<br>Hey there $first. You have already $points points!")
         render ("<br>Today is ${new Date()}")
         render ("<br>Your string, $first, has ${first.length()} characters in string.")
         render ("<br>Please stop ${input.toLowerCase()}")
         render ("<br>I live in ${state.toUpperCase()}")
    }
    
    def ifconditions(){
        def firstName = "Mike"
        def totalPoints = "4"
        def welcomeMessage = ""
        if(totalPoints.toInteger() >= 5){
            welcomeMessage = "Welcome back $firstName, this drink is on us."    
        } else if (totalPoints.toInteger() == 4) {
            welcomeMessage = "Welcome back $firstName, your next drink is free."
        } else {
            welcomeMessage = "Welcome back $firstName, you now have $totalPoints points." 
        }
        render welcomeMessage
    }
    
    def switchconditions(){
        def welcomeMessage = calculationsService.welcome(params)
        render welcomeMessage   
        /*
        def firstName = params.first
        def totalPoints = params.points
        def welcomeMessage = ""
        switch(totalPoints.toInteger()  ){
            case 5:
                welcomeMessage = "Welcome back $firstName, this drink is on us."
                break
            case 4:
                welcomeMessage = "Welcome back $firstName, your next drink is free."
                break
            case 1..3:
                welcomeMessage = "Welcome back $firstName, you now have $totalPoints points." 
            default:
                welcomeMessage = "Welcome back $firstName, thank you for registering." 
        }
    }*/
    }
}
