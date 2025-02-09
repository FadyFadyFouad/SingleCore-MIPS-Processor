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
static const char *ng0 = "C:/Users/karim/OneDrive/Desktop/PHASE 1 COMPUTER ARCHITECTURE FINAL/PHASE11/InstructionMEM.vhd";
extern char *IEEE_P_0774719531;
extern char *IEEE_P_2592010699;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);


static void work_a_2405820947_3212880686_p_0(char *t0)
{
    char t10[16];
    char t12[16];
    char t17[16];
    char *t1;
    char *t2;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t18;
    int t19;
    int t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;

LAB0:    xsi_set_current_line(64, ng0);

LAB3:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t1 = (t0 + 4528);
    t4 = (t0 + 592U);
    t5 = *((char **)t4);
    t6 = (31 - 31);
    t7 = (t6 * 1U);
    t8 = (0 + t7);
    t4 = (t5 + t8);
    t11 = ((IEEE_P_2592010699) + 2332);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 1;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (1 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = (t17 + 0U);
    t18 = (t14 + 0U);
    *((int *)t18) = 31;
    t18 = (t14 + 4U);
    *((int *)t18) = 2;
    t18 = (t14 + 8U);
    *((int *)t18) = -1;
    t19 = (2 - 31);
    t16 = (t19 * -1);
    t16 = (t16 + 1);
    t18 = (t14 + 12U);
    *((unsigned int *)t18) = t16;
    t9 = xsi_base_array_concat(t9, t10, t11, (char)97, t1, t12, (char)97, t4, t17, (char)101);
    t20 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t9, t10);
    t21 = (t20 - 0);
    t16 = (t21 * 1);
    xsi_vhdl_check_range_of_index(0, 32, 1, t20);
    t22 = (32U * t16);
    t23 = (0 + t22);
    t18 = (t2 + t23);
    t24 = (t0 + 1676);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    t27 = (t26 + 40U);
    t28 = *((char **)t27);
    memcpy(t28, t18, 32U);
    xsi_driver_first_trans_fast_port(t24);

LAB2:    t29 = (t0 + 1632);
    *((int *)t29) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2405820947_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2405820947_3212880686_p_0};
	xsi_register_didat("work_a_2405820947_3212880686", "isim/maintest_isim_beh.exe.sim/work/a_2405820947_3212880686.didat");
	xsi_register_executes(pe);
}
