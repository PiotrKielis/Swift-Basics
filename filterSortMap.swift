import Foundation

struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int

}

var allUser: [DatabaseUser] = [

    DatabaseUser(name: "John", isPremium: true, order: 5),
    DatabaseUser(name: "Jane", isPremium: false, order: 3),
    DatabaseUser(name: "Doe", isPremium: true, order: 2),
    DatabaseUser(name: "Smith", isPremium: false, order: 1),
    DatabaseUser(name: "Emily", isPremium: true, order: 4),
]

//var allPremiumUser: [DatabaseUser] = []


/*for user in allUser {
    if user.isPremium {
        allPremiumUser.append(user)
    }

}*/
/*var allPremiumUser: [DatabaseUser] = allUser.filter { user in
   if user.isPremium {
        return true
   } 
    return false
}*/
var allPremiumUser: [DatabaseUser] = allUser.filter { user in
    user.isPremium
}

var allPremiumUser2: [DatabaseUser] = allUser.filter({ $0.isPremium})


//print(allPremiumUser)
//print(allPremiumUser2)

var orderedUsers: [DatabaseUser] = allUser.sorted { user1, user2 in
    return user1.order < user2.order
}

var orderedUsers2: [DatabaseUser] = allUser.sorted(by: { $0.order < $1.order })

//print(orderedUsers2)

var userNames: [String] = allUser.map { user in
    return user.name
}

var userNames2: [String] = allUser.map { $0.name }

print(userNames2)
