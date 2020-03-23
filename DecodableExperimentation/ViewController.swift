// Created by guillaume_sabran on 3/22/20.
// Copyright © 2020 Airbnb Inc. All rights reserved.

import UIKit
import DictionaryCoding
import SnapKit
import Foundation

enum Decoding: String, CaseIterable {
  case dictionaryParsing = "iterating dictionary"
  case jsonDecoder = "JSON decoder"
  case dictionaryDecoder = "Dictionary decoder"
  case binaryDecoder = "Binary decoder"
}

class ViewController: UIViewController {
  private let button = UIButton()
  private let buttonMessage = UITextView()
  private let dataSizeView = UITextView()
  private let resultView = UITextView()

  private var latencies: [Decoding: Double] = [:]

  private var isDecoding = false

  private let data = try! Data(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "stubData", ofType: "json")!))
  private var binaryData: Data!

  override func viewDidLoad() {
    super.viewDidLoad()

    let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
    binaryData = try! BinaryType(json).serializedData()

    view.addSubview(button)
    view.addSubview(buttonMessage)
    view.addSubview(dataSizeView)
    view.addSubview(resultView)

    button.setTitle("Decode", for: .normal)
    buttonMessage.text = "(don't double press before results are displayed)"
    buttonMessage.textAlignment = .center

    let buttonTap = UITapGestureRecognizer(target: self, action: #selector(didTapButton))
    button.addGestureRecognizer(buttonTap)

    dataSizeView.text = """
json: \(formatSize(data)) (\(formatSize(try! (data as NSData).compressed(using: .zlib) as Data)) compressed)
binary: \(formatSize(binaryData)) (\(formatSize(try! (binaryData as NSData).compressed(using: .zlib) as Data)) compressed)
"""

    // UI setup
    view.backgroundColor = .white
    dataSizeView.textAlignment = .center
    dataSizeView.snp.makeConstraints { maker in
      maker.width.equalTo(view.snp.width).offset(-60)
      maker.height.equalTo(50)
      maker.centerX.equalTo(view.snp.centerX)
      maker.topMargin.equalTo(view.snp.topMargin).offset(50)
    }

    button.setTitleColor(.black, for: .normal)
    button.snp.makeConstraints { maker in
      maker.width.equalTo(100)
      maker.height.equalTo(40)
      maker.centerX.equalTo(view.snp.centerX)
      maker.topMargin.equalTo(dataSizeView.snp.bottom).offset(10)
    }

    buttonMessage.snp.makeConstraints { maker in
      maker.width.equalTo(view.snp.width).offset(-60)
      maker.height.equalTo(40)
      maker.centerX.equalTo(view.snp.centerX)
      maker.topMargin.equalTo(button.snp.bottom).offset(10)
    }

    resultView.snp.makeConstraints { maker in
      maker.width.equalTo(view.snp.width).offset(-60)
      maker.height.equalTo(300)
      maker.centerX.equalTo(view.snp.centerX)
      maker.topMargin.equalTo(buttonMessage.snp.bottom).offset(10)
    }
  }

  @objc private func didTapButton() {
    guard !isDecoding else { return }
    isDecoding = true

    var t0 = Date()
    let n = 10
    for _ in 0..<n {
      let json = try! JSONSerialization.jsonObject(with: data, options: []) as! [String: Any]
      let value = try! BasicType(json)
    }
    latencies[.dictionaryParsing] = Date().timeIntervalSince(t0)

    t0 = Date()
    for _ in 0..<n {
      let decoder = Foundation.JSONDecoder()
      let value = try! decoder.decode(DecodableType.self, from: data)
    }
    latencies[.jsonDecoder] = Date().timeIntervalSince(t0)

    t0 = Date()
    for _ in 0..<n {
      let json = try! JSONSerialization.jsonObject(with: self.data, options: []) as! [String: Any]
      let decoder = DictionaryDecoder()
      let value = try! decoder.decode(DecodableType.self, from: json)
    }
    latencies[.dictionaryDecoder] = Date().timeIntervalSince(t0)

    t0 = Date()
    for _ in 0..<n {
      let value = try! BinaryType(serializedData: binaryData)
    }
    latencies[.binaryDecoder] = Date().timeIntervalSince(t0)

    displayResult()

    isDecoding = false
  }

  private func formatSize(_ data: Data) -> String {
    let size = data.count
    if size < 1024 {
      return "\(size)B"
    } else if size / 1024 < 1024 {
      return "\((Double(size) / 1024).withDecinal(2))KB"
    } else {
      return "\((Double(size) / 1024 / 1024).withDecinal(2))MB"
    }
  }

  private func delta(baseline: Double, newValue: Double) -> String {
    return "\(newValue > baseline ? "+" : "")\(Double((newValue - baseline) * 100 / baseline).withDecinal(2))%"
  }

  private func displayResult() {
    guard let baselineLatency = latencies[.dictionaryParsing] else {
      self.resultView.text = "Decode with the baseline first"
      return
    }
    var text = """
    Decoding results:
        - iterating dictionary: \(Double(baselineLatency * 1000).withDecinal(2)) ms
    """

    Decoding.allCases.filter { $0 != .dictionaryParsing }.forEach { decoding in
      if let latency = latencies[decoding] {
        text = text.appending("\n    - with \(decoding): \(Double(latency * 1000).withDecinal(2)) ms (\(delta(baseline: baselineLatency, newValue: latency)))")
      }
    }
    self.resultView.text = text
  }
}

extension Double {
  func withDecinal(_ n: Int) -> String {
    return String(format:"%.\(n)f", self)
  }
}
