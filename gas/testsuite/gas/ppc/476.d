#objdump: -d -M476
#as: -a32 -m476
#name: PowerPC 476 instructions

.*: +file format elf32-powerpc.*

Disassembly of section \.text:

0+00 <ppc476>:
   0:	7c 64 2a 14 	add     r3,r4,r5
   4:	7c 64 2a 15 	add\.    r3,r4,r5
   8:	7c 64 28 14 	addc    r3,r4,r5
   c:	7c 64 28 15 	addc\.   r3,r4,r5
  10:	7c 64 2c 14 	addco   r3,r4,r5
  14:	7c 64 2c 15 	addco\.  r3,r4,r5
  18:	7c 64 29 14 	adde    r3,r4,r5
  1c:	7c 64 29 15 	adde\.   r3,r4,r5
  20:	7c 64 2d 14 	addeo   r3,r4,r5
  24:	7c 64 2d 15 	addeo\.  r3,r4,r5
  28:	38 64 ff 80 	addi    r3,r4,-128
  2c:	30 64 ff 80 	addic   r3,r4,-128
  30:	34 64 ff 80 	addic\.  r3,r4,-128
  34:	3c 64 ff 80 	addis   r3,r4,-128
  38:	7c 64 01 d4 	addme   r3,r4
  3c:	7c 64 01 d5 	addme\.  r3,r4
  40:	7c 64 05 d4 	addmeo  r3,r4
  44:	7c 64 05 d5 	addmeo\. r3,r4
  48:	7c 64 2e 14 	addo    r3,r4,r5
  4c:	7c 64 2e 15 	addo\.   r3,r4,r5
  50:	7c 64 01 94 	addze   r3,r4
  54:	7c 64 01 95 	addze\.  r3,r4
  58:	7c 64 05 94 	addzeo  r3,r4
  5c:	7c 64 05 95 	addzeo\. r3,r4
  60:	7c 83 28 38 	and     r3,r4,r5
  64:	7c 83 28 39 	and\.    r3,r4,r5
  68:	7d cd 78 78 	andc    r13,r14,r15
  6c:	7e 30 90 79 	andc\.   r16,r17,r18
  70:	70 83 de ad 	andi\.   r3,r4,57005
  74:	74 83 de ad 	andis\.  r3,r4,57005
  78:	48 00 00 02 	ba      0 <ppc476>
  7c:	40 01 00 00 	bdnzf   gt,7c <ppc476\+0x7c>
  80:	40 85 00 02 	blea    cr1,0 <ppc476>
  84:	4d 80 04 20 	bltctr  
  88:	4c 8a 04 20 	bnectr  cr2
  8c:	4c 86 04 20 	bnectr  cr1
  90:	4c 86 04 20 	bnectr  cr1
  94:	4d 80 04 21 	bltctrl 
  98:	4c 8a 04 21 	bnectrl cr2
  9c:	4c 86 04 21 	bnectrl cr1
  a0:	4c 86 04 21 	bnectrl cr1
  a4:	40 43 00 01 	bdzfl   so,a4 <ppc476\+0xa4>
  a8:	4d 80 00 20 	bltlr   
  ac:	4c 8a 00 20 	bnelr   cr2
  b0:	4c 86 00 20 	bnelr   cr1
  b4:	4c 86 00 20 	bnelr   cr1
  b8:	4d 80 00 21 	bltlrl  
  bc:	4c 8a 00 21 	bnelrl  cr2
  c0:	4c 86 00 21 	bnelrl  cr1
  c4:	4c 86 00 21 	bnelrl  cr1
  c8:	48 00 00 00 	b       c8 <ppc476\+0xc8>
  cc:	48 00 00 01 	bl      cc <ppc476\+0xcc>
  d0:	54 83 00 36 	rlwinm  r3,r4,0,0,27
  d4:	7c 03 20 00 	cmpw    r3,r4
  d8:	7f 83 20 00 	cmpw    cr7,r3,r4
  dc:	7c 83 2b f8 	cmpb    r3,r4,r5
  e0:	7c 83 2b f8 	cmpb    r3,r4,r5
  e4:	2c 03 ff 59 	cmpwi   r3,-167
  e8:	2f 83 ff 59 	cmpwi   cr7,r3,-167
  ec:	7c 03 20 40 	cmplw   r3,r4
  f0:	7f 83 20 40 	cmplw   cr7,r3,r4
  f4:	28 03 00 a7 	cmplwi  r3,167
  f8:	2b 83 00 a7 	cmplwi  cr7,r3,167
  fc:	7c 03 20 40 	cmplw   r3,r4
 100:	28 03 00 a7 	cmplwi  r3,167
 104:	7c 03 20 00 	cmpw    r3,r4
 108:	2c 03 ff 59 	cmpwi   r3,-167
 10c:	7d 6a 00 34 	cntlzw  r10,r11
 110:	7d 6a 00 35 	cntlzw\. r10,r11
 114:	4c 85 32 02 	crand   4\*cr1\+lt,4\*cr1\+gt,4\*cr1\+eq
 118:	4c 64 29 02 	crandc  so,4\*cr1\+lt,4\*cr1\+gt
 11c:	4c e0 0a 42 	creqv   4\*cr1\+so,lt,gt
 120:	4c 22 19 c2 	crnand  gt,eq,so
 124:	4c 01 10 42 	crnor   lt,gt,eq
 128:	4c a6 3b 82 	cror    4\*cr1\+gt,4\*cr1\+eq,4\*cr1\+so
 12c:	4c 43 23 42 	crorc   eq,so,4\*cr1\+lt
 130:	4c c7 01 82 	crxor   4\*cr1\+eq,4\*cr1\+so,lt
 134:	7c 09 55 ec 	dcba    r9,r10
 138:	7c 06 38 ac 	dcbf    r6,r7
 13c:	7c 06 38 ac 	dcbf    r6,r7
 140:	7c 06 3b ac 	dcbi    r6,r7
 144:	7c 85 33 0c 	dcblc   4,r5,r6
 148:	7c 06 38 6c 	dcbst   r6,r7
 14c:	7c c0 2a 2c 	dcbt    r0,r5,6
 150:	7c 05 32 2c 	dcbt    r5,r6
 154:	7c c8 2a 2c 	dcbt    r8,r5,6
 158:	7c e8 49 4c 	dcbtls  7,r8,r9
 15c:	7c e0 31 ec 	dcbtst  r0,r6,7
 160:	7c 06 39 ec 	dcbtst  r6,r7
 164:	7c e9 31 ec 	dcbtst  r9,r6,7
 168:	7d 4b 61 0c 	dcbtstls 10,r11,r12
 16c:	7c 01 17 ec 	dcbz    r1,r2
 170:	7c 05 37 ec 	dcbz    r5,r6
 174:	7c 00 03 8c 	dccci   
 178:	7c 00 03 8c 	dccci   
 17c:	7c 00 03 8c 	dccci   
 180:	7c 20 03 8c 	dci     1
 184:	7d 4b 63 d6 	divw    r10,r11,r12
 188:	7d 6c 6b d7 	divw\.   r11,r12,r13
 18c:	7d 4b 67 d6 	divwo   r10,r11,r12
 190:	7d 6c 6f d7 	divwo\.  r11,r12,r13
 194:	7d 4b 63 96 	divwu   r10,r11,r12
 198:	7d 6c 6b 97 	divwu\.  r11,r12,r13
 19c:	7d 4b 67 96 	divwuo  r10,r11,r12
 1a0:	7d 6c 6f 97 	divwuo\. r11,r12,r13
 1a4:	7c 83 28 9c 	dlmzb   r3,r4,r5
 1a8:	7c 83 28 9d 	dlmzb\.  r3,r4,r5
 1ac:	7d 6a 62 38 	eqv     r10,r11,r12
 1b0:	7d 6a 62 39 	eqv\.    r10,r11,r12
 1b4:	54 83 20 26 	rlwinm  r3,r4,4,0,19
 1b8:	7c 83 07 74 	extsb   r3,r4
 1bc:	7c 83 07 75 	extsb\.  r3,r4
 1c0:	7c 83 07 34 	extsh   r3,r4
 1c4:	7c 83 07 35 	extsh\.  r3,r4
 1c8:	fe a0 fa 10 	fabs    f21,f31
 1cc:	fe a0 fa 11 	fabs\.   f21,f31
 1d0:	fd 4b 60 2a 	fadd    f10,f11,f12
 1d4:	fd 4b 60 2b 	fadd\.   f10,f11,f12
 1d8:	ed 4b 60 2a 	fadds   f10,f11,f12
 1dc:	ed 4b 60 2b 	fadds\.  f10,f11,f12
 1e0:	fd 40 5e 9c 	fcfid   f10,f11
 1e4:	fd 40 5e 9d 	fcfid\.  f10,f11
 1e8:	fd 8a 58 40 	fcmpo   cr3,f10,f11
 1ec:	fd 84 28 00 	fcmpu   cr3,f4,f5
 1f0:	fd 4b 60 10 	fcpsgn  f10,f11,f12
 1f4:	fd 4b 60 11 	fcpsgn\. f10,f11,f12
 1f8:	fd 40 5e 5c 	fctid   f10,f11
 1fc:	fd 40 5e 5d 	fctid\.  f10,f11
 200:	fd 40 5e 5e 	fctidz  f10,f11
 204:	fd 40 5e 5f 	fctidz\. f10,f11
 208:	fd 40 58 1c 	fctiw   f10,f11
 20c:	fd 40 58 1d 	fctiw\.  f10,f11
 210:	fd 40 58 1e 	fctiwz  f10,f11
 214:	fd 40 58 1f 	fctiwz\. f10,f11
 218:	fd 4b 60 24 	fdiv    f10,f11,f12
 21c:	fd 4b 60 25 	fdiv\.   f10,f11,f12
 220:	ed 4b 60 24 	fdivs   f10,f11,f12
 224:	ed 4b 60 25 	fdivs\.  f10,f11,f12
 228:	fd 4b 6b 3a 	fmadd   f10,f11,f12,f13
 22c:	fd 4b 6b 3b 	fmadd\.  f10,f11,f12,f13
 230:	ed 4b 6b 3a 	fmadds  f10,f11,f12,f13
 234:	ed 4b 6b 3b 	fmadds\. f10,f11,f12,f13
 238:	fc 60 20 90 	fmr     f3,f4
 23c:	fc 60 20 91 	fmr\.    f3,f4
 240:	fd 4b 6b 38 	fmsub   f10,f11,f12,f13
 244:	fd 4b 6b 39 	fmsub\.  f10,f11,f12,f13
 248:	ed 4b 6b 38 	fmsubs  f10,f11,f12,f13
 24c:	ed 4b 6b 39 	fmsubs\. f10,f11,f12,f13
 250:	fd 4b 03 32 	fmul    f10,f11,f12
 254:	fd 4b 03 33 	fmul\.   f10,f11,f12
 258:	ed 4b 03 32 	fmuls   f10,f11,f12
 25c:	ed 4b 03 33 	fmuls\.  f10,f11,f12
 260:	fe 80 f1 10 	fnabs   f20,f30
 264:	fe 80 f1 11 	fnabs\.  f20,f30
 268:	fc 60 20 50 	fneg    f3,f4
 26c:	fc 60 20 51 	fneg\.   f3,f4
 270:	fd 4b 6b 3e 	fnmadd  f10,f11,f12,f13
 274:	fd 4b 6b 3f 	fnmadd\. f10,f11,f12,f13
 278:	ed 4b 6b 3e 	fnmadds f10,f11,f12,f13
 27c:	ed 4b 6b 3f 	fnmadds\. f10,f11,f12,f13
 280:	fd 4b 6b 3c 	fnmsub  f10,f11,f12,f13
 284:	fd 4b 6b 3d 	fnmsub\. f10,f11,f12,f13
 288:	ed 4b 6b 3c 	fnmsubs f10,f11,f12,f13
 28c:	ed 4b 6b 3d 	fnmsubs\. f10,f11,f12,f13
 290:	fd c0 78 30 	fre     f14,f15
 294:	fd c0 78 31 	fre\.    f14,f15
 298:	ed c0 78 30 	fres    f14,f15
 29c:	ed c0 78 31 	fres\.   f14,f15
 2a0:	fd 40 5b d0 	frim    f10,f11
 2a4:	fd 40 5b d1 	frim\.   f10,f11
 2a8:	fd 40 5b 10 	frin    f10,f11
 2ac:	fd 40 5b 11 	frin\.   f10,f11
 2b0:	fd 40 5b 90 	frip    f10,f11
 2b4:	fd 40 5b 91 	frip\.   f10,f11
 2b8:	fd 40 5b 50 	friz    f10,f11
 2bc:	fd 40 5b 51 	friz\.   f10,f11
 2c0:	fc c0 38 18 	frsp    f6,f7
 2c4:	fd 00 48 19 	frsp\.   f8,f9
 2c8:	fd c0 78 34 	frsqrte f14,f15
 2cc:	fd c0 78 35 	frsqrte\. f14,f15
 2d0:	ed c0 78 34 	frsqrtes f14,f15
 2d4:	ed c0 78 35 	frsqrtes\. f14,f15
 2d8:	fd 4b 6b 2e 	fsel    f10,f11,f12,f13
 2dc:	fd 4b 6b 2f 	fsel\.   f10,f11,f12,f13
 2e0:	fd 40 58 2c 	fsqrt   f10,f11
 2e4:	fd 40 58 2d 	fsqrt\.  f10,f11
 2e8:	ed 40 58 2c 	fsqrts  f10,f11
 2ec:	ed 40 58 2d 	fsqrts\. f10,f11
 2f0:	fd 4b 60 28 	fsub    f10,f11,f12
 2f4:	fd 4b 60 29 	fsub\.   f10,f11,f12
 2f8:	ed 4b 60 28 	fsubs   f10,f11,f12
 2fc:	ed 4b 60 29 	fsubs\.  f10,f11,f12
 300:	7c 03 27 ac 	icbi    r3,r4
 304:	7e 11 91 cc 	icblc   16,r17,r18
 308:	7c a8 48 2c 	icbt    5,r8,r9
 30c:	7d ae 7b cc 	icbtls  13,r14,r15
 310:	7c 00 07 8c 	iccci   
 314:	7c 00 07 8c 	iccci   
 318:	7c 00 07 8c 	iccci   
 31c:	7c 20 07 8c 	ici     1
 320:	7c 03 27 cc 	icread  r3,r4
 324:	50 83 65 36 	rlwimi  r3,r4,12,20,27
 328:	7c 43 27 1e 	isel    r2,r3,r4,28
 32c:	4c 00 01 2c 	isync
 330:	89 21 00 00 	lbz     r9,0\(r1\)
 334:	8d 41 00 01 	lbzu    r10,1\(r1\)
 338:	7e 95 b0 ee 	lbzux   r20,r21,r22
 33c:	7c 64 28 ae 	lbzx    r3,r4,r5
 340:	ca a1 00 08 	lfd     f21,8\(r1\)
 344:	ce c1 00 10 	lfdu    f22,16\(r1\)
 348:	7e 95 b4 ee 	lfdux   f20,r21,r22
 34c:	7d ae 7c ae 	lfdx    f13,r14,r15
 350:	7d 43 26 ae 	lfiwax  f10,r3,r4
 354:	c2 61 00 00 	lfs     f19,0\(r1\)
 358:	c6 81 00 04 	lfsu    f20,4\(r1\)
 35c:	7d 4b 64 6e 	lfsux   f10,r11,r12
 360:	7d 4b 64 2e 	lfsx    f10,r11,r12
 364:	a9 e1 00 06 	lha     r15,6\(r1\)
 368:	ae 01 00 08 	lhau    r16,8\(r1\)
 36c:	7d 2a 5a ee 	lhaux   r9,r10,r11
 370:	7d 2a 5a ae 	lhax    r9,r10,r11
 374:	7c 64 2e 2c 	lhbrx   r3,r4,r5
 378:	a1 a1 00 00 	lhz     r13,0\(r1\)
 37c:	a5 c1 00 02 	lhzu    r14,2\(r1\)
 380:	7e 96 c2 6e 	lhzux   r20,r22,r24
 384:	7e f8 ca 2e 	lhzx    r23,r24,r25
 388:	b8 61 ff f0 	lmw     r3,-16\(r1\)
 38c:	7c a4 84 aa 	lswi    r5,r4,16
 390:	7c 64 2c 2a 	lswx    r3,r4,r5
 394:	7c 64 28 28 	lwarx   r3,r4,r5
 398:	7c 64 28 28 	lwarx   r3,r4,r5
 39c:	7c 64 28 29 	lwarx   r3,r4,r5,1
 3a0:	7c 64 2c 2c 	lwbrx   r3,r4,r5
 3a4:	80 c7 00 00 	lwz     r6,0\(r7\)
 3a8:	84 61 00 10 	lwzu    r3,16\(r1\)
 3ac:	7c 64 28 6e 	lwzux   r3,r4,r5
 3b0:	7c 64 28 2e 	lwzx    r3,r4,r5
 3b4:	10 64 29 58 	macchw  r3,r4,r5
 3b8:	10 64 29 59 	macchw\. r3,r4,r5
 3bc:	10 64 2d 58 	macchwo r3,r4,r5
 3c0:	10 64 2d 59 	macchwo\. r3,r4,r5
 3c4:	10 64 29 d8 	macchws r3,r4,r5
 3c8:	10 64 29 d9 	macchws\. r3,r4,r5
 3cc:	10 64 2d d8 	macchwso r3,r4,r5
 3d0:	10 64 2d d9 	macchwso\. r3,r4,r5
 3d4:	10 64 29 98 	macchwsu r3,r4,r5
 3d8:	10 64 29 99 	macchwsu\. r3,r4,r5
 3dc:	10 64 2d 98 	macchwsuo r3,r4,r5
 3e0:	10 64 2d 99 	macchwsuo\. r3,r4,r5
 3e4:	10 64 29 18 	macchwu r3,r4,r5
 3e8:	10 64 29 19 	macchwu\. r3,r4,r5
 3ec:	10 64 2d 18 	macchwuo r3,r4,r5
 3f0:	10 64 2d 19 	macchwuo\. r3,r4,r5
 3f4:	10 64 28 58 	machhw  r3,r4,r5
 3f8:	10 64 28 59 	machhw\. r3,r4,r5
 3fc:	10 64 2c 58 	machhwo r3,r4,r5
 400:	10 64 2c 59 	machhwo\. r3,r4,r5
 404:	10 64 28 d8 	machhws r3,r4,r5
 408:	10 64 28 d9 	machhws\. r3,r4,r5
 40c:	10 64 2c d8 	machhwso r3,r4,r5
 410:	10 64 2c d9 	machhwso\. r3,r4,r5
 414:	10 64 28 98 	machhwsu r3,r4,r5
 418:	10 64 28 99 	machhwsu\. r3,r4,r5
 41c:	10 64 2c 98 	machhwsuo r3,r4,r5
 420:	10 64 2c 99 	machhwsuo\. r3,r4,r5
 424:	10 64 28 18 	machhwu r3,r4,r5
 428:	10 64 28 19 	machhwu\. r3,r4,r5
 42c:	10 64 2c 18 	machhwuo r3,r4,r5
 430:	10 64 2c 19 	machhwuo\. r3,r4,r5
 434:	10 64 2b 58 	maclhw  r3,r4,r5
 438:	10 64 2b 59 	maclhw\. r3,r4,r5
 43c:	10 64 2f 58 	maclhwo r3,r4,r5
 440:	10 64 2f 59 	maclhwo\. r3,r4,r5
 444:	10 64 2b d8 	maclhws r3,r4,r5
 448:	10 64 2b d9 	maclhws\. r3,r4,r5
 44c:	10 64 2f d8 	maclhwso r3,r4,r5
 450:	10 64 2f d9 	maclhwso\. r3,r4,r5
 454:	10 64 2b 98 	maclhwsu r3,r4,r5
 458:	10 64 2b 99 	maclhwsu\. r3,r4,r5
 45c:	10 64 2f 98 	maclhwsuo r3,r4,r5
 460:	10 64 2f 99 	maclhwsuo\. r3,r4,r5
 464:	10 64 2b 18 	maclhwu r3,r4,r5
 468:	10 64 2b 19 	maclhwu\. r3,r4,r5
 46c:	10 64 2f 18 	maclhwuo r3,r4,r5
 470:	10 64 2f 19 	maclhwuo\. r3,r4,r5
 474:	7c 00 06 ac 	mbar    
 478:	7c 00 06 ac 	mbar    
 47c:	7c 20 06 ac 	mbar    1
 480:	4c 04 00 00 	mcrf    cr0,cr1
 484:	fd 90 00 80 	mcrfs   cr3,cr4
 488:	7d 80 04 00 	mcrxr   cr3
 48c:	7c 60 00 26 	mfcr    r3
 490:	7c 60 00 26 	mfcr    r3
 494:	7c aa 3a 86 	mfdcr   r5,234
 498:	7c 64 02 46 	mfdcrux r3,r4
 49c:	7c 85 02 06 	mfdcrx  r4,r5
 4a0:	ff c0 04 8e 	mffs    f30
 4a4:	ff e0 04 8f 	mffs\.   f31
 4a8:	7e 60 00 a6 	mfmsr   r19
 4ac:	7c 78 00 26 	mfocrf  r3,128
 4b0:	7c 60 22 a6 	mfspr   r3,128
 4b4:	7c 6c 42 e6 	mftbl   r3
 4b8:	7c 00 04 ac 	msync
 4bc:	7c 78 01 20 	mtocrf  128,r3
 4c0:	7c 6f f1 20 	mtcr    r3
 4c4:	7d 10 6b 86 	mtdcr   432,r8
 4c8:	7c 83 03 46 	mtdcrux r3,r4
 4cc:	7c e6 03 06 	mtdcrx  r6,r7
 4d0:	fc 60 00 8c 	mtfsb0  so
 4d4:	fc 60 00 8d 	mtfsb0\. so
 4d8:	fc 60 00 4c 	mtfsb1  so
 4dc:	fc 60 00 4d 	mtfsb1\. so
 4e0:	fc 0c 55 8e 	mtfsf   6,f10
 4e4:	fc 0c 55 8e 	mtfsf   6,f10
 4e8:	fc 0d 55 8e 	mtfsf   6,f10,0,1
 4ec:	fe 0c 55 8e 	mtfsf   6,f10,1,0
 4f0:	fc 0c 5d 8f 	mtfsf\.  6,f11
 4f4:	fc 0c 5d 8f 	mtfsf\.  6,f11
 4f8:	fc 0d 5d 8f 	mtfsf\.  6,f11,0,1
 4fc:	fe 0c 5d 8f 	mtfsf\.  6,f11,1,0
 500:	ff 00 01 0c 	mtfsfi  6,0
 504:	ff 00 01 0c 	mtfsfi  6,0
 508:	ff 00 01 0c 	mtfsfi  6,0
 50c:	ff 01 01 0c 	mtfsfi  6,0,1
 510:	ff 00 f1 0d 	mtfsfi\. 6,15
 514:	ff 00 f1 0d 	mtfsfi\. 6,15
 518:	ff 00 f1 0d 	mtfsfi\. 6,15
 51c:	ff 01 f1 0d 	mtfsfi\. 6,15,1
 520:	7d 40 01 24 	mtmsr   r10
 524:	7c 78 01 20 	mtocrf  128,r3
 528:	7c 60 23 a6 	mtspr   128,r3
 52c:	10 64 29 50 	mulchw  r3,r4,r5
 530:	10 64 29 51 	mulchw\. r3,r4,r5
 534:	10 64 29 10 	mulchwu r3,r4,r5
 538:	10 64 29 11 	mulchwu\. r3,r4,r5
 53c:	10 64 28 50 	mulhhw  r3,r4,r5
 540:	10 64 28 51 	mulhhw\. r3,r4,r5
 544:	10 64 28 10 	mulhhwu r3,r4,r5
 548:	10 64 28 11 	mulhhwu\. r3,r4,r5
 54c:	7c 64 28 96 	mulhw   r3,r4,r5
 550:	7c 64 28 97 	mulhw\.  r3,r4,r5
 554:	7c 64 28 16 	mulhwu  r3,r4,r5
 558:	7c 64 28 17 	mulhwu\. r3,r4,r5
 55c:	10 64 2b 50 	mullhw  r3,r4,r5
 560:	10 64 2b 51 	mullhw\. r3,r4,r5
 564:	10 64 2b 10 	mullhwu r3,r4,r5
 568:	10 64 2b 11 	mullhwu\. r3,r4,r5
 56c:	1c 64 00 05 	mulli   r3,r4,5
 570:	7c 64 29 d6 	mullw   r3,r4,r5
 574:	7c 64 29 d7 	mullw\.  r3,r4,r5
 578:	7c 64 2d d6 	mullwo  r3,r4,r5
 57c:	7c 64 2d d7 	mullwo\. r3,r4,r5
 580:	7f bc f3 b8 	nand    r28,r29,r30
 584:	7f bc f3 b9 	nand\.   r28,r29,r30
 588:	7c 64 00 d0 	neg     r3,r4
 58c:	7c 64 00 d1 	neg\.    r3,r4
 590:	7e 11 04 d0 	nego    r16,r17
 594:	7e 53 04 d1 	nego\.   r18,r19
 598:	10 64 29 5c 	nmacchw r3,r4,r5
 59c:	10 64 29 5d 	nmacchw\. r3,r4,r5
 5a0:	10 64 2d 5c 	nmacchwo r3,r4,r5
 5a4:	10 64 2d 5d 	nmacchwo\. r3,r4,r5
 5a8:	10 64 29 dc 	nmacchws r3,r4,r5
 5ac:	10 64 29 dd 	nmacchws\. r3,r4,r5
 5b0:	10 64 2d dc 	nmacchwso r3,r4,r5
 5b4:	10 64 2d dd 	nmacchwso\. r3,r4,r5
 5b8:	10 64 28 5c 	nmachhw r3,r4,r5
 5bc:	10 64 28 5d 	nmachhw\. r3,r4,r5
 5c0:	10 64 2c 5c 	nmachhwo r3,r4,r5
 5c4:	10 64 2c 5d 	nmachhwo\. r3,r4,r5
 5c8:	10 64 28 dc 	nmachhws r3,r4,r5
 5cc:	10 64 28 dd 	nmachhws\. r3,r4,r5
 5d0:	10 64 2c dc 	nmachhwso r3,r4,r5
 5d4:	10 64 2c dd 	nmachhwso\. r3,r4,r5
 5d8:	10 64 2b 5c 	nmaclhw r3,r4,r5
 5dc:	10 64 2b 5d 	nmaclhw\. r3,r4,r5
 5e0:	10 64 2f 5c 	nmaclhwo r3,r4,r5
 5e4:	10 64 2f 5d 	nmaclhwo\. r3,r4,r5
 5e8:	10 64 2b dc 	nmaclhws r3,r4,r5
 5ec:	10 64 2b dd 	nmaclhws\. r3,r4,r5
 5f0:	10 64 2f dc 	nmaclhwso r3,r4,r5
 5f4:	10 64 2f dd 	nmaclhwso\. r3,r4,r5
 5f8:	7e b4 b0 f8 	nor     r20,r21,r22
 5fc:	7e b4 b0 f9 	nor\.    r20,r21,r22
 600:	7c 40 23 78 	or      r0,r2,r4
 604:	7d cc 83 79 	or\.     r12,r14,r16
 608:	7e 0f 8b 38 	orc     r15,r16,r17
 60c:	7e 72 a3 39 	orc\.    r18,r19,r20
 610:	60 21 00 00 	ori     r1,r1,0
 614:	64 83 de ad 	oris    r3,r4,57005
 618:	7c 83 00 f4 	popcntb r3,r4
 61c:	7c 83 01 34 	prtyw   r3,r4
 620:	4c 00 00 66 	rfci
 624:	4c 00 00 64 	rfi
 628:	4c 00 00 4c 	rfmci
 62c:	50 83 65 36 	rlwimi  r3,r4,12,20,27
 630:	50 83 65 37 	rlwimi\. r3,r4,12,20,27
 634:	54 83 00 36 	rlwinm  r3,r4,0,0,27
 638:	54 83 d1 be 	rlwinm  r3,r4,26,6,31
 63c:	54 83 20 26 	rlwinm  r3,r4,4,0,19
 640:	54 83 00 37 	rlwinm\. r3,r4,0,0,27
 644:	5c 83 28 3e 	rotlw   r3,r4,r5
 648:	5c 83 28 3f 	rotlw\.  r3,r4,r5
 64c:	5c 83 28 3e 	rotlw   r3,r4,r5
 650:	5c 83 28 3f 	rotlw\.  r3,r4,r5
 654:	44 00 00 02 	sc      
 658:	7c 83 28 30 	slw     r3,r4,r5
 65c:	7c 83 28 31 	slw\.    r3,r4,r5
 660:	7c 83 2e 30 	sraw    r3,r4,r5
 664:	7c 83 2e 31 	sraw\.   r3,r4,r5
 668:	7c 83 86 70 	srawi   r3,r4,16
 66c:	7c 83 86 71 	srawi\.  r3,r4,16
 670:	7c 83 2c 30 	srw     r3,r4,r5
 674:	7c 83 2c 31 	srw\.    r3,r4,r5
 678:	54 83 d1 be 	rlwinm  r3,r4,26,6,31
 67c:	99 61 00 02 	stb     r11,2\(r1\)
 680:	9d 81 00 03 	stbu    r12,3\(r1\)
 684:	7d ae 79 ee 	stbux   r13,r14,r15
 688:	7c 64 29 ae 	stbx    r3,r4,r5
 68c:	db 21 00 20 	stfd    f25,32\(r1\)
 690:	df 41 00 28 	stfdu   f26,40\(r1\)
 694:	7c 01 15 ee 	stfdux  f0,r1,r2
 698:	7f be fd ae 	stfdx   f29,r30,r31
 69c:	7d 43 27 ae 	stfiwx  f10,r3,r4
 6a0:	d2 e1 00 14 	stfs    f23,20\(r1\)
 6a4:	d7 01 00 18 	stfsu   f24,24\(r1\)
 6a8:	7f 5b e5 6e 	stfsux  f26,r27,r28
 6ac:	7e f8 cd 2e 	stfsx   f23,r24,r25
 6b0:	b2 21 00 0a 	sth     r17,10\(r1\)
 6b4:	7c c7 47 2c 	sthbrx  r6,r7,r8
 6b8:	b6 41 00 0c 	sthu    r18,12\(r1\)
 6bc:	7e b6 bb 6e 	sthux   r21,r22,r23
 6c0:	7d 8d 73 2e 	sthx    r12,r13,r14
 6c4:	bc c1 ff f0 	stmw    r6,-16\(r1\)
 6c8:	7c 64 85 aa 	stswi   r3,r4,16
 6cc:	7c 64 2d 2a 	stswx   r3,r4,r5
 6d0:	90 c7 ff f0 	stw     r6,-16\(r7\)
 6d4:	7c 64 2d 2c 	stwbrx  r3,r4,r5
 6d8:	7c 64 29 2d 	stwcx\.  r3,r4,r5
 6dc:	94 61 00 10 	stwu    r3,16\(r1\)
 6e0:	7c 64 29 6e 	stwux   r3,r4,r5
 6e4:	7c 64 29 2e 	stwx    r3,r4,r5
 6e8:	7c 64 28 50 	subf    r3,r4,r5
 6ec:	7c 64 28 51 	subf\.   r3,r4,r5
 6f0:	7c 64 28 10 	subfc   r3,r4,r5
 6f4:	7c 64 28 11 	subfc\.  r3,r4,r5
 6f8:	7c 64 2c 10 	subfco  r3,r4,r5
 6fc:	7c 64 2c 11 	subfco\. r3,r4,r5
 700:	7c 64 29 10 	subfe   r3,r4,r5
 704:	7c 64 29 11 	subfe\.  r3,r4,r5
 708:	7c 64 2d 10 	subfeo  r3,r4,r5
 70c:	7c 64 2d 11 	subfeo\. r3,r4,r5
 710:	20 64 00 05 	subfic  r3,r4,5
 714:	7c 64 01 d0 	subfme  r3,r4
 718:	7c 64 01 d1 	subfme\. r3,r4
 71c:	7c 64 05 d0 	subfmeo r3,r4
 720:	7c 64 05 d1 	subfmeo\. r3,r4
 724:	7c 64 2c 50 	subfo   r3,r4,r5
 728:	7c 64 2c 51 	subfo\.  r3,r4,r5
 72c:	7c 64 01 90 	subfze  r3,r4
 730:	7c 64 01 91 	subfze\. r3,r4
 734:	7c 64 05 90 	subfzeo r3,r4
 738:	7c 64 05 91 	subfzeo\. r3,r4
 73c:	7c 07 46 24 	tlbivax r7,r8
 740:	7c 22 3f 64 	tlbre   r1,r2,7
 744:	7c 0b 67 24 	tlbsx   r11,r12
 748:	7d 8d 77 24 	tlbsx   r12,r13,r14
 74c:	7d 8d 77 25 	tlbsx\.  r12,r13,r14
 750:	7c 00 04 6c 	tlbsync
 754:	7c 00 07 a4 	tlbwe   
 758:	7c 00 07 a4 	tlbwe   
 75c:	7c 21 0f a4 	tlbwe   r1,r1,1
 760:	7f e0 00 08 	trap
 764:	7f e0 00 08 	trap
 768:	7c 83 20 08 	tweq    r3,r4
 76c:	7c a3 20 08 	twlge   r3,r4
 770:	7c 83 20 08 	tweq    r3,r4
 774:	0d 03 00 0f 	twgti   r3,15
 778:	0c c3 00 0f 	twllei  r3,15
 77c:	0d 03 00 0f 	twgti   r3,15
 780:	7c a3 20 08 	twlge   r3,r4
 784:	0c c3 00 0f 	twllei  r3,15
 788:	7c 60 01 06 	wrtee   r3
 78c:	7c 00 81 46 	wrteei  1
 790:	7f dd fa 78 	xor     r29,r30,r31
 794:	7f dd fa 79 	xor\.    r29,r30,r31
 798:	68 83 de ad 	xori    r3,r4,57005
 79c:	6c 83 de ad 	xoris   r3,r4,57005