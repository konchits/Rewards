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
        lastName (nullable: true)
        phone (nullable: false)
        email (email: true, nullable: true)
        totalPoints (nullable: true)
    }
}
