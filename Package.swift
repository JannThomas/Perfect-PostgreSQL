// swift-tools-version:5.1
//  Package.swift
//  Perfect-PostgreSQL
//
//  Created by Kyle Jessup on 3/22/16.
//	Copyright (C) 2016 PerfectlySoft, Inc.
//
//===----------------------------------------------------------------------===//
//
// This source file is part of the Perfect.org open source project
//
// Copyright (c) 2015 - 2016 PerfectlySoft Inc. and the Perfect project authors
// Licensed under Apache License v2.0
//
// See http://perfect.org/licensing.html for license information
//
//===----------------------------------------------------------------------===//
//

import PackageDescription

let package = Package(
    name: "PerfectPostgreSQL",
    platforms: [
        .macOS(.v10_15), .iOS(.v13)
    ],
    products: [
        .library(name: "PerfectPostgreSQL", targets: ["PerfectPostgreSQL"])
    ],
    dependencies: [
        .package(url: "https://github.com/PerfectlySoft/Perfect-CRUD.git", from: "2.0.0"),
        .package(url: "https://github.com/JannThomas/CLibPQ.git", .branch("master")),
        ],
    targets: [
        .target(name: "PerfectPostgreSQL", dependencies: ["PerfectCRUD", "libpq"]),
        .testTarget(name: "PerfectPostgreSQLTests", dependencies: ["PerfectPostgreSQL"])
    ]
)
