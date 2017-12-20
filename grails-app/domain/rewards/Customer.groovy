package rewards

class Customer {
    String firstName
    String lastName
    Long phone
    String email
    Integer totalPoints

    static hasMany = [awards:Award, orders:OnlineOrder]

    static constraints = {
        firstName (blank: false)
        lastName (blank: false)
        phone (nullable: true)
        email (email: true)
        totalPoints (nullable: true)
    }
}
