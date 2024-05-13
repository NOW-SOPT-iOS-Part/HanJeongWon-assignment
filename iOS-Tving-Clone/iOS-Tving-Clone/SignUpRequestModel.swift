//
//  SignUpRequestModel.swift
//  34th-SOPT-2nd-Seminar
//
//  Created by HanJW on 4/27/24.
//

import Foundation

struct SignUpRequestModel: Codable {
    let authenticationId: String
    let password: String
    let nickname: String
    let phone: String
}
