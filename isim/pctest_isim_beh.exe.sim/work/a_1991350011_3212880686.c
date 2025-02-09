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
static const char *ng0 = "C:/Users/karim/OneDrive/Desktop/PHASE 1 COMPUTER ARCHITECTURE FINAL/PHASE11/PC.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1991350011_3212880686_p_0(char *t0)
{
    char t1[16];
    char t6[16];
    char t21[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    unsigned int t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned int t19;
    unsigned int t20;
    int t22;
    char *t23;
    unsigned char t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    int t28;
    unsigned char t29;
    char *t30;
    char *t31;

LAB0:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 6012U);
    t4 = (t0 + 6475);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 31;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (31 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t4, t6);
    t11 = (t1 + 12U);
    t10 = *((unsigned int *)t11);
    t12 = (1U * t10);
    t13 = (32U != t12);
    if (t13 == 1)
        goto LAB2;

LAB3:    t14 = (t0 + 2964);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 40U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t10 = (31 - 25);
    t12 = (t10 * 1U);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t4 = (t0 + 6507);
    t8 = ((IEEE_P_2592010699) + 2332);
    t11 = (t6 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 25;
    t14 = (t11 + 4U);
    *((int *)t14) = 0;
    t14 = (t11 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 25);
    t20 = (t9 * -1);
    t20 = (t20 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t20;
    t14 = (t21 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 1;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t22 = (1 - 0);
    t20 = (t22 * 1);
    t20 = (t20 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t20;
    t7 = xsi_base_array_concat(t7, t1, t8, (char)97, t2, t6, (char)97, t4, t21, (char)101);
    t20 = (26U + 2U);
    t13 = (28U != t20);
    if (t13 == 1)
        goto LAB4;

LAB5:    t15 = (t0 + 3000);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t23 = *((char **)t18);
    memcpy(t23, t7, 28U);
    xsi_driver_first_trans_delta(t15, 4U, 28U, 0LL);
    xsi_set_current_line(35, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t9 = (31 - 31);
    t10 = (t9 * -1);
    t12 = (1U * t10);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t13 = *((unsigned char *)t2);
    t4 = (t0 + 3000);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t13;
    xsi_driver_first_trans_delta(t4, 0U, 1, 0LL);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t9 = (30 - 31);
    t10 = (t9 * -1);
    t12 = (1U * t10);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t13 = *((unsigned char *)t2);
    t4 = (t0 + 3000);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t13;
    xsi_driver_first_trans_delta(t4, 1U, 1, 0LL);
    xsi_set_current_line(37, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t9 = (29 - 31);
    t10 = (t9 * -1);
    t12 = (1U * t10);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t13 = *((unsigned char *)t2);
    t4 = (t0 + 3000);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t13;
    xsi_driver_first_trans_delta(t4, 2U, 1, 0LL);
    xsi_set_current_line(38, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t9 = (28 - 31);
    t10 = (t9 * -1);
    t12 = (1U * t10);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t13 = *((unsigned char *)t2);
    t4 = (t0 + 3000);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t13;
    xsi_driver_first_trans_delta(t4, 3U, 1, 0LL);
    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t9 = (15 - 31);
    t10 = (t9 * -1);
    t12 = (1U * t10);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t13 = *((unsigned char *)t2);
    t24 = (t13 == (unsigned char)2);
    if (t24 != 0)
        goto LAB6;

LAB8:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 6525);
    t4 = (t0 + 1144U);
    t5 = *((char **)t4);
    t10 = (31 - 15);
    t12 = (t10 * 1U);
    t19 = (0 + t12);
    t4 = (t5 + t19);
    t8 = ((IEEE_P_2592010699) + 2332);
    t11 = (t6 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 0;
    t14 = (t11 + 4U);
    *((int *)t14) = 15;
    t14 = (t11 + 8U);
    *((int *)t14) = 1;
    t9 = (15 - 0);
    t20 = (t9 * 1);
    t20 = (t20 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t20;
    t14 = (t21 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 15;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t22 = (0 - 15);
    t20 = (t22 * -1);
    t20 = (t20 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t20;
    t7 = xsi_base_array_concat(t7, t1, t8, (char)97, t2, t6, (char)97, t4, t21, (char)101);
    t20 = (16U + 16U);
    t13 = (32U != t20);
    if (t13 == 1)
        goto LAB11;

LAB12:    t15 = (t0 + 3036);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t23 = *((char **)t18);
    memcpy(t23, t7, 32U);
    xsi_driver_first_trans_fast(t15);

LAB7:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t10 = (31 - 29);
    t12 = (t10 * 1U);
    t19 = (0 + t12);
    t2 = (t3 + t19);
    t4 = (t0 + 6541);
    t8 = ((IEEE_P_2592010699) + 2332);
    t11 = (t6 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 29;
    t14 = (t11 + 4U);
    *((int *)t14) = 0;
    t14 = (t11 + 8U);
    *((int *)t14) = -1;
    t9 = (0 - 29);
    t20 = (t9 * -1);
    t20 = (t20 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t20;
    t14 = (t21 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 1;
    t15 = (t14 + 8U);
    *((int *)t15) = 1;
    t22 = (1 - 0);
    t20 = (t22 * 1);
    t20 = (t20 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t20;
    t7 = xsi_base_array_concat(t7, t1, t8, (char)97, t2, t6, (char)97, t4, t21, (char)101);
    t20 = (30U + 2U);
    t13 = (32U != t20);
    if (t13 == 1)
        goto LAB13;

LAB14:    t15 = (t0 + 3072);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t23 = *((char **)t18);
    memcpy(t23, t7, 32U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t2 = (t0 + 6124U);
    t4 = (t0 + 1328U);
    t5 = *((char **)t4);
    t4 = (t0 + 6060U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t3, t2, t5, t4);
    t8 = (t1 + 12U);
    t10 = *((unsigned int *)t8);
    t12 = (1U * t10);
    t13 = (32U != t12);
    if (t13 == 1)
        goto LAB15;

LAB16:    t11 = (t0 + 3108);
    t14 = (t11 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t17 = *((char **)t16);
    memcpy(t17, t7, 32U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t2 = (t0 + 1052U);
    t4 = *((char **)t2);
    t24 = *((unsigned char *)t4);
    t29 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t13, t24);
    t2 = (t0 + 3144);
    t5 = (t2 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = t29;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(47, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t2 = (t0 + 3180);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = t13;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1880U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t24 = (t13 == (unsigned char)2);
    if (t24 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1788U);
    t3 = *((char **)t2);
    t2 = (t0 + 3216);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast(t2);

LAB18:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1972U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t24 = (t13 == (unsigned char)2);
    if (t24 != 0)
        goto LAB20;

LAB22:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 3252);
    t4 = (t2 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 40U);
    t8 = *((char **)t7);
    memcpy(t8, t3, 32U);
    xsi_driver_first_trans_fast_port(t2);

LAB21:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t13 = *((unsigned char *)t3);
    t24 = (t13 == (unsigned char)3);
    if (t24 != 0)
        goto LAB23;

LAB25:
LAB24:    t2 = (t0 + 2920);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_size_not_matching(32U, t12, 0);
    goto LAB3;

LAB4:    xsi_size_not_matching(28U, t20, 0);
    goto LAB5;

LAB6:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 6509);
    t7 = (t0 + 1144U);
    t8 = *((char **)t7);
    t20 = (31 - 15);
    t25 = (t20 * 1U);
    t26 = (0 + t25);
    t7 = (t8 + t26);
    t14 = ((IEEE_P_2592010699) + 2332);
    t15 = (t6 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 0;
    t16 = (t15 + 4U);
    *((int *)t16) = 15;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t22 = (15 - 0);
    t27 = (t22 * 1);
    t27 = (t27 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t27;
    t16 = (t21 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 15;
    t17 = (t16 + 4U);
    *((int *)t17) = 0;
    t17 = (t16 + 8U);
    *((int *)t17) = -1;
    t28 = (0 - 15);
    t27 = (t28 * -1);
    t27 = (t27 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t27;
    t11 = xsi_base_array_concat(t11, t1, t14, (char)97, t4, t6, (char)97, t7, t21, (char)101);
    t27 = (16U + 16U);
    t29 = (32U != t27);
    if (t29 == 1)
        goto LAB9;

LAB10:    t17 = (t0 + 3036);
    t18 = (t17 + 32U);
    t23 = *((char **)t18);
    t30 = (t23 + 40U);
    t31 = *((char **)t30);
    memcpy(t31, t11, 32U);
    xsi_driver_first_trans_fast(t17);
    goto LAB7;

LAB9:    xsi_size_not_matching(32U, t27, 0);
    goto LAB10;

LAB11:    xsi_size_not_matching(32U, t20, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, t20, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t12, 0);
    goto LAB16;

LAB17:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 1328U);
    t4 = *((char **)t2);
    t2 = (t0 + 3216);
    t5 = (t2 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast(t2);
    goto LAB18;

LAB20:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2064U);
    t4 = *((char **)t2);
    t2 = (t0 + 3252);
    t5 = (t2 + 32U);
    t7 = *((char **)t5);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    memcpy(t11, t4, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB21;

LAB23:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 6543);
    t5 = (t0 + 3252);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t14 = *((char **)t11);
    memcpy(t14, t2, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB24;

}


extern void work_a_1991350011_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1991350011_3212880686_p_0};
	xsi_register_didat("work_a_1991350011_3212880686", "isim/pctest_isim_beh.exe.sim/work/a_1991350011_3212880686.didat");
	xsi_register_executes(pe);
}
