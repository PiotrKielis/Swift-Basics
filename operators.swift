import Foundation

var likeCount: Double = 5
var commenctCount: Double = 0
var viewCount: Double = 100

likeCount += 1
print(likeCount)

if likeCount == 5 {
    print("Post has 5 likes.")
} else {
    print("Has more than 5 likes.")
}

if likeCount != 5 {
    print("Post has more than 5 likes.")
}

if (likeCount > 3) && (commenctCount > 0) {
    print("Post is popular.")
}

if viewCount < 1000 || likeCount > 10 {
    print("Post is getting popular.")
}


if likeCount == 5 {
    print("Post has 5 likes.")
} else if likeCount > 5 {
    print("Post has more than 5 likes.")
} else {
    print("Post has less than 5 likes.")
}

