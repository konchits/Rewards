package rewards

class CustomerController {
    static scaffold = Customer
    
    //def calculationsService
    
    def lookup(){
        //def customerInstance = Customer.list(sort: "lastName", order: "desc", max: 5, offset: 5)
        def customerInstance = Customer.findAllByTotalPoints(5, [sort: "lastName", order: "desc"])
        [customerInstanceList: customerInstance]
    }

    def checkin(){

    }
    
    def index() {
        params.max = 10
        [customerInstanceList: Customer.list(params), customerInstanceCount: Customer.count()]
    }
    
    /*def create(){
        [customerInstance: new Customer()]
    }
    
    def save(Customer customerInstance){
        customerInstance.save()
        redirect( action: "show", id: customerInstance.id)
    }
    
    def show(Long id){
        def customerInsatnce = Customer.get(id)
        //customerInstance = calculationsService.getTotalPoints(customerInstance)
        [customerInsatnce: customerInsatnce]
    }
    
    def edit(Long id){
        def customerInsatnce = Customer.get(id)
        [customerInsatnce: customerInsatnce]
    }
    
    def update(Long id){
        def customerInstance = Customer.get(id)
        customerInstance.properties = params
        //redirect( action: "save", customerInstance: customerInstance)
        customerInstance.save()
        redirect( action: "show", id: customerInstance.id)
    }
    
    def delete(Long id){
        def customerInsatnce = Customer.get(id)
        customerInstance.delete()
        redirect(action:"index")
    }*/
}
