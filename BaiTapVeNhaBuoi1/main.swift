//
//  main.swift
//  BaiTapVeNhaBuoi1
//
//  Created by Công on 10/19/20.
//  Copyright © 2020 Công. All rights reserved.
//

import Foundation
//MARK: Bài 1
//Chuyển đổi độ C sang độ F

var C: Double = 27
var F: Double = (C * 1.8) + 32
print( "Giá trị độ F = \(F)" )

// Chuyển đổi độ F sang độ C

var F2: Float = 80.6
var C2: Float = (F2 - 32) / 1.8
print( "Gia trị độ C la: \(C2)" )


//MARK: Bài 2
// Nhập 3 giá trị nguyên dương a, b, c. Kiểm tra xem a, b, c có phải là 3 cạnh của tam giác không?
// - Nếu là 3 cạnh của tam giác thì tính diện tích của tam giác.
// - Nếu không phải là tam giác in ra “a, b, c không phải là 3 cạnh của tam giác”

var a: Float = 4
var b: Float = 5
var c: Float = 6
if a + b > c || b + c > a || a + c > b || a - b < c || b - c < a || a - c < b    { // tổng hai cạnh lớn hoăn cạnh còn lại hoặc hiệu 2 cạnh nhỏ hơn cạnh còn lại
    
    print( "a, b, c là 3 cạnh của tam giác" )
    
    let p: Float = 1/2 * (a + b + c)
    let S: Float = sqrtf(p * (p - a) * (p - b) * (p - c))
    
    print("Diện tích của tam giác là : \(S)")
    
} else {
    
    print( "a, b, c không phải là 3 cạnh của tam giác" )
    
}


//MARK: Bài 3
//Cho một năm công lịch bất kỳ , kiểm tra xem năm đó có phải năm nhuận hay không?
//Năm nhuận là năm chia hết cho 400
//Năm nhuận là năm chia hết cho 4 nhưng không chia hết cho 100

var year: Int = 2001 
if year%400 == 0 || year%4 == 0 && year%100 != 0 {
    
    print("Năm \(year) là năm nhuận")
    
}else {
    
    print("Năm \(year) không là năm nhuận")
    
}


//MARK: Bài 4
//Cho một mảng số nguyên. Viết hàm kiểm tra nếu trong mảng có phần tử âm thì thay thế nó bằng 0.

var mang: [Int] = [2, 3, 4, 5, -6, 7, 11, -13, 14, 15]
for i in 0..<mang.count{

    if mang[i] < 0{
        mang[i] = 0
        
    }
}
 print("giá trị mới của mảng là : \(mang)" )

//MARK: Bài 5
//Viết hàm tìm số nhỏ nhất và lớn nhất trong mảng số nguyên.
var mang1 = [1, 5, 9, 12, 1, 5, 3, 18, 14, 23, 10]
for index1 in 0..<mang1.count {
    for index2 in index1+1..<mang1.count {
        if mang1[index2] < mang1[index1] {
            let temp = mang1[index2]
            mang1[index2] = mang1[index1]
            mang1[index1] = temp
        }
    }
}
print("Số nhỏ nhất: \(mang1.first ?? 0)" )
print("Số lớn nhất: \(mang1.last ?? 1010)" )

//MARK: Bài 6
//Trả về vị trí đầu tiên của số lẻ, vị trí cuối cùng của số chẵn trong mảng bất kì.
var mang2: [Int] = [2, 3, 4, 5, -6, 7, 11, -13, 14, 15]
for i in 0..<mang2.count{

    if i%2 != 0{
        print("Vị trí đầu tiên của số lẻ : index[\(i)]" )
        break
    }
}

for j in stride(from: mang2.count-1, to: 0, by: -1){

    if j%2 == 0{
        print("Vị trí cuối cùng của số chẵn : index[\(j)]" )
        break
    }
}
