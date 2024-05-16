#!/bin/bash

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
    echo "}" >> View/View.swift
}

function touchPresenter() {
    echo "import Foundation" > Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "class Presenter {" >> Presenter/Presenter.swift
    echo "    weak var view: View?" >> Presenter/Presenter.swift
    echo "    var model: Model" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "    init(model: Model) {" >> Presenter/Presenter.swift
    echo "        self.model = model" >> Presenter/Presenter.swift
    echo "    }" >> Presenter/Presenter.swift
    echo "" >> Presenter/Presenter.swift
    echo "}" >> Presenter/Presenter.swift
}

function touchCoordinator() {
    echo "import Foundation" > Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "class Coordinator: NSObject {" >> Coordinator/Coordinator.swift
    echo "    var navigationController: UINavigationController" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "    init(navigationController: UINavigationController) {" >> Coordinator/Coordinator.swift
    echo "        self.navigationController = navigationController" >> Coordinator/Coordinator.swift
    echo "    }" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "    func start() {" >> Coordinator/Coordinator.swift
    echo "        let view = View()" >> Coordinator/Coordinator.swift
    echo "        let model = Model()" >> Coordinator/Coordinator.swift
    echo "        let presenter = Presenter(model: model)" >> Coordinator/Coordinator.swift
    echo "        presenter.view = view" >> Coordinator/Coordinator.swift
    echo "        view.presenter = presenter" >> Coordinator/Coordinator.swift
    echo "        navigationController.pushViewController(view, animated: true)" >> Coordinator/Coordinator.swift
    echo "    }" >> Coordinator/Coordinator.swift
    echo "" >> Coordinator/Coordinator.swift
    echo "}" >> Coordinator/Coordinator.swift
}

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

if [[ "$project_name" == "mvc" ]]; then
    mkdir Model
    mkdir View
    mkdir Controller

    touch Model/Model.swift
    touch View/View.swift
    touch Controller/Controller.swift

    touchModel
    touchView
    touchController

    echo "Success: Created $project_name"
elif [[ "$project_name" == "mvp" ]]; then
    mkdir Model
    mkdir View
    mkdir Presenter

    touch Model/Model.swift
    touch View/View.swift
    touch Presenter/Presenter.swift

    touchModel
    touchView
    touchPresenter

    echo "Success: Created $project_name"
elif [[ "$project_name" == "mvp+c" ]]; then
    mkdir Model
    mkdir View
    mkdir Presenter
    mkdir Coordinator

    touch Model/Model.swift
    touch View/View.swift
    touch Presenter/Presenter.swift
    touch Coordinator/Coordinator.swift

    touchModel
    touchView
    touchPresenter
    touchCoordinator

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
