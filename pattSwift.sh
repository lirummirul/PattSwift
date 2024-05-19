#!/bin/bash


# ============================ MVC ============================
function touchModel() {
    echo "import Foundation" > Model/Model.swift
    echo "" >> Model/Model.swift
    echo "class Model {" >> Model/Model.swift
    echo "" >> Model/Model.swift
    echo "}" >> Model/Model.swift
}

function touchView() {
    echo "import UIKit" > View/View.swift
    echo "" >> View/View.swift
    echo "class View: UIView {" >> View/View.swift
    echo "" >> View/View.swift
    echo "    override init(frame: CGRect) {" >> View/View.swift
    echo "        super.init(frame: frame)" >> View/View.swift
    echo "        self.setupView()" >> View/View.swift
    echo "    }" >> View/View.swift
    echo "" >> View/View.swift
    echo "    required init?(coder aDecoder: NSCoder) {" >> View/View.swift
    echo "         super.init(coder: aDecoder)" >> View/View.swift
    echo "    }" >> View/View.swift
    echo "}" >> View/View.swift
}

function touchController() {
    echo "import UIKit" > Controller/Controller.swift
    echo "" >> Controller/Controller.swift
    echo "class Controller: UIViewController {" >> Controller/Controller.swift
    echo "    var model: Model!" >> Controller/Controller.swift
    echo "    var view: View!" >> Controller/Controller.swift
    echo "" >> Controller/Controller.swift
    echo "     override func viewDidLoad() {" >> Controller/Controller.swift
    echo "         super.viewDidLoad()" >> Controller/Controller.swift
    echo "     }" >> Controller/Controller.swift
    echo "}" >> Controller/Controller.swift
}

# ============================ MVVM ============================

function touchViewModel() {
    echo "import UIKit" > ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "class ViewModel {" >> ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "    init() {" >> ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "    }" >> ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "    deinit {" >> ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "    }" >> ViewModel/ViewModel.swift
    echo "" >> ViewModel/ViewModel.swift
    echo "}" >> ViewModel/ViewModel.swift
}

# ============================ MVP ============================

# function touchPresenterMVP() {
#     echo "import Foundation" > Presenter/Presenter.swift
#     echo "" >> Presenter/Presenter.swift
#     echo "class Presenter {" >> Presenter/Presenter.swift
#     echo "    weak var view: View?" >> Presenter/Presenter.swift
#     echo "    var model: Model" >> Presenter/Presenter.swift
#     echo "" >> Presenter/Presenter.swift
#     echo "    init(model: Model) {" >> Presenter/Presenter.swift
#     echo "        self.model = model" >> Presenter/Presenter.swift
#     echo "    }" >> Presenter/Presenter.swift
#     echo "" >> Presenter/Presenter.swift
#     echo "}" >> Presenter/Presenter.swift
# }

# - Presenter :
function touchPresenterPresenter() {
    echo "import Foundation" > Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "class Presenter {" >> Presenter/Presenter.swift
    echo "    weak var view: ViewInput?" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "    private let output: ModuleOutput" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "    init(output: ModuleOutput) {" >> Presenter/Presenter.swift
    echo "        self.output = output" >> Presenter/Presenter.swift
    echo "    }" >> Presenter/Presenter.swift
    echo "}" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "extension Presenter: ViewOutput {" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "}" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "extension Presenter: ModuleInput {" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "}" >> Presenter/Presenter.swift
}

function touchPresenterModuleIO() {
    echo "import Foundation" > Presenter/ModuleIO.swift
    echo "" >> Presenter/ModuleIO.swift
    echo "protocol ModuleInput: AnyObject {" >> Presenter/ModuleIO.swift
    echo "" >> Presenter/ModuleIO.swift
    echo "}" >> Presenter/ModuleIO.swift
    echo "" >> Presenter/ModuleIO.swift
    echo "protocol ModuleOutput: AnyObject {" >> Presenter/ModuleIO.swift
    echo "" >> Presenter/ModuleIO.swift
    echo "}" >> Presenter/ModuleIO.swift
}

# - View : 
function touchViewController() {
    echo "import UIKit" > View/ViewController.swift
    echo "" >> View/ViewController.swift
    echo "class ViewController: UIViewController {" >> View/ViewController.swift
    echo "    private let output: ViewOutput" >> View/ViewController.swift
    echo "" >> View/ViewController.swift
    echo "    init(output: ViewOutput) {" >> View/ViewController.swift
    echo "        self.output = output" >> View/ViewController.swift
    echo "        super.init(nibName: nil, bundle: nil)" >> View/ViewController.swift
    echo "    }" >> View/ViewController.swift
    echo "" >> View/ViewController.swift
    echo "    required init?(coder: NSCoder) {" >> View/ViewController.swift
    echo "        fatalError(\"init(coder:) has not been implemented\")" >> View/ViewController.swift
    echo "    }" >> View/ViewController.swift
    echo "" >> View/ViewController.swift
    echo "    override func viewDidLoad() {" >> View/ViewController.swift
    echo "        super.viewDidLoad()" >> View/ViewController.swift
    echo "    }" >> View/ViewController.swift
    echo "" >> View/ViewController.swift
    echo "}" >> View/ViewController.swift
}

function touchViewIO() {
    echo "import Foundation" > View/ViewIO.swift
    echo "" >> View/ViewIO.swift
    echo "protocol ViewInput: AnyObject {" >> View/ViewIO.swift
    echo "" >> View/ViewIO.swift
    echo "}" >> View/ViewIO.swift
    echo "" >> View/ViewIO.swift
    echo "protocol ViewOutput: AnyObject {" >> View/ViewIO.swift
    echo "" >> View/ViewIO.swift
    echo "}" >> View/ViewIO.swift
}

# - ModuleBuilder.swift
function touchModuleBuilder() {
    echo "import Foundation" > ModuleBuilder.swift
    echo "" >> ModuleBuilder.swift
    echo "class ModuleBuilder {" >> ModuleBuilder.swift
    echo "" >> ModuleBuilder.swift
    echo "    func build(output: ModuleOutput) -> UIViewController {" >> ModuleBuilder.swift
    echo "        let presenter = Presenter(output: output)" >> ModuleBuilder.swift
    echo "        let viewController = ViewController(output: presenter)" >> ModuleBuilder.swift
    echo "        presenter.view = view" >> ModuleBuilder.swift
    echo "        view.presenter = presenter" >> ModuleBuilder.swift
    echo "        return view" >> ModuleBuilder.swift
    echo "    }" >> ModuleBuilder.swift
    echo "" >> ModuleBuilder.swift
    echo "}" >> ModuleBuilder.swift
}

# ============================ MVP + Coordinator ============================

function touchCoordinator() {
    echo "import UIKit" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "class Coordinator: CoordinatorProtocol {" >> Coordinator/Coordinator.swift
    echo "    var navigationController: UINavigationController" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "    init(navigationController: UINavigationController) {" >> Coordinator/Coordinator.swift
    echo "        self.navigationController = navigationController" >> Coordinator/Coordinator.swift
    echo "    }" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "    func start() {" >> Coordinator/Coordinator.swift
    echo "        let VC = ModuleBuilder().build(output: self)" >> Coordinator/Coordinator.swift
    echo "        navigationController.pushViewController(VC, animated: true)" >> Coordinator/Coordinator.swift
    echo "    }" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "}" >> Coordinator/Coordinator.swift
}

function touchCoordinatorProtocol() {
    echo "import UIKit" >> Coordinator/CoordinatorProtocol.swift
    echo "" >> Coordinator/CoordinatorProtocol.swift
    echo "protocol CoordinatorProtocol {" >> Coordinator/CoordinatorProtocol.swift
    echo "    var navigationController: UINavigationController { get }" >> Coordinator/CoordinatorProtocol.swift
    echo "}" >> Coordinator/CoordinatorProtocol.swift
    echo "" >> Coordinator/CoordinatorProtocol.swift
    echo "protocol Input: AnyObject {" >> Coordinator/CoordinatorProtocol.swift
    echo "" >> Coordinator/CoordinatorProtocol.swift
    echo "}" >> Coordinator/CoordinatorProtocol.swift
    echo "" >> Coordinator/CoordinatorProtocol.swift
    echo "protocol Output: AnyObject {" >> Coordinator/CoordinatorProtocol.swift
    echo "" >> Coordinator/CoordinatorProtocol.swift
    echo "}" >> Coordinator/CoordinatorProtocol.swift
}

# ============================ VIPER ============================
function touchInteractor() {
    echo "import Foundation" > Interactor/Interactor.swift
    echo "" >> Interactor/Interactor.swift
    echo "class Interactor {" >> Interactor/Interactor.swift
    echo "" >> Interactor/Interactor.swift
    echo "}" >> Interactor/Interactor.swift
}

function touchRouter() {
    echo "import Foundation" > Router/Router.swift
    echo "" >> Router/Router.swift
    echo "class Router {" >> Router/Router.swift
    echo "" >> Router/Router.swift
    echo "}" >> Router/Router.swift
}

# ============================ CLEAN ============================
function touchEntity() {
    echo "import Foundation" > Entity/Entity.swift
    echo "" >> Entity/Entity.swift
    echo "class Entity {" >> Entity/Entity.swift
    echo "" >> Entity/Entity.swift
    echo "}" >> Entity/Entity.swift
}

function touchUseCase() {
    echo "import Foundation" > UseCase/UseCase.swift
    echo "" >> UseCase/UseCase.swift
    echo "class UseCase {" >> UseCase/UseCase.swift
    echo "" >> UseCase/UseCase.swift
    echo "}" >> UseCase/UseCase.swift
}

function touchRepository() {
    echo "import Foundation" > Repository/Repository.swift
    echo "" >> Repository/Repository.swift
    echo "class Repository {" >> Repository/Repository.swift
    echo "" >> Repository/Repository.swift
    echo "}" >> Repository/Repository.swift
}

project_name=$1

if [[ "$project_name" == "mvc" ]]; then # success 
    mkdir Model
    mkdir View
    mkdir Controller

    touch Model/Model.swift
    touch View/View.swift
    touch Controller/Controller.swift

    if [[ "$1" != "w" ]]; then # success 
        touchModel
        touchView
        touchController
    fi

    echo "Success: Created $project_name"
elif [[ "$project_name" == "mvvm" ]]; then # success
    mkdir Model
    mkdir View
    mkdir ViewModel

    touch Model/Model.swift
    touch View/View.swift
    touch ViewModel/ViewModel.swift

    touchModel
    touchView
    touchViewModel

    echo "Success: Created $project_name"
elif [[ "$project_name" == "mvp" ]]; then # success
    mkdir View
    mkdir Presenter

    touch Presenter/Presenter.swift
    touch Presenter/ModuleIO.swift
    touch View/ViewController.swift
    touch View/ViewIO.swift
    touch ModuleBuilder.swift

    touchPresenterPresenter
    touchPresenterModuleIO
    touchViewController
    touchViewIO
    touchModuleBuilder

    echo "Success: Created $project_name"
elif [[ "$project_name" == "mvp+c" ]]; then # success
    mkdir View
    mkdir Presenter
    mkdir Coordinator

    touch Presenter/Presenter.swift
    touch Presenter/ModuleIO.swift
    touch View/ViewController.swift
    touch View/ViewIO.swift
    touch Coordinator/Coordinator.swift
    touch Coordinator/CoordinatorProtocol.swift
    touch ModuleBuilder.swift

    touchPresenterPresenter
    touchPresenterModuleIO
    touchViewController
    touchViewIO
    touchModuleBuilder
    touchCoordinator
    touchCoordinatorProtocol

    echo "Success: Created $project_name"
elif [[ "$project_name" == "viper" ]]; then
    mkdir Model
    mkdir View
    mkdir Presenter
    mkdir Interactor
    mkdir Router
    mkdir Entity

    touch Model/Model.swift
    touch View/View.swift
    touch Presenter/Presenter.swift
    touch Interactor/Interactor.swift
    touch Router/Router.swift
    touch Entity/Entity.swift

    touchModel
    touchView
    touchPresenter
    touchInteractor
    touchRouter
    touchEntity

    echo "Success: Created $project_name"
elif [[ "$project_name" == "clean" ]]; then
    mkdir Domain
    mkdir Data
    mkdir Presentation

    mkdir Domain/Entity
    mkdir Domain/UseCase
    mkdir Domain/Repository

    mkdir Data/Repository

    mkdir Presentation/View
    mkdir Presentation/Presenter
    mkdir Presentation/Interactor
    mkdir Presentation/Router

    touch Domain/Entity/Entity.swift
    touch Domain/UseCase/UseCase.swift
    touch Domain/Repository/Repository.swift

    touch Data/Repository/Repository.swift

    touch Presentation/View/View.swift
    touch Presentation/Presenter/Presenter.swift
    touch Presentation/Interactor/Interactor.swift
    touch Presentation/Router/Router.swift

    touchDomainEntity
    touchDomainUseCase
    touchDomainRepository

    touchDataRepository

    touchPresentationView
    touchPresentationPresenter
    touchPresentationInteractor
    touchPresentationRouter

    echo "Success: Created $project_name"
fi
