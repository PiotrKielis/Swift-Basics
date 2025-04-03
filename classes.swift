import Foundation

class ScreenViewModel {
    let title: String
    private(set) var showButton: Bool

    init (title: String, showButton: Bool) {
        self.title = title
        self.showButton = showButton

    }
    deinit {
        print("ScreenViewModel deinit")
    }

    func hideButton() {
        showButton = false
    }
    func updateShowButton(newValue: Bool) {
        showButton = newValue
    }
}

let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1 ", showButton: true)

//viewModel.showButton = false
//print(viewModel.title)

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)

print(viewModel.title)
