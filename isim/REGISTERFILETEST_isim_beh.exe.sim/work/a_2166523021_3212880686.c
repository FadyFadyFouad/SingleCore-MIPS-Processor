/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/karim/OneDrive/Desktop/PHASE 1 COMPUTER ARCHITECTURE FINAL/PHASE11/REGISTERFILE.vhd";
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);


static void work_a_2166523021_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 936U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2184);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t4 = (t0 + 868U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t2 = (t0 + 592U);
    t5 = *((char **)t2);
    t2 = (t0 + 4556U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t2);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t13);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t8 = (t4 + t17);
    t11 = (t0 + 2264);
    t12 = (t11 + 32U);
    t18 = *((char **)t12);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t2 = (t0 + 684U);
    t5 = *((char **)t2);
    t2 = (t0 + 4572U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t2);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    xsi_vhdl_check_range_of_index(0, 31, 1, t13);
    t16 = (32U * t15);
    t17 = (0 + t16);
    t8 = (t4 + t17);
    t11 = (t0 + 2300);
    t12 = (t11 + 32U);
    t18 = *((char **)t12);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    memcpy(t20, t8, 32U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB3;

LAB5:    t4 = (t0 + 960U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)2);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(59, ng0);
    t4 = (t0 + 1052U);
    t11 = *((char **)t4);
    t4 = (t0 + 776U);
    t12 = *((char **)t4);
    t4 = (t0 + 4588U);
    t13 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t12, t4);
    t14 = (t13 - 0);
    t15 = (t14 * 1);
    t16 = (32U * t15);
    t17 = (0U + t16);
    t18 = (t0 + 2228);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 40U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_delta(t18, t17, 32U, 0LL);
    goto LAB9;

}


extern void work_a_2166523021_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2166523021_3212880686_p_0};
	xsi_register_didat("work_a_2166523021_3212880686", "isim/REGISTERFILETEST_isim_beh.exe.sim/work/a_2166523021_3212880686.didat");
	xsi_register_executes(pe);
}
