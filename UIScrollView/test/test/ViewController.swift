//
//  ViewController.swift
//  test
//
//  Created by 김상혁 on 2022/05/19.
//

import UIKit

class ViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.backgroundColor = .gray
        return scrollView
    }()
    
    private let contentView: UIView = {
        let view = UIView()
        return view
    }()
    
//    private let contentView: UIStackView = {
//        let stackView = UIStackView()
//        stackView.axis = .vertical
//        return stackView
//    }()
    
    private let shadowView: UIView = {
        let view = UIView()
        
        view.layer.borderWidth = 0.5 //borderWidth가 없으면 그림자가 나타나지 않음
        
        /// 테두리 밖으로 contents가 있을 때, 마스킹(true)하여 표출안되게 할것인지 마스킹을 off(false)하여 보일것인지 설정
        view.layer.masksToBounds = false //그림자는 view의 테두리 밖에 그려지기 때문에, true로 설정하면 그림자가 나타나지 않음
        
       /// shadow 색상
        view.layer.shadowColor = UIColor.black.cgColor
        
       /// 현재 shadow는 view의 layer 테두리와 동일한 위치로 있는 상태이므로 offset을 통해 그림자를 이동시켜야 표출
        view.layer.shadowOffset = CGSize(width: 0, height: -10)
        
       /// shadow의 투명도 (0 ~ 1)
        view.layer.shadowOpacity = 1
        
       /// shadow의 corner radius
        view.layer.shadowRadius = 5
        
        view.layer.shadowPath = UIBezierPath(rect: view.bounds).cgPath
        return view
    }()
    
    private let innerView: UIView = {
        let view = UIView()
        view.layer.masksToBounds = true
        view.layer.borderWidth = 0.5
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        
        contentView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor).isActive = true
        
        contentView.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor).isActive = true
        contentView.heightAnchor.constraint(equalToConstant: 1500).isActive = true
        
        contentView.addSubview(innerView)
        innerView.backgroundColor = .red
        innerView.translatesAutoresizingMaskIntoConstraints = false
        innerView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        innerView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        innerView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        innerView.heightAnchor.constraint(equalToConstant: 500).isActive = true
//        view.addSubview(shadowView)
//        shadowView.addSubview(innerView)
//
//        shadowView.translatesAutoresizingMaskIntoConstraints = false
//        shadowView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
//        shadowView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100).isActive = true
//        shadowView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 50).isActive = true
//        shadowView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -50).isActive = true
//
//        innerView.translatesAutoresizingMaskIntoConstraints = false
//        innerView.topAnchor.constraint(equalTo: shadowView.topAnchor, constant: 30).isActive = true
//        innerView.bottomAnchor.constraint(equalTo: shadowView.bottomAnchor, constant: -30).isActive = true
//        innerView.leadingAnchor.constraint(equalTo: shadowView.leadingAnchor, constant: 30).isActive = true
//        innerView.trailingAnchor.constraint(equalTo: shadowView.trailingAnchor, constant: -30).isActive = true
        
    }


}

extension ViewController: UIScrollViewDelegate {
//    func scrollViewDidScroll(_ scrollView: UIScrollView) {
//        //사용자가 contentView를 스크롤할 때 `delegate`에게 알립니다
//        //스크롤될 때 마다 계속 실행됨
//        print(#function)
//    }
//
//    func scrollViewWillBeginDragging(_ scrollView: UIScrollView) {
//        //scrollView에 드래그하기 시작할 때 `delegate`에게 알립니다.
//        //손을 댄 상태에서 드래그하기 시작할 때 1회 호출됨
//        print(#function)
//    }

//    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        //scrollView에서 드래그가 끝날 때 호출되며, 땠을 때의 속도와 방향을 velocity로 `delegate`에게 알립니다.
//        //드래그 한 후 손을 땔 때 1회 호출됨
//
//        print(#function)
//        print(velocity)
//    }
//
//    func scrollViewDidEndDragging(_ scrollView: UIScrollView, willDecelerate decelerate: Bool) {
//        //scrollView에서 드래그가 끝날 때 호출되며, scrollView의 스크롤 모션 감속 여부를 decelerate로 `delegate`에게 알립니다.
//        //드래그 한 후 손을 땔 때 1회 호출됨
//        print(#function)
//        //decelerate
//        //손을 땐 순간 스크롤뷰가 감속해야한다면 true로 반환
//        //손을 땐 순간 스크롤뷰가 멈춰있다면 false를 반환
//    }
}

