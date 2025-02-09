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
static const char *ng0 = "C:/Xilinx/14.7/ISE_DS/ISE/D/PHASE11/MUX2X1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_0734482308_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(16, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB3;

LAB4:
LAB5:    t11 = (t0 + 592U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t13);
    t11 = (t0 + 1676);
    t15 = (t11 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = t14;
    xsi_driver_first_trans_fast_port(t11);

LAB2:    t19 = (t0 + 1632);
    *((int *)t19) = 1;

LAB1:    return;
LAB3:    t1 = (t0 + 592U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t1 = (t0 + 1676);
    t7 = (t1 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 40U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = t6;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB6:    goto LAB2;

}


extern void work_a_0734482308_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0734482308_3212880686_p_0};
	xsi_register_didat("work_a_0734482308_3212880686", "isim/ALU_isim_beh.exe.sim/work/a_0734482308_3212880686.didat");
	xsi_register_executes(pe);
}
