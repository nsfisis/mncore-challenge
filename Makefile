all: matrix_square

matrix_square_testcase_1:
	./judge problems/14-Matrix-Square/testcase_1_double_4x4.vsm problems/14-Matrix-Square/answer_1_double_4x4.vsm

matrix_square_testcase_2:
	./judge problems/14-Matrix-Square/testcase_2_float_8x8.vsm problems/14-Matrix-Square/answer_2_float_8x8.vsm

matrix_square:
	./judge problems/14-Matrix-Square/testcase.vsm problems/14-Matrix-Square/01.vsm
