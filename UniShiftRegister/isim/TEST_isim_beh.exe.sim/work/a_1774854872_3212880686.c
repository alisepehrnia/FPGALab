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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "G:/FPGA/UniShiftRegister/MAIN.vhd";
extern char *IEEE_P_2592010699;



static void work_a_1774854872_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;

LAB0:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4784);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t1 = (t0 + 7196);
    t6 = (t0 + 4928);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t2 = (t0 + 4928);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t6, 4U);
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB7:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

}

static void work_a_1774854872_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(59, ng0);

LAB3:    t1 = (t0 + 2152U);
    t2 = *((char **)t1);
    t1 = (t0 + 4992);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4800);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1774854872_3212880686_p_2(char *t0)
{
    char t34[16];
    char t36[16];
    char t66[16];
    char t68[16];
    char *t1;
    char *t2;
    unsigned char t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned char t32;
    char *t33;
    char *t35;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    unsigned char t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;
    char *t46;
    char *t47;
    unsigned char t49;
    unsigned int t50;
    char *t51;
    char *t52;
    char *t53;
    char *t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned char t59;
    char *t60;
    char *t61;
    unsigned int t62;
    unsigned int t63;
    unsigned int t64;
    char *t65;
    char *t67;
    char *t69;
    char *t70;
    int t71;
    unsigned int t72;
    unsigned char t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;

LAB0:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t1 = (t0 + 7200);
    t4 = 1;
    if (2U == 2U)
        goto LAB5;

LAB6:    t4 = 0;

LAB7:    if (t4 != 0)
        goto LAB3;

LAB4:    t14 = (t0 + 1352U);
    t15 = *((char **)t14);
    t14 = (t0 + 7202);
    t17 = 1;
    if (2U == 2U)
        goto LAB13;

LAB14:    t17 = 0;

LAB15:    if (t17 != 0)
        goto LAB11;

LAB12:    t46 = (t0 + 1352U);
    t47 = *((char **)t46);
    t46 = (t0 + 7204);
    t49 = 1;
    if (2U == 2U)
        goto LAB23;

LAB24:    t49 = 0;

LAB25:    if (t49 != 0)
        goto LAB21;

LAB22:
LAB31:    t78 = (t0 + 1032U);
    t79 = *((char **)t78);
    t78 = (t0 + 5056);
    t80 = (t78 + 56U);
    t81 = *((char **)t80);
    t82 = (t81 + 56U);
    t83 = *((char **)t82);
    memcpy(t83, t79, 4U);
    xsi_driver_first_trans_fast(t78);

LAB2:    t84 = (t0 + 4816);
    *((int *)t84) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 2312U);
    t9 = *((char **)t8);
    t8 = (t0 + 5056);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    memcpy(t13, t9, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t5 = 0;

LAB8:    if (t5 < 2U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t6 = (t2 + t5);
    t7 = (t1 + t5);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB6;

LAB10:    t5 = (t5 + 1);
    goto LAB8;

LAB11:    t21 = (t0 + 2312U);
    t22 = *((char **)t21);
    t23 = (3 - 2);
    t24 = (t23 * 1U);
    t25 = (0 + t24);
    t21 = (t22 + t25);
    t26 = (t0 + 1032U);
    t27 = *((char **)t26);
    t28 = (0 - 3);
    t29 = (t28 * -1);
    t30 = (1U * t29);
    t31 = (0 + t30);
    t26 = (t27 + t31);
    t32 = *((unsigned char *)t26);
    t35 = ((IEEE_P_2592010699) + 4024);
    t37 = (t36 + 0U);
    t38 = (t37 + 0U);
    *((int *)t38) = 2;
    t38 = (t37 + 4U);
    *((int *)t38) = 0;
    t38 = (t37 + 8U);
    *((int *)t38) = -1;
    t39 = (0 - 2);
    t40 = (t39 * -1);
    t40 = (t40 + 1);
    t38 = (t37 + 12U);
    *((unsigned int *)t38) = t40;
    t33 = xsi_base_array_concat(t33, t34, t35, (char)97, t21, t36, (char)99, t32, (char)101);
    t40 = (3U + 1U);
    t41 = (4U != t40);
    if (t41 == 1)
        goto LAB19;

LAB20:    t38 = (t0 + 5056);
    t42 = (t38 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t33, 4U);
    xsi_driver_first_trans_fast(t38);
    goto LAB2;

LAB13:    t18 = 0;

LAB16:    if (t18 < 2U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t19 = (t15 + t18);
    t20 = (t14 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB14;

LAB18:    t18 = (t18 + 1);
    goto LAB16;

LAB19:    xsi_size_not_matching(4U, t40, 0);
    goto LAB20;

LAB21:    t53 = (t0 + 1032U);
    t54 = *((char **)t53);
    t55 = (3 - 3);
    t56 = (t55 * -1);
    t57 = (1U * t56);
    t58 = (0 + t57);
    t53 = (t54 + t58);
    t59 = *((unsigned char *)t53);
    t60 = (t0 + 2312U);
    t61 = *((char **)t60);
    t62 = (3 - 3);
    t63 = (t62 * 1U);
    t64 = (0 + t63);
    t60 = (t61 + t64);
    t67 = ((IEEE_P_2592010699) + 4024);
    t69 = (t68 + 0U);
    t70 = (t69 + 0U);
    *((int *)t70) = 3;
    t70 = (t69 + 4U);
    *((int *)t70) = 1;
    t70 = (t69 + 8U);
    *((int *)t70) = -1;
    t71 = (1 - 3);
    t72 = (t71 * -1);
    t72 = (t72 + 1);
    t70 = (t69 + 12U);
    *((unsigned int *)t70) = t72;
    t65 = xsi_base_array_concat(t65, t66, t67, (char)99, t59, (char)97, t60, t68, (char)101);
    t72 = (1U + 3U);
    t73 = (4U != t72);
    if (t73 == 1)
        goto LAB29;

LAB30:    t70 = (t0 + 5056);
    t74 = (t70 + 56U);
    t75 = *((char **)t74);
    t76 = (t75 + 56U);
    t77 = *((char **)t76);
    memcpy(t77, t65, 4U);
    xsi_driver_first_trans_fast(t70);
    goto LAB2;

LAB23:    t50 = 0;

LAB26:    if (t50 < 2U)
        goto LAB27;
    else
        goto LAB25;

LAB27:    t51 = (t47 + t50);
    t52 = (t46 + t50);
    if (*((unsigned char *)t51) != *((unsigned char *)t52))
        goto LAB24;

LAB28:    t50 = (t50 + 1);
    goto LAB26;

LAB29:    xsi_size_not_matching(4U, t72, 0);
    goto LAB30;

LAB32:    goto LAB2;

}

static void work_a_1774854872_3212880686_p_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(72, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 5120);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast(t1);

LAB2:    t7 = (t0 + 4832);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_1774854872_3212880686_p_4(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(73, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 5184);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4848);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_1774854872_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1774854872_3212880686_p_0,(void *)work_a_1774854872_3212880686_p_1,(void *)work_a_1774854872_3212880686_p_2,(void *)work_a_1774854872_3212880686_p_3,(void *)work_a_1774854872_3212880686_p_4};
	xsi_register_didat("work_a_1774854872_3212880686", "isim/TEST_isim_beh.exe.sim/work/a_1774854872_3212880686.didat");
	xsi_register_executes(pe);
}
