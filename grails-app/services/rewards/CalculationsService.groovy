package rewards

import grails.gorm.transactions.Transactional


@Transactional
class CalculationsService {
    
    def welcome(params) {
        def firstName = params.first
        def totalPoints = params.points
        def welcomeMessage = ""
        switch(totalPoints.toInteger()){
            case 5:
                welcomeMessage = "Welcome back $firstName, this drink is on us."
                break
            case 4:
                welcomeMessage = "Welcome back $firstName, your next drink is free."
                break
            case 1..3:
                welcomeMessage = "Welcome back $firstName, you now have $totalPoints points." 
                break
            default:
                welcomeMessage = "Welcome back $firstName, thank you for registering." 
        }    
    }
    
    def getTotalPoints(customerInstance){
        
    }
}
