// Copyright 2017 The Go Authors. All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

TEXT errors(SB),$0
	MOVW	(F0), R1           // ERROR "illegal base register"
	MOVB	(F0), R1           // ERROR "illegal base register"
	MOVH	(F0), R1           // ERROR "illegal base register"
	MOVF	(F0), F1           // ERROR "illegal base register"
	MOVD	(F0), F1           // ERROR "illegal base register"
	MOVW	R1, (F0)           // ERROR "illegal base register"
	MOVB	R2, (F0)           // ERROR "illegal base register"
	MOVH	R3, (F0)           // ERROR "illegal base register"
	MOVF	F4, (F0)           // ERROR "illegal base register"
	MOVD	F5, (F0)           // ERROR "illegal base register"
	MOVM.IA	(F1), [R0-R4]      // ERROR "illegal base register"
	MOVM.DA	(F1), [R0-R4]      // ERROR "illegal base register"
	MOVM.IB	(F1), [R0-R4]      // ERROR "illegal base register"
	MOVM.DB	(F1), [R0-R4]      // ERROR "illegal base register"
	MOVM.IA	[R0-R4], (F1)      // ERROR "illegal base register"
	MOVM.DA	[R0-R4], (F1)      // ERROR "illegal base register"
	MOVM.IB	[R0-R4], (F1)      // ERROR "illegal base register"
	MOVM.DB	[R0-R4], (F1)      // ERROR "illegal base register"
	MOVW	R0<<0(F1), R1      // ERROR "illegal base register"
	MOVB	R0<<0(F1), R1      // ERROR "illegal base register"
	MOVW	R1, R0<<0(F1)      // ERROR "illegal base register"
	MOVB	R2, R0<<0(F1)      // ERROR "illegal base register"
	MOVF	0x00ffffff(F2), F1 // ERROR "illegal base register"
	MOVD	0x00ffffff(F2), F1 // ERROR "illegal base register"
	MOVF	F2, 0x00ffffff(F2) // ERROR "illegal base register"
	MOVD	F2, 0x00ffffff(F2) // ERROR "illegal base register"
	MULS.S	R1, R2, R3, R4     // ERROR "invalid .S suffix"
	ADD.P	R1, R2, R3         // ERROR "invalid .P suffix"
	SUB.W	R2, R3             // ERROR "invalid .W suffix"
	BL	4(R4)              // ERROR "non-zero offset"
	ADDF	F0, R1, F2         // ERROR "illegal combination"
	SWI	(R0)               // ERROR "illegal combination"
	MULAD	F0, F1             // ERROR "illegal combination"
	MULAF	F0, F1             // ERROR "illegal combination"
	MULSD	F0, F1             // ERROR "illegal combination"
	MULSF	F0, F1             // ERROR "illegal combination"
	NMULAD	F0, F1             // ERROR "illegal combination"
	NMULAF	F0, F1             // ERROR "illegal combination"
	NMULSD	F0, F1             // ERROR "illegal combination"
	NMULSF	F0, F1             // ERROR "illegal combination"
	FMULAD	F0, F1             // ERROR "illegal combination"
	FMULAF	F0, F1             // ERROR "illegal combination"
	FMULSD	F0, F1             // ERROR "illegal combination"
	FMULSF	F0, F1             // ERROR "illegal combination"
	FNMULAD	F0, F1             // ERROR "illegal combination"
	FNMULAF	F0, F1             // ERROR "illegal combination"
	FNMULSD	F0, F1             // ERROR "illegal combination"
	FNMULSF	F0, F1             // ERROR "illegal combination"
	NEGF	F0, F1, F2         // ERROR "illegal combination"
	NEGD	F0, F1, F2         // ERROR "illegal combination"
	ABSF	F0, F1, F2         // ERROR "illegal combination"
	ABSD	F0, F1, F2         // ERROR "illegal combination"
	SQRTF	F0, F1, F2         // ERROR "illegal combination"
	SQRTD	F0, F1, F2         // ERROR "illegal combination"
	MOVF	F0, F1, F2         // ERROR "illegal combination"
	MOVD	F0, F1, F2         // ERROR "illegal combination"
	MOVDF	F0, F1, F2         // ERROR "illegal combination"
	MOVFD	F0, F1, F2         // ERROR "illegal combination"
	MOVM.IA	4(R1), [R0-R4]     // ERROR "offset must be zero"
	MOVM.DA	4(R1), [R0-R4]     // ERROR "offset must be zero"
	MOVM.IB	4(R1), [R0-R4]     // ERROR "offset must be zero"
	MOVM.DB	4(R1), [R0-R4]     // ERROR "offset must be zero"
	MOVM.IA	[R0-R4], 4(R1)     // ERROR "offset must be zero"
	MOVM.DA	[R0-R4], 4(R1)     // ERROR "offset must be zero"
	MOVM.IB	[R0-R4], 4(R1)     // ERROR "offset must be zero"
	MOVM.DB	[R0-R4], 4(R1)     // ERROR "offset must be zero"
	MOVW	CPSR, FPSR         // ERROR "illegal combination"
	MOVW	FPSR, CPSR         // ERROR "illegal combination"
	MOVW	CPSR, errors(SB)   // ERROR "illegal combination"
	MOVW	errors(SB), CPSR   // ERROR "illegal combination"
	MOVW	FPSR, errors(SB)   // ERROR "illegal combination"
	MOVW	errors(SB), FPSR   // ERROR "illegal combination"
	MOVW	F0, errors(SB)     // ERROR "illegal combination"
	MOVW	errors(SB), F0     // ERROR "illegal combination"
	MOVW	$20, errors(SB)    // ERROR "illegal combination"
	MOVW	errors(SB), $20    // ERROR "illegal combination"
	MOVW	(R1), [R0-R4]      // ERROR "illegal combination"
	MOVW	[R0-R4], (R1)      // ERROR "illegal combination"
	MOVB	$245, R1           // ERROR "illegal combination"
	MOVH	$245, R1           // ERROR "illegal combination"
	MOVB	$0xff000000, R1    // ERROR "illegal combination"
	MOVH	$0xff000000, R1    // ERROR "illegal combination"
	MOVB	$0x00ffffff, R1    // ERROR "illegal combination"
	MOVH	$0x00ffffff, R1    // ERROR "illegal combination"
	MOVB	FPSR, g            // ERROR "illegal combination"
	MOVH	FPSR, g            // ERROR "illegal combination"
	MOVB	g, FPSR            // ERROR "illegal combination"
	MOVH	g, FPSR            // ERROR "illegal combination"
	MOVB	CPSR, g            // ERROR "illegal combination"
	MOVH	CPSR, g            // ERROR "illegal combination"
	MOVB	g, CPSR            // ERROR "illegal combination"
	MOVH	g, CPSR            // ERROR "illegal combination"
	MOVB	$0xff000000, CPSR  // ERROR "illegal combination"
	MOVH	$0xff000000, CPSR  // ERROR "illegal combination"
	MOVB	$0xff000000, FPSR  // ERROR "illegal combination"
	MOVH	$0xff000000, FPSR  // ERROR "illegal combination"
	MOVB	$0xffffff00, CPSR  // ERROR "illegal combination"
	MOVH	$0xffffff00, CPSR  // ERROR "illegal combination"
	MOVB	$0xfffffff0, FPSR  // ERROR "illegal combination"
	MOVH	$0xfffffff0, FPSR  // ERROR "illegal combination"
	MOVB	(R1), [R0-R4]      // ERROR "illegal combination"
	MOVB	[R0-R4], (R1)      // ERROR "illegal combination"
	MOVH	(R1), [R0-R4]      // ERROR "illegal combination"
	MOVH	[R0-R4], (R1)      // ERROR "illegal combination"
	MOVB	$0xff(R0), R1      // ERROR "illegal combination"
	MOVH	$0xff(R0), R1      // ERROR "illegal combination"
	MOVB	$errors(SB), R2    // ERROR "illegal combination"
	MOVH	$errors(SB), R2    // ERROR "illegal combination"
	MOVB	F0, R0             // ERROR "illegal combination"
	MOVH	F0, R0             // ERROR "illegal combination"
	MOVB	R0, F0             // ERROR "illegal combination"
	MOVH	R0, F0             // ERROR "illegal combination"
	MOVB	R0>>0(R1), R2      // ERROR "bad shift"
	MOVB	R0->0(R1), R2      // ERROR "bad shift"
	MOVB	R0@>0(R1), R2      // ERROR "bad shift"
	MOVBS	R0>>0(R1), R2      // ERROR "bad shift"
	MOVBS	R0->0(R1), R2      // ERROR "bad shift"
	MOVBS	R0@>0(R1), R2      // ERROR "bad shift"
	MOVF	CPSR, F1           // ERROR "illegal combination"
	MOVD	R1, CPSR           // ERROR "illegal combination"
	MOVW	F1, F2             // ERROR "illegal combination"
	MOVB	F1, F2             // ERROR "illegal combination"
	MOVH	F1, F2             // ERROR "illegal combination"
	MOVF	R1, F2             // ERROR "illegal combination"
	MOVD	R1, F2             // ERROR "illegal combination"
	MOVF	R1, R1             // ERROR "illegal combination"
	MOVD	R1, R2             // ERROR "illegal combination"
	MOVFW	R1, R2             // ERROR "illegal combination"
	MOVDW	R1, R2             // ERROR "illegal combination"
	MOVWF	R1, R2             // ERROR "illegal combination"
	MOVWD	R1, R2             // ERROR "illegal combination"
	MOVWD	CPSR, R2           // ERROR "illegal combination"
	MOVWF	CPSR, R2           // ERROR "illegal combination"
	MOVWD	R1, CPSR           // ERROR "illegal combination"
	MOVWF	R1, CPSR           // ERROR "illegal combination"
	MOVDW	CPSR, R2           // ERROR "illegal combination"
	MOVFW	CPSR, R2           // ERROR "illegal combination"
	MOVDW	R1, CPSR           // ERROR "illegal combination"
	MOVFW	R1, CPSR           // ERROR "illegal combination"
	BFX	$12, $41, R2, R3   // ERROR "wrong width or LSB"
	BFX	$12, $-2, R2       // ERROR "wrong width or LSB"
	BFXU	$40, $4, R2, R3    // ERROR "wrong width or LSB"
	BFXU	$-40, $4, R2       // ERROR "wrong width or LSB"
	BFX	$-2, $4, R2, R3    // ERROR "wrong width or LSB"
	BFXU	$4, R2, R5, R2     // ERROR "missing or wrong LSB"
	BFXU	$4, R2, R5         // ERROR "missing or wrong LSB"
	MOVB	R0>>8, R2          // ERROR "illegal shift"
	MOVH	R0<<16, R2         // ERROR "illegal shift"
	MOVBS	R0->8, R2          // ERROR "illegal shift"
	MOVHS	R0<<24, R2         // ERROR "illegal shift"
	MOVBU	R0->24, R2         // ERROR "illegal shift"
	MOVHU	R0@>1, R2          // ERROR "illegal shift"
	XTAB	R0>>8, R2          // ERROR "illegal shift"
	XTAH	R0<<16, R2         // ERROR "illegal shift"
	XTABU	R0->24, R2         // ERROR "illegal shift"
	XTAHU	R0@>1, R2          // ERROR "illegal shift"
	XTAB	R0>>8, R5, R2      // ERROR "illegal shift"
	XTAH	R0<<16, R5, R2     // ERROR "illegal shift"
	XTABU	R0->24, R5, R2     // ERROR "illegal shift"
	XTAHU	R0@>1, R5, R2      // ERROR "illegal shift"
	AND.W	R0, R1             // ERROR "invalid .W suffix"
	ORR.P	R2, R3, R4         // ERROR "invalid .P suffix"
	CMP.S	R1, R2	           // ERROR "invalid .S suffix"
	BIC.P	$124, R1, R2       // ERROR "invalid .P suffix"
	MOVW.S	$124, R1           // ERROR "invalid .S suffix"
	MVN.S	$123, g            // ERROR "invalid .S suffix"
	RSB.U	$0, R9             // ERROR "invalid .U suffix"
	CMP.S	$29, g             // ERROR "invalid .S suffix"
	ADD.W	R1<<R2, R3         // ERROR "invalid .W suffix"
	SUB.U	R1<<R2, R3, R9     // ERROR "invalid .U suffix"
	CMN.S	R5->R2, R1         // ERROR "invalid .S suffix"
	SLL.P	R1, R2, R3         // ERROR "invalid .P suffix"
	SRA.U	R2, R8             // ERROR "invalid .U suffix"
	SWI.S                      // ERROR "invalid .S suffix"
	SWI.P	$0                 // ERROR "invalid .P suffix"
	MOVW.S	$0xaaaaaaaa, R7    // ERROR "invalid .S suffix"
	MOVW.P	$0xffffff44, R1    // ERROR "invalid .P suffix"
	MOVW.S	$0xffffff77, R1    // ERROR "invalid .S suffix"
	MVN.S	$0xffffffaa, R8    // ERROR "invalid .S suffix"
	MVN.S	$0xaaaaaaaa, R8    // ERROR "invalid .S suffix"
	ADD.U	$0xaaaaaaaa, R4    // ERROR "invalid .U suffix"
	ORR.P	$0x555555, R7, R3  // ERROR "invalid .P suffix"
	TST.S	$0xabcd1234, R2    // ERROR "invalid .S suffix"
	MOVB.S	R1, R2             // ERROR "invalid .S suffix"
	MOVBU.P	R1, R2             // ERROR "invalid .P suffix"
	MOVBS.U	R1, R2             // ERROR "invalid .U suffix"
	MOVH.S	R1, R2             // ERROR "invalid .S suffix"
	MOVHU.P	R1, R2             // ERROR "invalid .P suffix"
	MOVHS.U	R1, R2             // ERROR "invalid .U suffix"
	MUL.P	R0, R1, R2         // ERROR "invalid .P suffix"
	MULU.W	R1, R2             // ERROR "invalid .W suffix"
	DIVHW.S	R0, R1, R2         // ERROR "invalid .S suffix"
	DIVHW.W	R1, R2             // ERROR "invalid .W suffix"
	MULL.W	R2, R0, (R5, R8)   // ERROR "invalid .W suffix"
	MULLU.U	R2, R0, (R5, R8)   // ERROR "invalid .U suffix"
	BFX.S	$2, $4, R3         // ERROR "invalid .S suffix"
	BFXU.W	$2, $4, R3, R0     // ERROR "invalid .W suffix"
	MOVB.S	R1, 4(R2)          // ERROR "invalid .S suffix"
	MOVHU.S	R1, 4(R2)          // ERROR "invalid .S suffix"
	MOVW.S	R1, 4(R2)          // ERROR "invalid .S suffix"
	MOVBU.S	4(R2), R3          // ERROR "invalid .S suffix"
	MOVH.S	4(R2), R3          // ERROR "invalid .S suffix"
	MOVW.S	4(R2), R3          // ERROR "invalid .S suffix"
	XTAB.S	R0@>0, R2          // ERROR "invalid .S suffix"
	XTAB.W	R0@>8, R2, R9      // ERROR "invalid .W suffix"
	MOVBU.S	R0@>24, R1         // ERROR "invalid .S suffix"
	MOVHS.S	R0@>16, R1         // ERROR "invalid .S suffix"
	MOVB.S	R1, 0xaaaa(R2)     // ERROR "invalid .S suffix"
	MOVHU.S	R1, 0xaaaa(R2)     // ERROR "invalid .S suffix"
	MOVW.S	R1, 0xaaaa(R2)     // ERROR "invalid .S suffix"
	MOVBU.S	0xaaaa(R2), R3     // ERROR "invalid .S suffix"
	MOVH.S	0xaaaa(R2), R3     // ERROR "invalid .S suffix"
	MOVW.S	0xaaaa(R2), R3     // ERROR "invalid .S suffix"
	MOVW.S	CPSR, R1           // ERROR "invalid .S suffix"
	MOVW.S	R3, CPSR           // ERROR "invalid .S suffix"
	MOVW.S	$0, CPSR           // ERROR "invalid .S suffix"
	MOVM.S	(R0), [R2-R4]      // ERROR "invalid .S suffix"
	MOVM.S	[R1-R6], (R9)      // ERROR "invalid .S suffix"
	SWPW.S	R1, (R2), R3       // ERROR "invalid .S suffix"
	MOVF.S	(R0), F1           // ERROR "invalid .S suffix"
	MOVF.S	F9, (R4)           // ERROR "invalid .S suffix"
	MOVF.S	0xfff0(R0), F1     // ERROR "invalid .S suffix"
	MOVF.S	F9, 0xfff0(R4)     // ERROR "invalid .S suffix"
	ADDF.S	F1, F2, F3         // ERROR "invalid .S suffix"
	SUBD.U	F1, F2             // ERROR "invalid .U suffix"
	NEGF.W	F9, F10            // ERROR "invalid .W suffix"
	ABSD.P	F9, F10            // ERROR "invalid .P suffix"
	MOVW.S	FPSR, R0           // ERROR "invalid .S suffix"
	MOVW.P	g, FPSR            // ERROR "invalid .P suffix"
	MOVW.S	R1->4(R6), R2      // ERROR "invalid .S suffix"
	MOVB.S	R9, R2<<8(R4)      // ERROR "invalid .S suffix"
	MOVHU.S	R9, R2<<0(R4)      // ERROR "invalid .S suffix"
	STREX.S R0, (R1), R2       // ERROR "invalid .S suffix"
	LDREX.S	(R2), R8           // ERROR "invalid .S suffix"
	MOVF.S	$0.0, F3           // ERROR "invalid .S suffix"
	CMPF.S	F1, F2             // ERROR "invalid .S suffix"
	MOVFW.S	F0, F9             // ERROR "invalid .S suffix"
	MOVWF.W	F3, F1             // ERROR "invalid .W suffix"
	MOVFW.P	F0, R9             // ERROR "invalid .P suffix"
	MOVWF.W	R3, F1             // ERROR "invalid .W suffix"
	MOVW.S	F0, R9             // ERROR "invalid .S suffix"
	MOVW.U	R3, F1             // ERROR "invalid .U suffix"
	PLD.S	4(R1)              // ERROR "invalid .S suffix"
	CLZ.S	R1, R2             // ERROR "invalid .S suffix"
	MULBB.S	R0, R1, R2         // ERROR "invalid .S suffix"
	MULA.W	R9, R6, R1, g      // ERROR "invalid .W suffix"
	MULS.S	R2, R3, R4, g      // ERROR "invalid .S suffix"

	STREX	R1, (R0)           // ERROR "illegal combination"
	STREX	(R1), R0           // ERROR "illegal combination"
	STREX	R1, (R0), R1       // ERROR "cannot use same register as both source and destination"
	STREX	R1, (R0), R0       // ERROR "cannot use same register as both source and destination"
	STREXD	R0, (R2), R0       // ERROR "cannot use same register as both source and destination"
	STREXD	R0, (R2), R1       // ERROR "cannot use same register as both source and destination"
	STREXD	R0, (R2), R2       // ERROR "cannot use same register as both source and destination"
	STREXD	R1, (R4), R7       // ERROR "must be even"

	END
