//
//  main.swift
//  PerhitunganNilai
//
//  Created by Doni Rizki Mubarokah on 22/05/25.
//

import Foundation

// MARK: Input dari pengguna
print("Selamat Datang di Dicoding Academy!")
print("-----------------------------------")
print("Masukan total nilai yang akan dinilai", terminator: ":"); let total = readLine() ?? ""
print("-----------------------------------")

// MARK: Memastikan input sesuai.
if let totalitem: Int = Int(total){
    var allValues = [Int]()
    
    // MARK: Mendapatkan nilai setiap item.
    for index in 1...totalitem {
        print("Masukan item ke \(index)", terminator: ":"); let newItem = Int(readLine() ?? "") ?? 0
        allValues.append(newItem)
    }
    
    print("------------------------------")
    
    // MARK: Menjumlah semua nilai yang ada.
    var sum: Int = 0
    for value in allValues {
        sum += value
    }
    
    // MARK: Mendapatkan rata-rata nilai.
    let average = sum / totalitem
    var grade = ""
    
    // MARK: Mendapatkan grade dari rata-rata nilai.
    switch average{
    case 0...40:
        grade = "E"
    case 41...50:
        grade = "D"
    case 51...60:
        grade = "C"
    case 61...70:
        grade = "B"
    case 71...80:
        grade = "A"
    case 81...90:
        grade = "B+"
    case 91...100:
        grade = "A+"
    default:
        grade = "Tidak valid"
    }
    
    // MARK: Mencetak nilai akhir.
    if grade != "Tidak valid" {
        print("Anda mendapatkan Grade nilai \(grade) dari \(total) nilai yang ada.")
        print("Anda mendapatkan total nilai \(sum) dengan rata-rata \(average).")
    } else {
        print("Niali tidak valid")
    }
} else {
    print("Input tidak valid")
}

print("----------------------------------")
