require 'matrix'

a = Matrix[
  [43, 95, 75, 63, 24, 24, 15, 87, 64, 73, 11, 97, 84, 29, 26, 26],
  [37, 57, 48, 36, 65, 22, 36, 42, 51, 80, 27, 56, 63, 14, 64, 25],
  [15, 95, 96, 82, 37, 18, 71, 49, 20, 54, 13, 91, 33, 69, 38, 56],
  [59, 26, 97, 79, 94, 90, 63, 92, 17, 27, 14, 39, 44, 34, 84, 42],
  [35, 58, 22, 82, 16, 98, 79, 27, 10, 83, 73, 75, 79, 16, 42, 20],
  [87, 66, 39, 15, 37, 39, 75, 67, 89, 52, 20, 74, 78, 60, 79, 54],
  [57, 48, 12, 19, 12, 67, 38, 55, 91, 32, 46, 77, 30, 16, 36, 24],
  [93, 82, 67, 88, 82, 26, 90, 58, 82, 90, 38, 19, 30, 48, 83, 87],
  [10, 55, 47, 29, 20, 40, 94, 39, 56, 73, 42, 97, 96, 32, 54, 37],
  [35, 13, 64, 55, 14, 35, 91, 31, 23, 54, 98, 31, 70, 78, 31, 75],
  [43, 66, 67, 58, 18, 85, 38, 26, 13, 63, 70, 11, 56, 30, 68, 25],
  [72, 44, 94, 22, 40, 20, 93, 88, 33, 69, 83, 59, 57, 31, 18, 90],
  [91, 66, 40, 41, 75, 90, 89, 80, 67, 17, 24, 90, 64, 10, 19, 69],
  [10, 24, 59, 72, 68, 30, 74, 31, 39, 77, 68, 86, 69, 61, 18, 43],
  [33, 31, 97, 45, 90, 66, 81, 55, 61, 54, 27, 75, 35, 12, 68, 25],
  [94, 95, 92, 43, 11, 93, 48, 96, 96, 86, 36, 44, 86, 38, 25, 60],
]

result = (a**2).t
puts "     " + (0..15).map { |i| "%5d" % i }.join(" ")
puts "   +-------------------------------------------------------------------------------------------------"
result.row_vectors.each_with_index do |row, i|
  puts "%2d | " % i + row.to_a.join(" ")
end

=begin
         0     1     2     3     4     5     6     7     8     9    10    11    12    13    14    15
   +-------------------------------------------------------------------------------------------------
 0 | 43968 35529 41315 48471 47078 47126 34944 49985 44267 41585 37454 49170 54156 42268 42260 54971
 1 | 48072 39598 45848 54556 42802 54250 38842 60704 44176 45985 41867 58570 59453 43892 49481 64928
 2 | 56089 45589 56556 58055 50147 57714 41081 67696 50062 50896 47633 58551 55044 51643 53037 65681
 3 | 43988 37426 44425 50685 37114 44804 29150 57297 36683 41505 37657 48770 44275 43262 43842 52477
 4 | 41768 32061 40156 43419 36865 41122 27373 44708 35827 32765 34751 34319 37525 34317 35288 45418
 5 | 37251 37872 40288 48204 44509 45122 30113 57499 42648 46289 38859 47175 47795 46890 43969 47189
 6 | 60529 51551 56568 62001 54206 63236 45296 67946 58542 50777 47563 58005 60835 58395 60781 70060
 7 | 50455 40415 49540 54137 49519 54999 39097 60637 48072 46083 41709 53308 58794 46880 48230 61779
 8 | 40491 34141 39700 47084 41609 52580 36815 54130 43478 40846 36699 48192 53992 36799 41898 57862
 9 | 51341 43659 50998 54322 43528 58198 42140 66322 46272 45448 41677 57205 58492 47905 51372 64370
10 | 35412 33123 36436 33499 35900 39338 28612 44048 38445 35636 28341 40509 37129 41599 37158 40031
11 | 52620 46428 52558 59369 48178 64290 42579 68412 52847 48773 45739 55013 62101 50788 57130 68207
12 | 49594 43646 46582 50610 47499 57701 42297 65009 47613 46427 42894 53206 58422 49126 49265 65173
13 | 31122 24979 31523 33179 29168 31234 23054 37459 28104 30280 27937 34344 30661 30926 31097 40980
14 | 38754 33212 37734 46101 40417 40518 32662 50553 35509 34851 38223 39762 43468 35922 41067 49745
15 | 46145 35244 42123 42822 40452 44731 32652 46039 42591 37780 33380 45825 45349 41713 40911 53178
=end
