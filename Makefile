all: inversion

matrix_square_testcase_1:
	./judge problems/14-Matrix-Square/testcase_1_double_4x4.vsm problems/14-Matrix-Square/answer_1_double_4x4.vsm

matrix_square_testcase_2:
	./judge problems/14-Matrix-Square/testcase_2_float_8x8.vsm problems/14-Matrix-Square/answer_2_float_8x8.vsm

matrix_square:
	./judge problems/14-Matrix-Square/testcase.vsm problems/14-Matrix-Square/02.vsm

hello_world:
	./judge example/hello_world/testcase.vsm example/hello_world/example.vsm

mod3:
	./judge problems/13-Mod-3/testcase.vsm problems/13-Mod-3/08.vsm

inversion:
	./judge --enable-get problems/19-Inversion/testcase.vsm problems/19-Inversion/01.vsm
