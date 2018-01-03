package rewards

class CustomerController {
    static scaffold = Customer

    def calculationsService

    def checkin(){

    }

    def lookup(){
        def customerInstances = Customer.list()
        [customerInstanceList: customerInstances]
    }

    @Override
    def index() {
        params.max = 10
        [customerList: Customer.list(params).each {
                        it = calculationsService.getTotalPoints(it)
                    }, customerCount: Customer.count()]
    }

    def create(){
        [customer: new Customer()]
    }

    def save(Customer customer){
        customer.save()
        redirect(action: "show", id: customer.id)
    }

    def show(Long id){
        def customer = Customer.get(id)
        customer = calculationsService.getTotalPoints(customer)
        [customer: customer]
    }


    def edit(Long id){
        [customer: Customer.get(id)]
    }

    def update(Long id){
        def customer = Customer.get(id)
        customer.properties = params
        customer.save(flush: true)
        redirect(action: "show", id: customer.id)
    }

    def delete(Customer customer){
        customer.delete(flush: true)
        redirect(action: "index")
    }

    def customerLookup(Customer lookupCustomer){
        def (customer, welcomeMessage) = calculationsService.processCheckin(lookupCustomer)
        render(view: "checkin", model: [customer: customer, welcomeMessage: welcomeMessage])
    }

    def profile(){
        def customer = Customer.findByPhone(params.id)
        [customerInstance: customer]
    }

    def updateProfile(Customer customer){
        customer.save(flush: true)
        render(view: "profile", model: [customerInstance: customer])
    }
}
