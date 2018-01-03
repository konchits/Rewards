package rewards

import grails.gorm.transactions.Transactional

@Transactional
class CalculationsService {

    def welcome(params) {
        def name = params.name
        def points = params.points
        def textMessage = "Welcome $name. Thank you for registration."

        switch(points.toInteger()){
            case 5:
                textMessage = "Welcome back $name. Your drink is on us."
                break
            case 4:
                textMessage = "Welcome back $name. Your next drink is free."
                break
            case 1..3:
                textMessage = "Welcome back $name. You already have $points points."
        }
    }

    def getTotalPoints(customer) {
        def total = 0
        customer.awards.each{
            total = total + it.points
        }
        customer.totalPoints = total
        return customer
    }


    def processCheckin(lookupCustomer){
        //Look up th customer by phone number
        def customer = Customer.findByPhone(lookupCustomer.phone)

        //Set up new customer
        if(customer == null) {
            customer = lookupCustomer
            customer.firstName = "Customer"
        }

        //Calculate current award
        customer = getTotalPoints(customer)

        //Create welcome message
        def welcomeMessage = "Welcome $customer.firstName. Thank you for registration."
        def totalAwards  = customer.totalPoints.toInteger()
        switch(totalAwards){
            case 5:
                welcomeMessage = "Welcome back $customer.firstName. Your drink is on us."
                break
            case 4:
                welcomeMessage = "Welcome back $customer.firstName. Your next drink is free."
                break
            case 1..3:
                welcomeMessage = "Welcome back $customer.firstName. You already have ${totalAwards + 1} points."
        }

        //Add new award
        if(totalAwards < 5){
            customer.addToAwards(new Award(
                awardDate: new Date(),
                    type: "Purchase",
                    points: 1
            ))
        } else {
            customer.addToAwards(new Award(
                    awardDate: new Date(),
                    type: "Reward",
                    points: -5
            ))
        }

        //Save customer
        customer.save(flush: true, failOnError: true )


        return [customer, welcomeMessage]
    }
}
