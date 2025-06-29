class Animal {
    var legs: Int

    init(legs: Int) {
        self.legs = legs
    }
}


class Dog: Animal {
    func speak() {
        print("Dog is barking!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi said Woofy")
    }

    override init(legs: Int) {
        super.init(legs: legs)
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle said Woof-Woof")
    }

    override init(legs: Int) {
        super.init(legs: legs)
    }
}


class Cat: Animal {
    var isTame: Bool

    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }

    func speak() {
        print("Cat meows!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Persian meow")
    }

    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
}

class Lion: Cat {
    override func speak() {
        print("Rooooooar")
    }

    override init(legs: Int, isTame: Bool) {
        super.init(legs: legs, isTame: isTame)
    }
}


let corgi = Corgi(legs: 4)
corgi.speak()
print("Corgi has \(corgi.legs) legs.")

let lion = Lion(legs: 4, isTame: false)
lion.speak()
print("Lion is tame? \(lion.isTame)")

let persian = Persian(legs: 4, isTame: true)
persian.speak()
