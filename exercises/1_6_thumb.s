        PUSH     {r1-r7,lr}
        LDR      r5,|L0.84|
        LDR      r3,[r0,#0]
        LDR      r2,[r0,#4]
        STR      r5,[sp,#8]
        MOVS     r6,r1
        LDM      r6,{r6,r7}
        LDR      r5,[r1,#8]
        STR      r6,[sp,#4]
        LDR      r6,[r1,#0xc]
        MOVS     r4,#0
        MOVS     r1,r4
        MOV      lr,r5
        MOV      r12,r6
        STR      r7,[sp,#0]
|L0.30|
        LDR      r5,[sp,#8]
        LSLS     r6,r2,#4
        ADDS     r4,r4,r5
        LDR      r5,[sp,#4]
        LSRS     r7,r2,#5
        ADDS     r5,r6,r5
        ADDS     r6,r2,r4
        EORS     r5,r5,r6
        LDR      r6,[sp,#0]
        ADDS     r1,r1,#1
        ADDS     r6,r7,r6
        EORS     r5,r5,r6
        ADDS     r3,r5,r3
        LSLS     r5,r3,#4
        ADDS     r6,r3,r4
        ADD      r5,r5,lr
        EORS     r5,r5,r6
        LSRS     r6,r3,#5
        ADD      r6,r6,r12
        EORS     r5,r5,r6
        ADDS     r2,r5,r2
        CMP      r1,#0x20
        BCC      |L0.30|
        STR      r3,[r0,#0]
        STR      r2,[r0,#4]
        POP      {r1-r7,pc}

|L0.84|
        DCD      0x9e3779b9