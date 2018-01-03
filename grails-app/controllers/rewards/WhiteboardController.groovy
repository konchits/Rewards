package rewards

class WhiteboardController {

    def calculationsService

    def index() { }

    def conditions(){

        def textMessage = calculationsService.welcome(params)

        render textMessage
    }
}
