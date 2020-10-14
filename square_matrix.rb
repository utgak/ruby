ma = []
puts("Enter a matrix of size up to 4 * 4 line by line. separating numbers with commas.")
while true
    temp = gets.chomp()
    if temp == ""
        break
    end
    ma << temp.split(',')
end
square = true
for string in ma
    if string.length == ma.length
        square = true
    else square = false
        puts "Matrix is not square"
        break
    end
end
m = ma.flatten
for i in 0..m.size-1
    m[i] = Integer(m[i])
end
if square
    case m.length
        when 1
            puts("Determinant = #{m[0]}")
        when 4
            puts("Determinant = #{m[0] * m[3] - m[1] * m[2]}")
        when 9
            puts("Determinant = #{m[0] * m[4] * m[8] + m[1] * m[5] * m[6] + m[2] * m[3] * m[7] - m[2] * m[4] * m[6] - m[0] * m[5] * m[7] - m[1] * m[3] * m[8]}")
        when 16
            puts("Determinant = #{m[0]*(m[5]*m[10]*m[15]+m[6]*m[11]*m[13]+m[7]*m[9]*m[14]-m[7]*m[10]*m[13]-m[9]*m[6]*m[15]-m[5]*m[14]*m[11])-m[1]*(m[4]*m[10]*m[15]+m[6]*m[11]*m[12]+m[7]*m[8]*m[14]-m[7]*m[10]*m[12]-m[4]*m[11]*m[14]-m[15]*m[6]*m[8])+m[2]*(m[4]*m[9]*m[15]+m[7]*m[8]*m[13]+m[12]*m[5]*m[11]-m[7]*m[9]*m[12]-m[4]*m[11]*m[13]-m[15]*m[5]*m[8])-m[3]*(m[4]*m[9]*m[14]+m[6]*m[8]*m[13]+m[12]*m[5]*m[10]-m[6]*m[9]*m[12]-m[5]*m[8]*m[14]-m[4]*m[10]*m[13])}")
    end
end
