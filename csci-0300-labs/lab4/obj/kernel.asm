
obj/kernel.full:     file format elf64-x86-64


Disassembly of section .text:

0000000000040000 <_kernel_start>:
   40000:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40007:	48 89 e5             	mov    %rsp,%rbp
   4000a:	6a 00                	pushq  $0x0
   4000c:	9d                   	popfq  
   4000d:	3d 02 b0 ad 2b       	cmp    $0x2badb002,%eax
   40012:	75 0d                	jne    40021 <_kernel_start+0x21>
   40014:	f7 03 04 00 00 00    	testl  $0x4,(%rbx)
   4001a:	74 05                	je     40021 <_kernel_start+0x21>
   4001c:	8b 7b 10             	mov    0x10(%rbx),%edi
   4001f:	eb 07                	jmp    40028 <_kernel_start+0x28>
   40021:	48 c7 c7 00 00 00 00 	mov    $0x0,%rdi
   40028:	e9 e2 10 00 00       	jmpq   4110f <kernel(char const*)>

000000000004002d <exception_entry_0>:
   4002d:	6a 00                	pushq  $0x0
   4002f:	6a 00                	pushq  $0x0
   40031:	e9 3c 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040036 <exception_entry_1>:
   40036:	6a 00                	pushq  $0x0
   40038:	6a 01                	pushq  $0x1
   4003a:	e9 33 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004003f <exception_entry_2>:
   4003f:	6a 00                	pushq  $0x0
   40041:	6a 02                	pushq  $0x2
   40043:	e9 2a 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040048 <exception_entry_3>:
   40048:	6a 00                	pushq  $0x0
   4004a:	6a 03                	pushq  $0x3
   4004c:	e9 21 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040051 <exception_entry_4>:
   40051:	6a 00                	pushq  $0x0
   40053:	6a 04                	pushq  $0x4
   40055:	e9 18 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004005a <exception_entry_5>:
   4005a:	6a 00                	pushq  $0x0
   4005c:	6a 05                	pushq  $0x5
   4005e:	e9 0f 0a 00 00       	jmpq   40a72 <exception_entry>

0000000000040063 <exception_entry_6>:
   40063:	6a 00                	pushq  $0x0
   40065:	6a 06                	pushq  $0x6
   40067:	e9 06 0a 00 00       	jmpq   40a72 <exception_entry>

000000000004006c <exception_entry_7>:
   4006c:	6a 00                	pushq  $0x0
   4006e:	6a 07                	pushq  $0x7
   40070:	e9 fd 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040075 <exception_entry_8>:
   40075:	6a 08                	pushq  $0x8
   40077:	e9 f6 09 00 00       	jmpq   40a72 <exception_entry>

000000000004007c <exception_entry_9>:
   4007c:	6a 00                	pushq  $0x0
   4007e:	6a 09                	pushq  $0x9
   40080:	e9 ed 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040085 <exception_entry_10>:
   40085:	6a 0a                	pushq  $0xa
   40087:	e9 e6 09 00 00       	jmpq   40a72 <exception_entry>

000000000004008c <exception_entry_11>:
   4008c:	6a 0b                	pushq  $0xb
   4008e:	e9 df 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040093 <exception_entry_12>:
   40093:	6a 0c                	pushq  $0xc
   40095:	e9 d8 09 00 00       	jmpq   40a72 <exception_entry>

000000000004009a <exception_entry_13>:
   4009a:	6a 0d                	pushq  $0xd
   4009c:	e9 d1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400a1 <exception_entry_14>:
   400a1:	6a 0e                	pushq  $0xe
   400a3:	e9 ca 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400a8 <exception_entry_15>:
   400a8:	6a 00                	pushq  $0x0
   400aa:	6a 0f                	pushq  $0xf
   400ac:	e9 c1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400b1 <exception_entry_16>:
   400b1:	6a 00                	pushq  $0x0
   400b3:	6a 10                	pushq  $0x10
   400b5:	e9 b8 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ba <exception_entry_17>:
   400ba:	6a 11                	pushq  $0x11
   400bc:	e9 b1 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400c1 <exception_entry_18>:
   400c1:	6a 00                	pushq  $0x0
   400c3:	6a 12                	pushq  $0x12
   400c5:	e9 a8 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ca <exception_entry_19>:
   400ca:	6a 00                	pushq  $0x0
   400cc:	6a 13                	pushq  $0x13
   400ce:	e9 9f 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400d3 <exception_entry_20>:
   400d3:	6a 00                	pushq  $0x0
   400d5:	6a 14                	pushq  $0x14
   400d7:	e9 96 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400dc <exception_entry_21>:
   400dc:	6a 00                	pushq  $0x0
   400de:	6a 15                	pushq  $0x15
   400e0:	e9 8d 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400e5 <exception_entry_22>:
   400e5:	6a 00                	pushq  $0x0
   400e7:	6a 16                	pushq  $0x16
   400e9:	e9 84 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400ee <exception_entry_23>:
   400ee:	6a 00                	pushq  $0x0
   400f0:	6a 17                	pushq  $0x17
   400f2:	e9 7b 09 00 00       	jmpq   40a72 <exception_entry>

00000000000400f7 <exception_entry_24>:
   400f7:	6a 00                	pushq  $0x0
   400f9:	6a 18                	pushq  $0x18
   400fb:	e9 72 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040100 <exception_entry_25>:
   40100:	6a 00                	pushq  $0x0
   40102:	6a 19                	pushq  $0x19
   40104:	e9 69 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040109 <exception_entry_26>:
   40109:	6a 00                	pushq  $0x0
   4010b:	6a 1a                	pushq  $0x1a
   4010d:	e9 60 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040112 <exception_entry_27>:
   40112:	6a 00                	pushq  $0x0
   40114:	6a 1b                	pushq  $0x1b
   40116:	e9 57 09 00 00       	jmpq   40a72 <exception_entry>

000000000004011b <exception_entry_28>:
   4011b:	6a 00                	pushq  $0x0
   4011d:	6a 1c                	pushq  $0x1c
   4011f:	e9 4e 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040124 <exception_entry_29>:
   40124:	6a 00                	pushq  $0x0
   40126:	6a 1d                	pushq  $0x1d
   40128:	e9 45 09 00 00       	jmpq   40a72 <exception_entry>

000000000004012d <exception_entry_30>:
   4012d:	6a 00                	pushq  $0x0
   4012f:	6a 1e                	pushq  $0x1e
   40131:	e9 3c 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040136 <exception_entry_31>:
   40136:	6a 00                	pushq  $0x0
   40138:	6a 1f                	pushq  $0x1f
   4013a:	e9 33 09 00 00       	jmpq   40a72 <exception_entry>

000000000004013f <exception_entry_32>:
   4013f:	6a 00                	pushq  $0x0
   40141:	6a 20                	pushq  $0x20
   40143:	e9 2a 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040148 <exception_entry_33>:
   40148:	6a 00                	pushq  $0x0
   4014a:	6a 21                	pushq  $0x21
   4014c:	e9 21 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040151 <exception_entry_34>:
   40151:	6a 00                	pushq  $0x0
   40153:	6a 22                	pushq  $0x22
   40155:	e9 18 09 00 00       	jmpq   40a72 <exception_entry>

000000000004015a <exception_entry_35>:
   4015a:	6a 00                	pushq  $0x0
   4015c:	6a 23                	pushq  $0x23
   4015e:	e9 0f 09 00 00       	jmpq   40a72 <exception_entry>

0000000000040163 <exception_entry_36>:
   40163:	6a 00                	pushq  $0x0
   40165:	6a 24                	pushq  $0x24
   40167:	e9 06 09 00 00       	jmpq   40a72 <exception_entry>

000000000004016c <exception_entry_37>:
   4016c:	6a 00                	pushq  $0x0
   4016e:	6a 25                	pushq  $0x25
   40170:	e9 fd 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040175 <exception_entry_38>:
   40175:	6a 00                	pushq  $0x0
   40177:	6a 26                	pushq  $0x26
   40179:	e9 f4 08 00 00       	jmpq   40a72 <exception_entry>

000000000004017e <exception_entry_39>:
   4017e:	6a 00                	pushq  $0x0
   40180:	6a 27                	pushq  $0x27
   40182:	e9 eb 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040187 <exception_entry_40>:
   40187:	6a 00                	pushq  $0x0
   40189:	6a 28                	pushq  $0x28
   4018b:	e9 e2 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040190 <exception_entry_41>:
   40190:	6a 00                	pushq  $0x0
   40192:	6a 29                	pushq  $0x29
   40194:	e9 d9 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040199 <exception_entry_42>:
   40199:	6a 00                	pushq  $0x0
   4019b:	6a 2a                	pushq  $0x2a
   4019d:	e9 d0 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401a2 <exception_entry_43>:
   401a2:	6a 00                	pushq  $0x0
   401a4:	6a 2b                	pushq  $0x2b
   401a6:	e9 c7 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401ab <exception_entry_44>:
   401ab:	6a 00                	pushq  $0x0
   401ad:	6a 2c                	pushq  $0x2c
   401af:	e9 be 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401b4 <exception_entry_45>:
   401b4:	6a 00                	pushq  $0x0
   401b6:	6a 2d                	pushq  $0x2d
   401b8:	e9 b5 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401bd <exception_entry_46>:
   401bd:	6a 00                	pushq  $0x0
   401bf:	6a 2e                	pushq  $0x2e
   401c1:	e9 ac 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401c6 <exception_entry_47>:
   401c6:	6a 00                	pushq  $0x0
   401c8:	6a 2f                	pushq  $0x2f
   401ca:	e9 a3 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401cf <exception_entry_48>:
   401cf:	6a 00                	pushq  $0x0
   401d1:	6a 30                	pushq  $0x30
   401d3:	e9 9a 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401d8 <exception_entry_49>:
   401d8:	6a 00                	pushq  $0x0
   401da:	6a 31                	pushq  $0x31
   401dc:	e9 91 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401e1 <exception_entry_50>:
   401e1:	6a 00                	pushq  $0x0
   401e3:	6a 32                	pushq  $0x32
   401e5:	e9 88 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401ea <exception_entry_51>:
   401ea:	6a 00                	pushq  $0x0
   401ec:	6a 33                	pushq  $0x33
   401ee:	e9 7f 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401f3 <exception_entry_52>:
   401f3:	6a 00                	pushq  $0x0
   401f5:	6a 34                	pushq  $0x34
   401f7:	e9 76 08 00 00       	jmpq   40a72 <exception_entry>

00000000000401fc <exception_entry_53>:
   401fc:	6a 00                	pushq  $0x0
   401fe:	6a 35                	pushq  $0x35
   40200:	e9 6d 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040205 <exception_entry_54>:
   40205:	6a 00                	pushq  $0x0
   40207:	6a 36                	pushq  $0x36
   40209:	e9 64 08 00 00       	jmpq   40a72 <exception_entry>

000000000004020e <exception_entry_55>:
   4020e:	6a 00                	pushq  $0x0
   40210:	6a 37                	pushq  $0x37
   40212:	e9 5b 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040217 <exception_entry_56>:
   40217:	6a 00                	pushq  $0x0
   40219:	6a 38                	pushq  $0x38
   4021b:	e9 52 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040220 <exception_entry_57>:
   40220:	6a 00                	pushq  $0x0
   40222:	6a 39                	pushq  $0x39
   40224:	e9 49 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040229 <exception_entry_58>:
   40229:	6a 00                	pushq  $0x0
   4022b:	6a 3a                	pushq  $0x3a
   4022d:	e9 40 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040232 <exception_entry_59>:
   40232:	6a 00                	pushq  $0x0
   40234:	6a 3b                	pushq  $0x3b
   40236:	e9 37 08 00 00       	jmpq   40a72 <exception_entry>

000000000004023b <exception_entry_60>:
   4023b:	6a 00                	pushq  $0x0
   4023d:	6a 3c                	pushq  $0x3c
   4023f:	e9 2e 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040244 <exception_entry_61>:
   40244:	6a 00                	pushq  $0x0
   40246:	6a 3d                	pushq  $0x3d
   40248:	e9 25 08 00 00       	jmpq   40a72 <exception_entry>

000000000004024d <exception_entry_62>:
   4024d:	6a 00                	pushq  $0x0
   4024f:	6a 3e                	pushq  $0x3e
   40251:	e9 1c 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040256 <exception_entry_63>:
   40256:	6a 00                	pushq  $0x0
   40258:	6a 3f                	pushq  $0x3f
   4025a:	e9 13 08 00 00       	jmpq   40a72 <exception_entry>

000000000004025f <exception_entry_64>:
   4025f:	6a 00                	pushq  $0x0
   40261:	6a 40                	pushq  $0x40
   40263:	e9 0a 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040268 <exception_entry_65>:
   40268:	6a 00                	pushq  $0x0
   4026a:	6a 41                	pushq  $0x41
   4026c:	e9 01 08 00 00       	jmpq   40a72 <exception_entry>

0000000000040271 <exception_entry_66>:
   40271:	6a 00                	pushq  $0x0
   40273:	6a 42                	pushq  $0x42
   40275:	e9 f8 07 00 00       	jmpq   40a72 <exception_entry>

000000000004027a <exception_entry_67>:
   4027a:	6a 00                	pushq  $0x0
   4027c:	6a 43                	pushq  $0x43
   4027e:	e9 ef 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040283 <exception_entry_68>:
   40283:	6a 00                	pushq  $0x0
   40285:	6a 44                	pushq  $0x44
   40287:	e9 e6 07 00 00       	jmpq   40a72 <exception_entry>

000000000004028c <exception_entry_69>:
   4028c:	6a 00                	pushq  $0x0
   4028e:	6a 45                	pushq  $0x45
   40290:	e9 dd 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040295 <exception_entry_70>:
   40295:	6a 00                	pushq  $0x0
   40297:	6a 46                	pushq  $0x46
   40299:	e9 d4 07 00 00       	jmpq   40a72 <exception_entry>

000000000004029e <exception_entry_71>:
   4029e:	6a 00                	pushq  $0x0
   402a0:	6a 47                	pushq  $0x47
   402a2:	e9 cb 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402a7 <exception_entry_72>:
   402a7:	6a 00                	pushq  $0x0
   402a9:	6a 48                	pushq  $0x48
   402ab:	e9 c2 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402b0 <exception_entry_73>:
   402b0:	6a 00                	pushq  $0x0
   402b2:	6a 49                	pushq  $0x49
   402b4:	e9 b9 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402b9 <exception_entry_74>:
   402b9:	6a 00                	pushq  $0x0
   402bb:	6a 4a                	pushq  $0x4a
   402bd:	e9 b0 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402c2 <exception_entry_75>:
   402c2:	6a 00                	pushq  $0x0
   402c4:	6a 4b                	pushq  $0x4b
   402c6:	e9 a7 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402cb <exception_entry_76>:
   402cb:	6a 00                	pushq  $0x0
   402cd:	6a 4c                	pushq  $0x4c
   402cf:	e9 9e 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402d4 <exception_entry_77>:
   402d4:	6a 00                	pushq  $0x0
   402d6:	6a 4d                	pushq  $0x4d
   402d8:	e9 95 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402dd <exception_entry_78>:
   402dd:	6a 00                	pushq  $0x0
   402df:	6a 4e                	pushq  $0x4e
   402e1:	e9 8c 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402e6 <exception_entry_79>:
   402e6:	6a 00                	pushq  $0x0
   402e8:	6a 4f                	pushq  $0x4f
   402ea:	e9 83 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402ef <exception_entry_80>:
   402ef:	6a 00                	pushq  $0x0
   402f1:	6a 50                	pushq  $0x50
   402f3:	e9 7a 07 00 00       	jmpq   40a72 <exception_entry>

00000000000402f8 <exception_entry_81>:
   402f8:	6a 00                	pushq  $0x0
   402fa:	6a 51                	pushq  $0x51
   402fc:	e9 71 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040301 <exception_entry_82>:
   40301:	6a 00                	pushq  $0x0
   40303:	6a 52                	pushq  $0x52
   40305:	e9 68 07 00 00       	jmpq   40a72 <exception_entry>

000000000004030a <exception_entry_83>:
   4030a:	6a 00                	pushq  $0x0
   4030c:	6a 53                	pushq  $0x53
   4030e:	e9 5f 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040313 <exception_entry_84>:
   40313:	6a 00                	pushq  $0x0
   40315:	6a 54                	pushq  $0x54
   40317:	e9 56 07 00 00       	jmpq   40a72 <exception_entry>

000000000004031c <exception_entry_85>:
   4031c:	6a 00                	pushq  $0x0
   4031e:	6a 55                	pushq  $0x55
   40320:	e9 4d 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040325 <exception_entry_86>:
   40325:	6a 00                	pushq  $0x0
   40327:	6a 56                	pushq  $0x56
   40329:	e9 44 07 00 00       	jmpq   40a72 <exception_entry>

000000000004032e <exception_entry_87>:
   4032e:	6a 00                	pushq  $0x0
   40330:	6a 57                	pushq  $0x57
   40332:	e9 3b 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040337 <exception_entry_88>:
   40337:	6a 00                	pushq  $0x0
   40339:	6a 58                	pushq  $0x58
   4033b:	e9 32 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040340 <exception_entry_89>:
   40340:	6a 00                	pushq  $0x0
   40342:	6a 59                	pushq  $0x59
   40344:	e9 29 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040349 <exception_entry_90>:
   40349:	6a 00                	pushq  $0x0
   4034b:	6a 5a                	pushq  $0x5a
   4034d:	e9 20 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040352 <exception_entry_91>:
   40352:	6a 00                	pushq  $0x0
   40354:	6a 5b                	pushq  $0x5b
   40356:	e9 17 07 00 00       	jmpq   40a72 <exception_entry>

000000000004035b <exception_entry_92>:
   4035b:	6a 00                	pushq  $0x0
   4035d:	6a 5c                	pushq  $0x5c
   4035f:	e9 0e 07 00 00       	jmpq   40a72 <exception_entry>

0000000000040364 <exception_entry_93>:
   40364:	6a 00                	pushq  $0x0
   40366:	6a 5d                	pushq  $0x5d
   40368:	e9 05 07 00 00       	jmpq   40a72 <exception_entry>

000000000004036d <exception_entry_94>:
   4036d:	6a 00                	pushq  $0x0
   4036f:	6a 5e                	pushq  $0x5e
   40371:	e9 fc 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040376 <exception_entry_95>:
   40376:	6a 00                	pushq  $0x0
   40378:	6a 5f                	pushq  $0x5f
   4037a:	e9 f3 06 00 00       	jmpq   40a72 <exception_entry>

000000000004037f <exception_entry_96>:
   4037f:	6a 00                	pushq  $0x0
   40381:	6a 60                	pushq  $0x60
   40383:	e9 ea 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040388 <exception_entry_97>:
   40388:	6a 00                	pushq  $0x0
   4038a:	6a 61                	pushq  $0x61
   4038c:	e9 e1 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040391 <exception_entry_98>:
   40391:	6a 00                	pushq  $0x0
   40393:	6a 62                	pushq  $0x62
   40395:	e9 d8 06 00 00       	jmpq   40a72 <exception_entry>

000000000004039a <exception_entry_99>:
   4039a:	6a 00                	pushq  $0x0
   4039c:	6a 63                	pushq  $0x63
   4039e:	e9 cf 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403a3 <exception_entry_100>:
   403a3:	6a 00                	pushq  $0x0
   403a5:	6a 64                	pushq  $0x64
   403a7:	e9 c6 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403ac <exception_entry_101>:
   403ac:	6a 00                	pushq  $0x0
   403ae:	6a 65                	pushq  $0x65
   403b0:	e9 bd 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403b5 <exception_entry_102>:
   403b5:	6a 00                	pushq  $0x0
   403b7:	6a 66                	pushq  $0x66
   403b9:	e9 b4 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403be <exception_entry_103>:
   403be:	6a 00                	pushq  $0x0
   403c0:	6a 67                	pushq  $0x67
   403c2:	e9 ab 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403c7 <exception_entry_104>:
   403c7:	6a 00                	pushq  $0x0
   403c9:	6a 68                	pushq  $0x68
   403cb:	e9 a2 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403d0 <exception_entry_105>:
   403d0:	6a 00                	pushq  $0x0
   403d2:	6a 69                	pushq  $0x69
   403d4:	e9 99 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403d9 <exception_entry_106>:
   403d9:	6a 00                	pushq  $0x0
   403db:	6a 6a                	pushq  $0x6a
   403dd:	e9 90 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403e2 <exception_entry_107>:
   403e2:	6a 00                	pushq  $0x0
   403e4:	6a 6b                	pushq  $0x6b
   403e6:	e9 87 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403eb <exception_entry_108>:
   403eb:	6a 00                	pushq  $0x0
   403ed:	6a 6c                	pushq  $0x6c
   403ef:	e9 7e 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403f4 <exception_entry_109>:
   403f4:	6a 00                	pushq  $0x0
   403f6:	6a 6d                	pushq  $0x6d
   403f8:	e9 75 06 00 00       	jmpq   40a72 <exception_entry>

00000000000403fd <exception_entry_110>:
   403fd:	6a 00                	pushq  $0x0
   403ff:	6a 6e                	pushq  $0x6e
   40401:	e9 6c 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040406 <exception_entry_111>:
   40406:	6a 00                	pushq  $0x0
   40408:	6a 6f                	pushq  $0x6f
   4040a:	e9 63 06 00 00       	jmpq   40a72 <exception_entry>

000000000004040f <exception_entry_112>:
   4040f:	6a 00                	pushq  $0x0
   40411:	6a 70                	pushq  $0x70
   40413:	e9 5a 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040418 <exception_entry_113>:
   40418:	6a 00                	pushq  $0x0
   4041a:	6a 71                	pushq  $0x71
   4041c:	e9 51 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040421 <exception_entry_114>:
   40421:	6a 00                	pushq  $0x0
   40423:	6a 72                	pushq  $0x72
   40425:	e9 48 06 00 00       	jmpq   40a72 <exception_entry>

000000000004042a <exception_entry_115>:
   4042a:	6a 00                	pushq  $0x0
   4042c:	6a 73                	pushq  $0x73
   4042e:	e9 3f 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040433 <exception_entry_116>:
   40433:	6a 00                	pushq  $0x0
   40435:	6a 74                	pushq  $0x74
   40437:	e9 36 06 00 00       	jmpq   40a72 <exception_entry>

000000000004043c <exception_entry_117>:
   4043c:	6a 00                	pushq  $0x0
   4043e:	6a 75                	pushq  $0x75
   40440:	e9 2d 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040445 <exception_entry_118>:
   40445:	6a 00                	pushq  $0x0
   40447:	6a 76                	pushq  $0x76
   40449:	e9 24 06 00 00       	jmpq   40a72 <exception_entry>

000000000004044e <exception_entry_119>:
   4044e:	6a 00                	pushq  $0x0
   40450:	6a 77                	pushq  $0x77
   40452:	e9 1b 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040457 <exception_entry_120>:
   40457:	6a 00                	pushq  $0x0
   40459:	6a 78                	pushq  $0x78
   4045b:	e9 12 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040460 <exception_entry_121>:
   40460:	6a 00                	pushq  $0x0
   40462:	6a 79                	pushq  $0x79
   40464:	e9 09 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040469 <exception_entry_122>:
   40469:	6a 00                	pushq  $0x0
   4046b:	6a 7a                	pushq  $0x7a
   4046d:	e9 00 06 00 00       	jmpq   40a72 <exception_entry>

0000000000040472 <exception_entry_123>:
   40472:	6a 00                	pushq  $0x0
   40474:	6a 7b                	pushq  $0x7b
   40476:	e9 f7 05 00 00       	jmpq   40a72 <exception_entry>

000000000004047b <exception_entry_124>:
   4047b:	6a 00                	pushq  $0x0
   4047d:	6a 7c                	pushq  $0x7c
   4047f:	e9 ee 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040484 <exception_entry_125>:
   40484:	6a 00                	pushq  $0x0
   40486:	6a 7d                	pushq  $0x7d
   40488:	e9 e5 05 00 00       	jmpq   40a72 <exception_entry>

000000000004048d <exception_entry_126>:
   4048d:	6a 00                	pushq  $0x0
   4048f:	6a 7e                	pushq  $0x7e
   40491:	e9 dc 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040496 <exception_entry_127>:
   40496:	6a 00                	pushq  $0x0
   40498:	6a 7f                	pushq  $0x7f
   4049a:	e9 d3 05 00 00       	jmpq   40a72 <exception_entry>

000000000004049f <exception_entry_128>:
   4049f:	6a 00                	pushq  $0x0
   404a1:	68 80 00 00 00       	pushq  $0x80
   404a6:	e9 c7 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404ab <exception_entry_129>:
   404ab:	6a 00                	pushq  $0x0
   404ad:	68 81 00 00 00       	pushq  $0x81
   404b2:	e9 bb 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404b7 <exception_entry_130>:
   404b7:	6a 00                	pushq  $0x0
   404b9:	68 82 00 00 00       	pushq  $0x82
   404be:	e9 af 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404c3 <exception_entry_131>:
   404c3:	6a 00                	pushq  $0x0
   404c5:	68 83 00 00 00       	pushq  $0x83
   404ca:	e9 a3 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404cf <exception_entry_132>:
   404cf:	6a 00                	pushq  $0x0
   404d1:	68 84 00 00 00       	pushq  $0x84
   404d6:	e9 97 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404db <exception_entry_133>:
   404db:	6a 00                	pushq  $0x0
   404dd:	68 85 00 00 00       	pushq  $0x85
   404e2:	e9 8b 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404e7 <exception_entry_134>:
   404e7:	6a 00                	pushq  $0x0
   404e9:	68 86 00 00 00       	pushq  $0x86
   404ee:	e9 7f 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404f3 <exception_entry_135>:
   404f3:	6a 00                	pushq  $0x0
   404f5:	68 87 00 00 00       	pushq  $0x87
   404fa:	e9 73 05 00 00       	jmpq   40a72 <exception_entry>

00000000000404ff <exception_entry_136>:
   404ff:	6a 00                	pushq  $0x0
   40501:	68 88 00 00 00       	pushq  $0x88
   40506:	e9 67 05 00 00       	jmpq   40a72 <exception_entry>

000000000004050b <exception_entry_137>:
   4050b:	6a 00                	pushq  $0x0
   4050d:	68 89 00 00 00       	pushq  $0x89
   40512:	e9 5b 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040517 <exception_entry_138>:
   40517:	6a 00                	pushq  $0x0
   40519:	68 8a 00 00 00       	pushq  $0x8a
   4051e:	e9 4f 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040523 <exception_entry_139>:
   40523:	6a 00                	pushq  $0x0
   40525:	68 8b 00 00 00       	pushq  $0x8b
   4052a:	e9 43 05 00 00       	jmpq   40a72 <exception_entry>

000000000004052f <exception_entry_140>:
   4052f:	6a 00                	pushq  $0x0
   40531:	68 8c 00 00 00       	pushq  $0x8c
   40536:	e9 37 05 00 00       	jmpq   40a72 <exception_entry>

000000000004053b <exception_entry_141>:
   4053b:	6a 00                	pushq  $0x0
   4053d:	68 8d 00 00 00       	pushq  $0x8d
   40542:	e9 2b 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040547 <exception_entry_142>:
   40547:	6a 00                	pushq  $0x0
   40549:	68 8e 00 00 00       	pushq  $0x8e
   4054e:	e9 1f 05 00 00       	jmpq   40a72 <exception_entry>

0000000000040553 <exception_entry_143>:
   40553:	6a 00                	pushq  $0x0
   40555:	68 8f 00 00 00       	pushq  $0x8f
   4055a:	e9 13 05 00 00       	jmpq   40a72 <exception_entry>

000000000004055f <exception_entry_144>:
   4055f:	6a 00                	pushq  $0x0
   40561:	68 90 00 00 00       	pushq  $0x90
   40566:	e9 07 05 00 00       	jmpq   40a72 <exception_entry>

000000000004056b <exception_entry_145>:
   4056b:	6a 00                	pushq  $0x0
   4056d:	68 91 00 00 00       	pushq  $0x91
   40572:	e9 fb 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040577 <exception_entry_146>:
   40577:	6a 00                	pushq  $0x0
   40579:	68 92 00 00 00       	pushq  $0x92
   4057e:	e9 ef 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040583 <exception_entry_147>:
   40583:	6a 00                	pushq  $0x0
   40585:	68 93 00 00 00       	pushq  $0x93
   4058a:	e9 e3 04 00 00       	jmpq   40a72 <exception_entry>

000000000004058f <exception_entry_148>:
   4058f:	6a 00                	pushq  $0x0
   40591:	68 94 00 00 00       	pushq  $0x94
   40596:	e9 d7 04 00 00       	jmpq   40a72 <exception_entry>

000000000004059b <exception_entry_149>:
   4059b:	6a 00                	pushq  $0x0
   4059d:	68 95 00 00 00       	pushq  $0x95
   405a2:	e9 cb 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405a7 <exception_entry_150>:
   405a7:	6a 00                	pushq  $0x0
   405a9:	68 96 00 00 00       	pushq  $0x96
   405ae:	e9 bf 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405b3 <exception_entry_151>:
   405b3:	6a 00                	pushq  $0x0
   405b5:	68 97 00 00 00       	pushq  $0x97
   405ba:	e9 b3 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405bf <exception_entry_152>:
   405bf:	6a 00                	pushq  $0x0
   405c1:	68 98 00 00 00       	pushq  $0x98
   405c6:	e9 a7 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405cb <exception_entry_153>:
   405cb:	6a 00                	pushq  $0x0
   405cd:	68 99 00 00 00       	pushq  $0x99
   405d2:	e9 9b 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405d7 <exception_entry_154>:
   405d7:	6a 00                	pushq  $0x0
   405d9:	68 9a 00 00 00       	pushq  $0x9a
   405de:	e9 8f 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405e3 <exception_entry_155>:
   405e3:	6a 00                	pushq  $0x0
   405e5:	68 9b 00 00 00       	pushq  $0x9b
   405ea:	e9 83 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405ef <exception_entry_156>:
   405ef:	6a 00                	pushq  $0x0
   405f1:	68 9c 00 00 00       	pushq  $0x9c
   405f6:	e9 77 04 00 00       	jmpq   40a72 <exception_entry>

00000000000405fb <exception_entry_157>:
   405fb:	6a 00                	pushq  $0x0
   405fd:	68 9d 00 00 00       	pushq  $0x9d
   40602:	e9 6b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040607 <exception_entry_158>:
   40607:	6a 00                	pushq  $0x0
   40609:	68 9e 00 00 00       	pushq  $0x9e
   4060e:	e9 5f 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040613 <exception_entry_159>:
   40613:	6a 00                	pushq  $0x0
   40615:	68 9f 00 00 00       	pushq  $0x9f
   4061a:	e9 53 04 00 00       	jmpq   40a72 <exception_entry>

000000000004061f <exception_entry_160>:
   4061f:	6a 00                	pushq  $0x0
   40621:	68 a0 00 00 00       	pushq  $0xa0
   40626:	e9 47 04 00 00       	jmpq   40a72 <exception_entry>

000000000004062b <exception_entry_161>:
   4062b:	6a 00                	pushq  $0x0
   4062d:	68 a1 00 00 00       	pushq  $0xa1
   40632:	e9 3b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040637 <exception_entry_162>:
   40637:	6a 00                	pushq  $0x0
   40639:	68 a2 00 00 00       	pushq  $0xa2
   4063e:	e9 2f 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040643 <exception_entry_163>:
   40643:	6a 00                	pushq  $0x0
   40645:	68 a3 00 00 00       	pushq  $0xa3
   4064a:	e9 23 04 00 00       	jmpq   40a72 <exception_entry>

000000000004064f <exception_entry_164>:
   4064f:	6a 00                	pushq  $0x0
   40651:	68 a4 00 00 00       	pushq  $0xa4
   40656:	e9 17 04 00 00       	jmpq   40a72 <exception_entry>

000000000004065b <exception_entry_165>:
   4065b:	6a 00                	pushq  $0x0
   4065d:	68 a5 00 00 00       	pushq  $0xa5
   40662:	e9 0b 04 00 00       	jmpq   40a72 <exception_entry>

0000000000040667 <exception_entry_166>:
   40667:	6a 00                	pushq  $0x0
   40669:	68 a6 00 00 00       	pushq  $0xa6
   4066e:	e9 ff 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040673 <exception_entry_167>:
   40673:	6a 00                	pushq  $0x0
   40675:	68 a7 00 00 00       	pushq  $0xa7
   4067a:	e9 f3 03 00 00       	jmpq   40a72 <exception_entry>

000000000004067f <exception_entry_168>:
   4067f:	6a 00                	pushq  $0x0
   40681:	68 a8 00 00 00       	pushq  $0xa8
   40686:	e9 e7 03 00 00       	jmpq   40a72 <exception_entry>

000000000004068b <exception_entry_169>:
   4068b:	6a 00                	pushq  $0x0
   4068d:	68 a9 00 00 00       	pushq  $0xa9
   40692:	e9 db 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040697 <exception_entry_170>:
   40697:	6a 00                	pushq  $0x0
   40699:	68 aa 00 00 00       	pushq  $0xaa
   4069e:	e9 cf 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406a3 <exception_entry_171>:
   406a3:	6a 00                	pushq  $0x0
   406a5:	68 ab 00 00 00       	pushq  $0xab
   406aa:	e9 c3 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406af <exception_entry_172>:
   406af:	6a 00                	pushq  $0x0
   406b1:	68 ac 00 00 00       	pushq  $0xac
   406b6:	e9 b7 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406bb <exception_entry_173>:
   406bb:	6a 00                	pushq  $0x0
   406bd:	68 ad 00 00 00       	pushq  $0xad
   406c2:	e9 ab 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406c7 <exception_entry_174>:
   406c7:	6a 00                	pushq  $0x0
   406c9:	68 ae 00 00 00       	pushq  $0xae
   406ce:	e9 9f 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406d3 <exception_entry_175>:
   406d3:	6a 00                	pushq  $0x0
   406d5:	68 af 00 00 00       	pushq  $0xaf
   406da:	e9 93 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406df <exception_entry_176>:
   406df:	6a 00                	pushq  $0x0
   406e1:	68 b0 00 00 00       	pushq  $0xb0
   406e6:	e9 87 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406eb <exception_entry_177>:
   406eb:	6a 00                	pushq  $0x0
   406ed:	68 b1 00 00 00       	pushq  $0xb1
   406f2:	e9 7b 03 00 00       	jmpq   40a72 <exception_entry>

00000000000406f7 <exception_entry_178>:
   406f7:	6a 00                	pushq  $0x0
   406f9:	68 b2 00 00 00       	pushq  $0xb2
   406fe:	e9 6f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040703 <exception_entry_179>:
   40703:	6a 00                	pushq  $0x0
   40705:	68 b3 00 00 00       	pushq  $0xb3
   4070a:	e9 63 03 00 00       	jmpq   40a72 <exception_entry>

000000000004070f <exception_entry_180>:
   4070f:	6a 00                	pushq  $0x0
   40711:	68 b4 00 00 00       	pushq  $0xb4
   40716:	e9 57 03 00 00       	jmpq   40a72 <exception_entry>

000000000004071b <exception_entry_181>:
   4071b:	6a 00                	pushq  $0x0
   4071d:	68 b5 00 00 00       	pushq  $0xb5
   40722:	e9 4b 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040727 <exception_entry_182>:
   40727:	6a 00                	pushq  $0x0
   40729:	68 b6 00 00 00       	pushq  $0xb6
   4072e:	e9 3f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040733 <exception_entry_183>:
   40733:	6a 00                	pushq  $0x0
   40735:	68 b7 00 00 00       	pushq  $0xb7
   4073a:	e9 33 03 00 00       	jmpq   40a72 <exception_entry>

000000000004073f <exception_entry_184>:
   4073f:	6a 00                	pushq  $0x0
   40741:	68 b8 00 00 00       	pushq  $0xb8
   40746:	e9 27 03 00 00       	jmpq   40a72 <exception_entry>

000000000004074b <exception_entry_185>:
   4074b:	6a 00                	pushq  $0x0
   4074d:	68 b9 00 00 00       	pushq  $0xb9
   40752:	e9 1b 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040757 <exception_entry_186>:
   40757:	6a 00                	pushq  $0x0
   40759:	68 ba 00 00 00       	pushq  $0xba
   4075e:	e9 0f 03 00 00       	jmpq   40a72 <exception_entry>

0000000000040763 <exception_entry_187>:
   40763:	6a 00                	pushq  $0x0
   40765:	68 bb 00 00 00       	pushq  $0xbb
   4076a:	e9 03 03 00 00       	jmpq   40a72 <exception_entry>

000000000004076f <exception_entry_188>:
   4076f:	6a 00                	pushq  $0x0
   40771:	68 bc 00 00 00       	pushq  $0xbc
   40776:	e9 f7 02 00 00       	jmpq   40a72 <exception_entry>

000000000004077b <exception_entry_189>:
   4077b:	6a 00                	pushq  $0x0
   4077d:	68 bd 00 00 00       	pushq  $0xbd
   40782:	e9 eb 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040787 <exception_entry_190>:
   40787:	6a 00                	pushq  $0x0
   40789:	68 be 00 00 00       	pushq  $0xbe
   4078e:	e9 df 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040793 <exception_entry_191>:
   40793:	6a 00                	pushq  $0x0
   40795:	68 bf 00 00 00       	pushq  $0xbf
   4079a:	e9 d3 02 00 00       	jmpq   40a72 <exception_entry>

000000000004079f <exception_entry_192>:
   4079f:	6a 00                	pushq  $0x0
   407a1:	68 c0 00 00 00       	pushq  $0xc0
   407a6:	e9 c7 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407ab <exception_entry_193>:
   407ab:	6a 00                	pushq  $0x0
   407ad:	68 c1 00 00 00       	pushq  $0xc1
   407b2:	e9 bb 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407b7 <exception_entry_194>:
   407b7:	6a 00                	pushq  $0x0
   407b9:	68 c2 00 00 00       	pushq  $0xc2
   407be:	e9 af 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407c3 <exception_entry_195>:
   407c3:	6a 00                	pushq  $0x0
   407c5:	68 c3 00 00 00       	pushq  $0xc3
   407ca:	e9 a3 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407cf <exception_entry_196>:
   407cf:	6a 00                	pushq  $0x0
   407d1:	68 c4 00 00 00       	pushq  $0xc4
   407d6:	e9 97 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407db <exception_entry_197>:
   407db:	6a 00                	pushq  $0x0
   407dd:	68 c5 00 00 00       	pushq  $0xc5
   407e2:	e9 8b 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407e7 <exception_entry_198>:
   407e7:	6a 00                	pushq  $0x0
   407e9:	68 c6 00 00 00       	pushq  $0xc6
   407ee:	e9 7f 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407f3 <exception_entry_199>:
   407f3:	6a 00                	pushq  $0x0
   407f5:	68 c7 00 00 00       	pushq  $0xc7
   407fa:	e9 73 02 00 00       	jmpq   40a72 <exception_entry>

00000000000407ff <exception_entry_200>:
   407ff:	6a 00                	pushq  $0x0
   40801:	68 c8 00 00 00       	pushq  $0xc8
   40806:	e9 67 02 00 00       	jmpq   40a72 <exception_entry>

000000000004080b <exception_entry_201>:
   4080b:	6a 00                	pushq  $0x0
   4080d:	68 c9 00 00 00       	pushq  $0xc9
   40812:	e9 5b 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040817 <exception_entry_202>:
   40817:	6a 00                	pushq  $0x0
   40819:	68 ca 00 00 00       	pushq  $0xca
   4081e:	e9 4f 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040823 <exception_entry_203>:
   40823:	6a 00                	pushq  $0x0
   40825:	68 cb 00 00 00       	pushq  $0xcb
   4082a:	e9 43 02 00 00       	jmpq   40a72 <exception_entry>

000000000004082f <exception_entry_204>:
   4082f:	6a 00                	pushq  $0x0
   40831:	68 cc 00 00 00       	pushq  $0xcc
   40836:	e9 37 02 00 00       	jmpq   40a72 <exception_entry>

000000000004083b <exception_entry_205>:
   4083b:	6a 00                	pushq  $0x0
   4083d:	68 cd 00 00 00       	pushq  $0xcd
   40842:	e9 2b 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040847 <exception_entry_206>:
   40847:	6a 00                	pushq  $0x0
   40849:	68 ce 00 00 00       	pushq  $0xce
   4084e:	e9 1f 02 00 00       	jmpq   40a72 <exception_entry>

0000000000040853 <exception_entry_207>:
   40853:	6a 00                	pushq  $0x0
   40855:	68 cf 00 00 00       	pushq  $0xcf
   4085a:	e9 13 02 00 00       	jmpq   40a72 <exception_entry>

000000000004085f <exception_entry_208>:
   4085f:	6a 00                	pushq  $0x0
   40861:	68 d0 00 00 00       	pushq  $0xd0
   40866:	e9 07 02 00 00       	jmpq   40a72 <exception_entry>

000000000004086b <exception_entry_209>:
   4086b:	6a 00                	pushq  $0x0
   4086d:	68 d1 00 00 00       	pushq  $0xd1
   40872:	e9 fb 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040877 <exception_entry_210>:
   40877:	6a 00                	pushq  $0x0
   40879:	68 d2 00 00 00       	pushq  $0xd2
   4087e:	e9 ef 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040883 <exception_entry_211>:
   40883:	6a 00                	pushq  $0x0
   40885:	68 d3 00 00 00       	pushq  $0xd3
   4088a:	e9 e3 01 00 00       	jmpq   40a72 <exception_entry>

000000000004088f <exception_entry_212>:
   4088f:	6a 00                	pushq  $0x0
   40891:	68 d4 00 00 00       	pushq  $0xd4
   40896:	e9 d7 01 00 00       	jmpq   40a72 <exception_entry>

000000000004089b <exception_entry_213>:
   4089b:	6a 00                	pushq  $0x0
   4089d:	68 d5 00 00 00       	pushq  $0xd5
   408a2:	e9 cb 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408a7 <exception_entry_214>:
   408a7:	6a 00                	pushq  $0x0
   408a9:	68 d6 00 00 00       	pushq  $0xd6
   408ae:	e9 bf 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408b3 <exception_entry_215>:
   408b3:	6a 00                	pushq  $0x0
   408b5:	68 d7 00 00 00       	pushq  $0xd7
   408ba:	e9 b3 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408bf <exception_entry_216>:
   408bf:	6a 00                	pushq  $0x0
   408c1:	68 d8 00 00 00       	pushq  $0xd8
   408c6:	e9 a7 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408cb <exception_entry_217>:
   408cb:	6a 00                	pushq  $0x0
   408cd:	68 d9 00 00 00       	pushq  $0xd9
   408d2:	e9 9b 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408d7 <exception_entry_218>:
   408d7:	6a 00                	pushq  $0x0
   408d9:	68 da 00 00 00       	pushq  $0xda
   408de:	e9 8f 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408e3 <exception_entry_219>:
   408e3:	6a 00                	pushq  $0x0
   408e5:	68 db 00 00 00       	pushq  $0xdb
   408ea:	e9 83 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408ef <exception_entry_220>:
   408ef:	6a 00                	pushq  $0x0
   408f1:	68 dc 00 00 00       	pushq  $0xdc
   408f6:	e9 77 01 00 00       	jmpq   40a72 <exception_entry>

00000000000408fb <exception_entry_221>:
   408fb:	6a 00                	pushq  $0x0
   408fd:	68 dd 00 00 00       	pushq  $0xdd
   40902:	e9 6b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040907 <exception_entry_222>:
   40907:	6a 00                	pushq  $0x0
   40909:	68 de 00 00 00       	pushq  $0xde
   4090e:	e9 5f 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040913 <exception_entry_223>:
   40913:	6a 00                	pushq  $0x0
   40915:	68 df 00 00 00       	pushq  $0xdf
   4091a:	e9 53 01 00 00       	jmpq   40a72 <exception_entry>

000000000004091f <exception_entry_224>:
   4091f:	6a 00                	pushq  $0x0
   40921:	68 e0 00 00 00       	pushq  $0xe0
   40926:	e9 47 01 00 00       	jmpq   40a72 <exception_entry>

000000000004092b <exception_entry_225>:
   4092b:	6a 00                	pushq  $0x0
   4092d:	68 e1 00 00 00       	pushq  $0xe1
   40932:	e9 3b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040937 <exception_entry_226>:
   40937:	6a 00                	pushq  $0x0
   40939:	68 e2 00 00 00       	pushq  $0xe2
   4093e:	e9 2f 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040943 <exception_entry_227>:
   40943:	6a 00                	pushq  $0x0
   40945:	68 e3 00 00 00       	pushq  $0xe3
   4094a:	e9 23 01 00 00       	jmpq   40a72 <exception_entry>

000000000004094f <exception_entry_228>:
   4094f:	6a 00                	pushq  $0x0
   40951:	68 e4 00 00 00       	pushq  $0xe4
   40956:	e9 17 01 00 00       	jmpq   40a72 <exception_entry>

000000000004095b <exception_entry_229>:
   4095b:	6a 00                	pushq  $0x0
   4095d:	68 e5 00 00 00       	pushq  $0xe5
   40962:	e9 0b 01 00 00       	jmpq   40a72 <exception_entry>

0000000000040967 <exception_entry_230>:
   40967:	6a 00                	pushq  $0x0
   40969:	68 e6 00 00 00       	pushq  $0xe6
   4096e:	e9 ff 00 00 00       	jmpq   40a72 <exception_entry>

0000000000040973 <exception_entry_231>:
   40973:	6a 00                	pushq  $0x0
   40975:	68 e7 00 00 00       	pushq  $0xe7
   4097a:	e9 f3 00 00 00       	jmpq   40a72 <exception_entry>

000000000004097f <exception_entry_232>:
   4097f:	6a 00                	pushq  $0x0
   40981:	68 e8 00 00 00       	pushq  $0xe8
   40986:	e9 e7 00 00 00       	jmpq   40a72 <exception_entry>

000000000004098b <exception_entry_233>:
   4098b:	6a 00                	pushq  $0x0
   4098d:	68 e9 00 00 00       	pushq  $0xe9
   40992:	e9 db 00 00 00       	jmpq   40a72 <exception_entry>

0000000000040997 <exception_entry_234>:
   40997:	6a 00                	pushq  $0x0
   40999:	68 ea 00 00 00       	pushq  $0xea
   4099e:	e9 cf 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409a3 <exception_entry_235>:
   409a3:	6a 00                	pushq  $0x0
   409a5:	68 eb 00 00 00       	pushq  $0xeb
   409aa:	e9 c3 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409af <exception_entry_236>:
   409af:	6a 00                	pushq  $0x0
   409b1:	68 ec 00 00 00       	pushq  $0xec
   409b6:	e9 b7 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409bb <exception_entry_237>:
   409bb:	6a 00                	pushq  $0x0
   409bd:	68 ed 00 00 00       	pushq  $0xed
   409c2:	e9 ab 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409c7 <exception_entry_238>:
   409c7:	6a 00                	pushq  $0x0
   409c9:	68 ee 00 00 00       	pushq  $0xee
   409ce:	e9 9f 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409d3 <exception_entry_239>:
   409d3:	6a 00                	pushq  $0x0
   409d5:	68 ef 00 00 00       	pushq  $0xef
   409da:	e9 93 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409df <exception_entry_240>:
   409df:	6a 00                	pushq  $0x0
   409e1:	68 f0 00 00 00       	pushq  $0xf0
   409e6:	e9 87 00 00 00       	jmpq   40a72 <exception_entry>

00000000000409eb <exception_entry_241>:
   409eb:	6a 00                	pushq  $0x0
   409ed:	68 f1 00 00 00       	pushq  $0xf1
   409f2:	eb 7e                	jmp    40a72 <exception_entry>

00000000000409f4 <exception_entry_242>:
   409f4:	6a 00                	pushq  $0x0
   409f6:	68 f2 00 00 00       	pushq  $0xf2
   409fb:	eb 75                	jmp    40a72 <exception_entry>

00000000000409fd <exception_entry_243>:
   409fd:	6a 00                	pushq  $0x0
   409ff:	68 f3 00 00 00       	pushq  $0xf3
   40a04:	eb 6c                	jmp    40a72 <exception_entry>

0000000000040a06 <exception_entry_244>:
   40a06:	6a 00                	pushq  $0x0
   40a08:	68 f4 00 00 00       	pushq  $0xf4
   40a0d:	eb 63                	jmp    40a72 <exception_entry>

0000000000040a0f <exception_entry_245>:
   40a0f:	6a 00                	pushq  $0x0
   40a11:	68 f5 00 00 00       	pushq  $0xf5
   40a16:	eb 5a                	jmp    40a72 <exception_entry>

0000000000040a18 <exception_entry_246>:
   40a18:	6a 00                	pushq  $0x0
   40a1a:	68 f6 00 00 00       	pushq  $0xf6
   40a1f:	eb 51                	jmp    40a72 <exception_entry>

0000000000040a21 <exception_entry_247>:
   40a21:	6a 00                	pushq  $0x0
   40a23:	68 f7 00 00 00       	pushq  $0xf7
   40a28:	eb 48                	jmp    40a72 <exception_entry>

0000000000040a2a <exception_entry_248>:
   40a2a:	6a 00                	pushq  $0x0
   40a2c:	68 f8 00 00 00       	pushq  $0xf8
   40a31:	eb 3f                	jmp    40a72 <exception_entry>

0000000000040a33 <exception_entry_249>:
   40a33:	6a 00                	pushq  $0x0
   40a35:	68 f9 00 00 00       	pushq  $0xf9
   40a3a:	eb 36                	jmp    40a72 <exception_entry>

0000000000040a3c <exception_entry_250>:
   40a3c:	6a 00                	pushq  $0x0
   40a3e:	68 fa 00 00 00       	pushq  $0xfa
   40a43:	eb 2d                	jmp    40a72 <exception_entry>

0000000000040a45 <exception_entry_251>:
   40a45:	6a 00                	pushq  $0x0
   40a47:	68 fb 00 00 00       	pushq  $0xfb
   40a4c:	eb 24                	jmp    40a72 <exception_entry>

0000000000040a4e <exception_entry_252>:
   40a4e:	6a 00                	pushq  $0x0
   40a50:	68 fc 00 00 00       	pushq  $0xfc
   40a55:	eb 1b                	jmp    40a72 <exception_entry>

0000000000040a57 <exception_entry_253>:
   40a57:	6a 00                	pushq  $0x0
   40a59:	68 fd 00 00 00       	pushq  $0xfd
   40a5e:	eb 12                	jmp    40a72 <exception_entry>

0000000000040a60 <exception_entry_254>:
   40a60:	6a 00                	pushq  $0x0
   40a62:	68 fe 00 00 00       	pushq  $0xfe
   40a67:	eb 09                	jmp    40a72 <exception_entry>

0000000000040a69 <exception_entry_255>:
   40a69:	6a 00                	pushq  $0x0
   40a6b:	68 ff 00 00 00       	pushq  $0xff
   40a70:	eb 00                	jmp    40a72 <exception_entry>

0000000000040a72 <exception_entry>:
   40a72:	0f a8                	pushq  %gs
   40a74:	0f a0                	pushq  %fs
   40a76:	41 57                	push   %r15
   40a78:	41 56                	push   %r14
   40a7a:	41 55                	push   %r13
   40a7c:	41 54                	push   %r12
   40a7e:	41 53                	push   %r11
   40a80:	41 52                	push   %r10
   40a82:	41 51                	push   %r9
   40a84:	41 50                	push   %r8
   40a86:	57                   	push   %rdi
   40a87:	56                   	push   %rsi
   40a88:	55                   	push   %rbp
   40a89:	53                   	push   %rbx
   40a8a:	52                   	push   %rdx
   40a8b:	51                   	push   %rcx
   40a8c:	50                   	push   %rax
   40a8d:	48 89 e7             	mov    %rsp,%rdi
   40a90:	48 c7 c0 00 40 05 00 	mov    $0x54000,%rax
   40a97:	0f 22 d8             	mov    %rax,%cr3
   40a9a:	e8 7a 09 00 00       	callq  41419 <exception(regstate*)>

0000000000040a9f <exception_return(proc*)>:
   40a9f:	8b 47 0c             	mov    0xc(%rdi),%eax
   40aa2:	83 f8 01             	cmp    $0x1,%eax
   40aa5:	0f 85 a4 00 00 00    	jne    40b4f <proc_runnable_fail>
   40aab:	48 8b 07             	mov    (%rdi),%rax
   40aae:	0f 22 d8             	mov    %rax,%cr3
   40ab1:	48 8d 67 10          	lea    0x10(%rdi),%rsp
   40ab5:	58                   	pop    %rax
   40ab6:	59                   	pop    %rcx
   40ab7:	5a                   	pop    %rdx
   40ab8:	5b                   	pop    %rbx
   40ab9:	5d                   	pop    %rbp
   40aba:	5e                   	pop    %rsi
   40abb:	5f                   	pop    %rdi
   40abc:	41 58                	pop    %r8
   40abe:	41 59                	pop    %r9
   40ac0:	41 5a                	pop    %r10
   40ac2:	41 5b                	pop    %r11
   40ac4:	41 5c                	pop    %r12
   40ac6:	41 5d                	pop    %r13
   40ac8:	41 5e                	pop    %r14
   40aca:	41 5f                	pop    %r15
   40acc:	0f a1                	popq   %fs
   40ace:	0f a9                	popq   %gs
   40ad0:	48 83 c4 10          	add    $0x10,%rsp
   40ad4:	48 cf                	iretq  

0000000000040ad6 <syscall_entry>:
   40ad6:	48 89 24 25 f0 ff 07 	mov    %rsp,0x7fff0
   40add:	00 
   40ade:	48 c7 c4 00 00 08 00 	mov    $0x80000,%rsp
   40ae5:	6a 23                	pushq  $0x23
   40ae7:	48 83 ec 08          	sub    $0x8,%rsp
   40aeb:	41 53                	push   %r11
   40aed:	6a 1b                	pushq  $0x1b
   40aef:	51                   	push   %rcx
   40af0:	48 83 ec 08          	sub    $0x8,%rsp
   40af4:	6a ff                	pushq  $0xffffffffffffffff
   40af6:	0f a8                	pushq  %gs
   40af8:	0f a0                	pushq  %fs
   40afa:	41 57                	push   %r15
   40afc:	41 56                	push   %r14
   40afe:	41 55                	push   %r13
   40b00:	41 54                	push   %r12
   40b02:	48 83 ec 08          	sub    $0x8,%rsp
   40b06:	41 52                	push   %r10
   40b08:	41 51                	push   %r9
   40b0a:	41 50                	push   %r8
   40b0c:	57                   	push   %rdi
   40b0d:	56                   	push   %rsi
   40b0e:	55                   	push   %rbp
   40b0f:	53                   	push   %rbx
   40b10:	52                   	push   %rdx
   40b11:	48 83 ec 08          	sub    $0x8,%rsp
   40b15:	50                   	push   %rax
   40b16:	48 c7 c0 00 40 05 00 	mov    $0x54000,%rax
   40b1d:	0f 22 d8             	mov    %rax,%cr3
   40b20:	48 89 e7             	mov    %rsp,%rdi
   40b23:	e8 01 0a 00 00       	callq  41529 <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 c2 04 	mov    0x4c200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 c2 04 	mov    0x4c200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq  

0000000000040b4f <proc_runnable_fail>:
   40b4f:	48 c7 c2 ce 42 04 00 	mov    $0x442ce,%rdx
   40b56:	31 f6                	xor    %esi,%esi
   40b58:	48 c7 c7 c0 42 04 00 	mov    $0x442c0,%rdi
   40b5f:	e8 66 14 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>

0000000000040b64 <process_setup(int, char const*)>:
// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
   40b64:	55                   	push   %rbp
   40b65:	48 89 e5             	mov    %rsp,%rbp
   40b68:	41 56                	push   %r14
   40b6a:	41 55                	push   %r13
   40b6c:	41 54                	push   %r12
   40b6e:	53                   	push   %rbx
   40b6f:	48 83 ec 20          	sub    $0x20,%rsp
   40b73:	41 89 fd             	mov    %edi,%r13d
   40b76:	49 89 f4             	mov    %rsi,%r12
    init_process(&ptable[pid], 0);
   40b79:	4c 63 f7             	movslq %edi,%r14
   40b7c:	4b 8d 1c 76          	lea    (%r14,%r14,2),%rbx
   40b80:	48 c1 e3 02          	shl    $0x2,%rbx
   40b84:	4a 8d 3c 33          	lea    (%rbx,%r14,1),%rdi
   40b88:	48 c1 e7 04          	shl    $0x4,%rdi
   40b8c:	48 81 c7 20 c2 04 00 	add    $0x4c220,%rdi
   40b93:	be 00 00 00 00       	mov    $0x0,%esi
   40b98:	e8 fc 0f 00 00       	callq  41b99 <init_process(proc*, int)>

    // Initialize this process's page table
    ptable[pid].pagetable = kernel_pagetable;
   40b9d:	4c 01 f3             	add    %r14,%rbx
   40ba0:	48 c1 e3 04          	shl    $0x4,%rbx
   40ba4:	48 c7 83 20 c2 04 00 	movq   $0x54000,0x4c220(%rbx)
   40bab:	00 40 05 00 

    // Load the program.
    program_loader loader(program_name);
   40baf:	4c 89 e6             	mov    %r12,%rsi
   40bb2:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bb6:	e8 77 20 00 00       	callq  42c32 <program_loader::program_loader(char const*)>

    // For each segment of the program, allocate and map memory.
    for (loader.reset(); loader.present(); ++loader) {
   40bbb:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bbf:	e8 da 1f 00 00       	callq  42b9e <program_loader::reset()>
   40bc4:	eb 1d                	jmp    40be3 <process_setup(int, char const*)+0x7f>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
             a < loader.va() + loader.size();
             a += PAGESIZE) {
            assert(!pages[a / PAGESIZE].used());
   40bc6:	ba eb 42 04 00       	mov    $0x442eb,%edx
   40bcb:	be dc 00 00 00       	mov    $0xdc,%esi
   40bd0:	bf 07 43 04 00       	mov    $0x44307,%edi
   40bd5:	e8 f0 13 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
    for (loader.reset(); loader.present(); ++loader) {
   40bda:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bde:	e8 99 1f 00 00       	callq  42b7c <program_loader::operator++()>
   40be3:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40be7:	e8 6a 1f 00 00       	callq  42b56 <program_loader::present() const>
   40bec:	84 c0                	test   %al,%al
   40bee:	74 4f                	je     40c3f <process_setup(int, char const*)+0xdb>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   40bf0:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40bf4:	e8 f9 1e 00 00       	callq  42af2 <program_loader::va() const>
   40bf9:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   40bff:	49 89 c4             	mov    %rax,%r12
             a < loader.va() + loader.size();
   40c02:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c06:	e8 e7 1e 00 00       	callq  42af2 <program_loader::va() const>
   40c0b:	48 89 c3             	mov    %rax,%rbx
   40c0e:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c12:	e8 f3 1e 00 00       	callq  42b0a <program_loader::size() const>
   40c17:	48 01 c3             	add    %rax,%rbx
   40c1a:	4c 39 e3             	cmp    %r12,%rbx
   40c1d:	76 bb                	jbe    40bda <process_setup(int, char const*)+0x76>
            assert(!pages[a / PAGESIZE].used());
   40c1f:	4c 89 e0             	mov    %r12,%rax
   40c22:	48 c1 e8 0c          	shr    $0xc,%rax
   40c26:	80 b8 00 c0 04 00 00 	cmpb   $0x0,0x4c000(%rax)
   40c2d:	75 97                	jne    40bc6 <process_setup(int, char const*)+0x62>
            pages[a / PAGESIZE].refcount = 1;
   40c2f:	c6 80 00 c0 04 00 01 	movb   $0x1,0x4c000(%rax)
             a += PAGESIZE) {
   40c36:	49 81 c4 00 10 00 00 	add    $0x1000,%r12
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   40c3d:	eb c3                	jmp    40c02 <process_setup(int, char const*)+0x9e>
        }
    }

    // Copy instructions and data into place.
    for (loader.reset(); loader.present(); ++loader) {
   40c3f:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c43:	e8 56 1f 00 00       	callq  42b9e <program_loader::reset()>
   40c48:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c4c:	e8 05 1f 00 00       	callq  42b56 <program_loader::present() const>
   40c51:	84 c0                	test   %al,%al
   40c53:	74 5f                	je     40cb4 <process_setup(int, char const*)+0x150>
        memset((void*) loader.va(), 0, loader.size());
   40c55:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c59:	e8 ac 1e 00 00       	callq  42b0a <program_loader::size() const>
   40c5e:	48 89 c3             	mov    %rax,%rbx
   40c61:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c65:	e8 88 1e 00 00       	callq  42af2 <program_loader::va() const>
   40c6a:	48 89 c7             	mov    %rax,%rdi
   40c6d:	48 89 da             	mov    %rbx,%rdx
   40c70:	be 00 00 00 00       	mov    $0x0,%esi
   40c75:	e8 f8 2a 00 00       	callq  43772 <memset>
        memcpy((void*) loader.va(), loader.data(), loader.data_size());
   40c7a:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c7e:	e8 bb 1e 00 00       	callq  42b3e <program_loader::data_size() const>
   40c83:	49 89 c4             	mov    %rax,%r12
   40c86:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c8a:	e8 93 1e 00 00       	callq  42b22 <program_loader::data() const>
   40c8f:	48 89 c3             	mov    %rax,%rbx
   40c92:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40c96:	e8 57 1e 00 00       	callq  42af2 <program_loader::va() const>
   40c9b:	48 89 c7             	mov    %rax,%rdi
   40c9e:	4c 89 e2             	mov    %r12,%rdx
   40ca1:	48 89 de             	mov    %rbx,%rsi
   40ca4:	e8 58 2a 00 00       	callq  43701 <memcpy>
    for (loader.reset(); loader.present(); ++loader) {
   40ca9:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40cad:	e8 ca 1e 00 00       	callq  42b7c <program_loader::operator++()>
   40cb2:	eb 94                	jmp    40c48 <process_setup(int, char const*)+0xe4>
    }

    // Set %rip and mark the entry point.
    ptable[pid].regs.reg_rip = loader.entry();
   40cb4:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   40cb8:	e8 a9 1e 00 00       	callq  42b66 <program_loader::entry() const>
   40cbd:	48 89 c2             	mov    %rax,%rdx
   40cc0:	49 63 c5             	movslq %r13d,%rax
   40cc3:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   40cc7:	48 8d 04 88          	lea    (%rax,%rcx,4),%rax
   40ccb:	48 c1 e0 04          	shl    $0x4,%rax
   40ccf:	48 89 90 c8 c2 04 00 	mov    %rdx,0x4c2c8(%rax)

    // Allocate a page for the stack.
    uintptr_t stack_addr = PROC_START_ADDR + PROC_SIZE * pid - PAGESIZE;
   40cd6:	41 8d 55 04          	lea    0x4(%r13),%edx
   40cda:	c1 e2 12             	shl    $0x12,%edx
   40cdd:	48 63 d2             	movslq %edx,%rdx
   40ce0:	48 8d 82 00 f0 ff ff 	lea    -0x1000(%rdx),%rax
    assert(!pages[stack_addr / PAGESIZE].used());
   40ce7:	48 c1 e8 0c          	shr    $0xc,%rax
   40ceb:	80 b8 00 c0 04 00 00 	cmpb   $0x0,0x4c000(%rax)
   40cf2:	75 39                	jne    40d2d <process_setup(int, char const*)+0x1c9>
    pages[stack_addr / PAGESIZE].refcount = 1;
   40cf4:	c6 80 00 c0 04 00 01 	movb   $0x1,0x4c000(%rax)
    // Set %rsp to the start of the stack.
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   40cfb:	4d 63 ed             	movslq %r13d,%r13
   40cfe:	4b 8d 44 6d 00       	lea    0x0(%r13,%r13,2),%rax
   40d03:	48 c1 e0 02          	shl    $0x2,%rax
   40d07:	4a 8d 0c 28          	lea    (%rax,%r13,1),%rcx
   40d0b:	48 c1 e1 04          	shl    $0x4,%rcx
   40d0f:	48 89 91 e0 c2 04 00 	mov    %rdx,0x4c2e0(%rcx)

    // Mark the process as runnable.
    ptable[pid].state = P_RUNNABLE;
   40d16:	c7 81 2c c2 04 00 01 	movl   $0x1,0x4c22c(%rcx)
   40d1d:	00 00 00 
}
   40d20:	48 83 c4 20          	add    $0x20,%rsp
   40d24:	5b                   	pop    %rbx
   40d25:	41 5c                	pop    %r12
   40d27:	41 5d                	pop    %r13
   40d29:	41 5e                	pop    %r14
   40d2b:	5d                   	pop    %rbp
   40d2c:	c3                   	retq   
    assert(!pages[stack_addr / PAGESIZE].used());
   40d2d:	ba e8 43 04 00       	mov    $0x443e8,%edx
   40d32:	be ec 00 00 00       	mov    $0xec,%esi
   40d37:	bf 07 43 04 00       	mov    $0x44307,%edi
   40d3c:	e8 89 12 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>

0000000000040d41 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)>:
void copy_mappings(x86_64_pagetable* dst, x86_64_pagetable* src) {
   40d41:	f3 0f 1e fa          	endbr64 
   40d45:	55                   	push   %rbp
   40d46:	48 89 e5             	mov    %rsp,%rbp
   40d49:	41 57                	push   %r15
   40d4b:	41 56                	push   %r14
   40d4d:	41 55                	push   %r13
   40d4f:	41 54                	push   %r12
   40d51:	53                   	push   %rbx
   40d52:	48 83 ec 48          	sub    $0x48,%rsp
   40d56:	49 89 fd             	mov    %rdi,%r13
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40d59:	48 89 75 90          	mov    %rsi,-0x70(%rbp)
   40d5d:	48 89 75 98          	mov    %rsi,-0x68(%rbp)
   40d61:	c7 45 a0 03 00 00 00 	movl   $0x3,-0x60(%rbp)
   40d68:	c7 45 a4 ff 0f 00 00 	movl   $0xfff,-0x5c(%rbp)
   40d6f:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   40d76:	00 
    real_find(va);
   40d77:	be 00 00 00 00       	mov    $0x0,%esi
   40d7c:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   40d80:	e8 df 08 00 00       	callq  41664 <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   40d85:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    for (vmiter it(src); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   40d89:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   40d90:	0f 87 46 02 00 00    	ja     40fdc <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x29b>
}
inline uint64_t vmiter::pa() const {
    if (*pep_ & PTE_P) {
        uintptr_t pa = *pep_ & PTE_PAMASK;
        if (level_ > 0) {
            pa &= ~0x1000UL;
   40d96:	49 bc 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r12
   40d9d:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40da0:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   40da7:	ff 0f 00 
   40daa:	e9 1a 01 00 00       	jmpq   40ec9 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x188>
                panic("copy_mappings: failed to map va %p to pa %p\n", it.va(), pa);
   40daf:	48 89 da             	mov    %rbx,%rdx
   40db2:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   40db6:	bf 10 44 04 00       	mov    $0x44410,%edi
   40dbb:	b8 00 00 00 00       	mov    $0x0,%eax
   40dc0:	e8 f0 1b 00 00       	callq  429b5 <panic(char const*, ...)>
        if (level_ > 0) {
   40dc5:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   40dc8:	48 89 d1             	mov    %rdx,%rcx
   40dcb:	4c 21 e1             	and    %r12,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40dce:	48 89 d6             	mov    %rdx,%rsi
   40dd1:	4c 21 f6             	and    %r14,%rsi
   40dd4:	85 c0                	test   %eax,%eax
   40dd6:	48 0f 4f f1          	cmovg  %rcx,%rsi
        }
        return pa + (va_ & pageoffmask(level_));
   40dda:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
// Parts of a paged address: page index, page offset
static inline int pageindex(uintptr_t addr, int level) {
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
}
static inline uintptr_t pageoffmask(int level) {
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   40dde:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   40de2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40de9:	48 d3 e0             	shl    %cl,%rax
   40dec:	48 f7 d0             	not    %rax
   40def:	48 21 f8             	and    %rdi,%rax
   40df2:	48 8d 14 30          	lea    (%rax,%rsi,1),%rdx
                log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", it.va(), it.pa(), PTE_P, PTE_W, PTE_U);
   40df6:	41 b9 04 00 00 00    	mov    $0x4,%r9d
   40dfc:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   40e02:	b9 01 00 00 00       	mov    $0x1,%ecx
   40e07:	48 89 fe             	mov    %rdi,%rsi
   40e0a:	bf 40 44 04 00       	mov    $0x44440,%edi
   40e0f:	b8 00 00 00 00       	mov    $0x0,%eax
   40e14:	e8 86 10 00 00       	callq  41e9f <log_printf(char const*, ...)>
   40e19:	e9 86 00 00 00       	jmpq   40ea4 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x163>
    } else {
        return -1;
   40e1e:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   40e25:	eb 59                	jmp    40e80 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x13f>
            log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", it.va(), it.pa(), nullptr, nullptr, nullptr);
   40e27:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   40e2d:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   40e33:	b9 00 00 00 00       	mov    $0x0,%ecx
   40e38:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   40e3f:	bf 40 44 04 00       	mov    $0x44440,%edi
   40e44:	b8 00 00 00 00       	mov    $0x0,%eax
   40e49:	e8 51 10 00 00       	callq  41e9f <log_printf(char const*, ...)>
   40e4e:	eb 54                	jmp    40ea4 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x163>
        if (level_ > 0) {
   40e50:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   40e53:	48 89 d1             	mov    %rdx,%rcx
   40e56:	4c 21 e1             	and    %r12,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40e59:	48 89 d6             	mov    %rdx,%rsi
   40e5c:	4c 21 f6             	and    %r14,%rsi
   40e5f:	85 c0                	test   %eax,%eax
   40e61:	48 0f 4f f1          	cmovg  %rcx,%rsi
   40e65:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40e69:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40e70:	48 d3 e0             	shl    %cl,%rax
   40e73:	48 89 c2             	mov    %rax,%rdx
   40e76:	48 f7 d2             	not    %rdx
   40e79:	48 23 55 a8          	and    -0x58(%rbp),%rdx
   40e7d:	48 01 f2             	add    %rsi,%rdx
                log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", it.va(), it.pa(), PTE_P, nullptr, nullptr);
   40e80:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   40e86:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   40e8c:	b9 01 00 00 00       	mov    $0x1,%ecx
   40e91:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   40e95:	bf 40 44 04 00       	mov    $0x44440,%edi
   40e9a:	b8 00 00 00 00       	mov    $0x0,%eax
   40e9f:	e8 fb 0f 00 00       	callq  41e9f <log_printf(char const*, ...)>
inline vmiter& vmiter::find(uintptr_t va) {
    real_find(va);
    return *this;
}
inline vmiter& vmiter::operator+=(intptr_t delta) {
    return find(va_ + delta);
   40ea4:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   40ea8:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40eaf:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   40eb3:	e8 ac 07 00 00       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   40eb8:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    for (vmiter it(src); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   40ebc:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   40ec3:	0f 87 13 01 00 00    	ja     40fdc <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x29b>
    return (*pep_ & PTE_P) != 0;
   40ec9:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   40ecd:	48 8b 10             	mov    (%rax),%rdx
        if (it.present()) {
   40ed0:	f6 c2 01             	test   $0x1,%dl
   40ed3:	0f 84 4e ff ff ff    	je     40e27 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0xe6>
        if (level_ > 0) {
   40ed9:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   40edc:	48 89 d1             	mov    %rdx,%rcx
   40edf:	4c 21 e1             	and    %r12,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40ee2:	48 89 d7             	mov    %rdx,%rdi
   40ee5:	4c 21 f7             	and    %r14,%rdi
   40ee8:	85 c0                	test   %eax,%eax
   40eea:	48 0f 4f f9          	cmovg  %rcx,%rdi
   40eee:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40ef2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40ef9:	48 d3 e0             	shl    %cl,%rax
   40efc:	48 89 c3             	mov    %rax,%rbx
   40eff:	48 f7 d3             	not    %rbx
   40f02:	48 21 f3             	and    %rsi,%rbx
   40f05:	48 01 fb             	add    %rdi,%rbx
        return *pep_ & perm_;
   40f08:	4c 63 7d a4          	movslq -0x5c(%rbp),%r15
   40f0c:	49 21 d7             	and    %rdx,%r15
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40f0f:	4c 89 6d b0          	mov    %r13,-0x50(%rbp)
   40f13:	4c 89 6d b8          	mov    %r13,-0x48(%rbp)
   40f17:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   40f1e:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   40f25:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   40f2c:	00 
    real_find(va);
   40f2d:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   40f31:	e8 2e 07 00 00       	callq  41664 <vmiter::real_find(unsigned long)>
            int r = vmiter(dst, it.va()).try_map(pa, perm);
   40f36:	44 89 fa             	mov    %r15d,%edx
   40f39:	48 89 de             	mov    %rbx,%rsi
   40f3c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   40f40:	e8 23 08 00 00       	callq  41768 <vmiter::try_map(unsigned long, int)>
            if (r < 0) {
   40f45:	85 c0                	test   %eax,%eax
   40f47:	0f 88 62 fe ff ff    	js     40daf <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x6e>
    return (*pep_ & PTE_P) != 0;
   40f4d:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   40f51:	48 8b 10             	mov    (%rax),%rdx
            if(it.present() && it.writable() && it.user()) {
   40f54:	f6 c2 01             	test   $0x1,%dl
   40f57:	0f 84 c1 fe ff ff    	je     40e1e <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0xdd>
    return (*pep_ & perm_ & p) == p;
   40f5d:	48 63 45 a4          	movslq -0x5c(%rbp),%rax
   40f61:	48 21 d0             	and    %rdx,%rax
   40f64:	48 89 c1             	mov    %rax,%rcx
   40f67:	83 e1 03             	and    $0x3,%ecx
   40f6a:	48 83 f9 03          	cmp    $0x3,%rcx
   40f6e:	0f 85 dc fe ff ff    	jne    40e50 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x10f>
   40f74:	83 e0 05             	and    $0x5,%eax
   40f77:	48 83 f8 05          	cmp    $0x5,%rax
   40f7b:	0f 84 44 fe ff ff    	je     40dc5 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x84>
        if (level_ > 0) {
   40f81:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   40f84:	48 89 d1             	mov    %rdx,%rcx
   40f87:	4c 21 e1             	and    %r12,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40f8a:	48 89 d6             	mov    %rdx,%rsi
   40f8d:	4c 21 f6             	and    %r14,%rsi
   40f90:	85 c0                	test   %eax,%eax
   40f92:	48 0f 4f f1          	cmovg  %rcx,%rsi
        return pa + (va_ & pageoffmask(level_));
   40f96:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   40f9a:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   40f9e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40fa5:	48 d3 e0             	shl    %cl,%rax
   40fa8:	48 89 c2             	mov    %rax,%rdx
   40fab:	48 f7 d2             	not    %rdx
   40fae:	48 21 fa             	and    %rdi,%rdx
   40fb1:	48 01 f2             	add    %rsi,%rdx
                log_printf("VA %p maps to PA %p with PERMS %p, %p, %p\n", it.va(), it.pa(), PTE_P, PTE_W, nullptr);
   40fb4:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   40fba:	41 b8 02 00 00 00    	mov    $0x2,%r8d
   40fc0:	b9 01 00 00 00       	mov    $0x1,%ecx
   40fc5:	48 89 fe             	mov    %rdi,%rsi
   40fc8:	bf 40 44 04 00       	mov    $0x44440,%edi
   40fcd:	b8 00 00 00 00       	mov    $0x0,%eax
   40fd2:	e8 c8 0e 00 00       	callq  41e9f <log_printf(char const*, ...)>
   40fd7:	e9 c8 fe ff ff       	jmpq   40ea4 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)+0x163>
}
   40fdc:	48 83 c4 48          	add    $0x48,%rsp
   40fe0:	5b                   	pop    %rbx
   40fe1:	41 5c                	pop    %r12
   40fe3:	41 5d                	pop    %r13
   40fe5:	41 5e                	pop    %r14
   40fe7:	41 5f                	pop    %r15
   40fe9:	5d                   	pop    %rbp
   40fea:	c3                   	retq   

0000000000040feb <kalloc(unsigned long)>:
void* kalloc(size_t sz) {
   40feb:	f3 0f 1e fa          	endbr64 
   40fef:	55                   	push   %rbp
   40ff0:	48 89 e5             	mov    %rsp,%rbp
   40ff3:	41 54                	push   %r12
   40ff5:	53                   	push   %rbx
    if (sz > PAGESIZE) {
   40ff6:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40ffd:	77 70                	ja     4106f <kalloc(unsigned long)+0x84>
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   40fff:	48 8b 1d 22 bf 00 00 	mov    0xbf22(%rip),%rbx        # 4cf28 <next_alloc_pa>
   41006:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   4100d:	76 18                	jbe    41027 <kalloc(unsigned long)+0x3c>
    return nullptr;
   4100f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   41015:	eb 66                	jmp    4107d <kalloc(unsigned long)+0x92>
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   41017:	48 8b 1d 0a bf 00 00 	mov    0xbf0a(%rip),%rbx        # 4cf28 <next_alloc_pa>
   4101e:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   41025:	77 50                	ja     41077 <kalloc(unsigned long)+0x8c>
        next_alloc_pa += PAGESIZE;
   41027:	48 8d 83 00 10 00 00 	lea    0x1000(%rbx),%rax
   4102e:	48 89 05 f3 be 00 00 	mov    %rax,0xbef3(%rip)        # 4cf28 <next_alloc_pa>
        if (allocatable_physical_address(pa)
   41035:	48 89 df             	mov    %rbx,%rdi
   41038:	e8 ff 0a 00 00       	callq  41b3c <allocatable_physical_address(unsigned long)>
            && !pages[pa / PAGESIZE].used()) {
   4103d:	84 c0                	test   %al,%al
   4103f:	74 d6                	je     41017 <kalloc(unsigned long)+0x2c>
   41041:	48 89 d8             	mov    %rbx,%rax
   41044:	48 c1 e8 0c          	shr    $0xc,%rax
   41048:	80 b8 00 c0 04 00 00 	cmpb   $0x0,0x4c000(%rax)
   4104f:	75 c6                	jne    41017 <kalloc(unsigned long)+0x2c>
            pages[pa / PAGESIZE].refcount = 1;
   41051:	c6 80 00 c0 04 00 01 	movb   $0x1,0x4c000(%rax)
            memset((void*) pa, 0xCC, PAGESIZE);
   41058:	49 89 dc             	mov    %rbx,%r12
   4105b:	ba 00 10 00 00       	mov    $0x1000,%edx
   41060:	be cc 00 00 00       	mov    $0xcc,%esi
   41065:	48 89 df             	mov    %rbx,%rdi
   41068:	e8 05 27 00 00       	callq  43772 <memset>
            return (void*) pa;
   4106d:	eb 0e                	jmp    4107d <kalloc(unsigned long)+0x92>
        return nullptr;
   4106f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   41075:	eb 06                	jmp    4107d <kalloc(unsigned long)+0x92>
    return nullptr;
   41077:	41 bc 00 00 00 00    	mov    $0x0,%r12d
}
   4107d:	4c 89 e0             	mov    %r12,%rax
   41080:	5b                   	pop    %rbx
   41081:	41 5c                	pop    %r12
   41083:	5d                   	pop    %rbp
   41084:	c3                   	retq   

0000000000041085 <syscall_page_alloc(unsigned long)>:
// syscall_page_alloc(addr)
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    In this basic OS, it merely records that the page at physical
//    memory address `addr` is used and sets its contents to all zeros.

int syscall_page_alloc(uintptr_t addr) {
   41085:	f3 0f 1e fa          	endbr64 
   41089:	55                   	push   %rbp
   4108a:	48 89 e5             	mov    %rsp,%rbp
    assert(!pages[addr / PAGESIZE].used());
   4108d:	48 89 f8             	mov    %rdi,%rax
   41090:	48 c1 e8 0c          	shr    $0xc,%rax
   41094:	80 b8 00 c0 04 00 00 	cmpb   $0x0,0x4c000(%rax)
   4109b:	75 1d                	jne    410ba <syscall_page_alloc(unsigned long)+0x35>
    pages[addr / PAGESIZE].refcount = 1;
   4109d:	c6 80 00 c0 04 00 01 	movb   $0x1,0x4c000(%rax)
    memset((void*) addr, 0, PAGESIZE);
   410a4:	ba 00 10 00 00       	mov    $0x1000,%edx
   410a9:	be 00 00 00 00       	mov    $0x0,%esi
   410ae:	e8 bf 26 00 00       	callq  43772 <memset>
    return 0;
}
   410b3:	b8 00 00 00 00       	mov    $0x0,%eax
   410b8:	5d                   	pop    %rbp
   410b9:	c3                   	retq   
    assert(!pages[addr / PAGESIZE].used());
   410ba:	ba 70 44 04 00       	mov    $0x44470,%edx
   410bf:	be 7e 01 00 00       	mov    $0x17e,%esi
   410c4:	bf 07 43 04 00       	mov    $0x44307,%edi
   410c9:	e8 fc 0e 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>

00000000000410ce <run(proc*)>:
// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
   410ce:	f3 0f 1e fa          	endbr64 
   410d2:	55                   	push   %rbp
   410d3:	48 89 e5             	mov    %rsp,%rbp
   410d6:	53                   	push   %rbx
   410d7:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   410db:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   410df:	75 1a                	jne    410fb <run(proc*)+0x2d>
   410e1:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   410e4:	48 89 3d 15 b1 00 00 	mov    %rdi,0xb115(%rip)        # 4c200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   410eb:	48 8b 3f             	mov    (%rdi),%rdi
   410ee:	e8 bf 13 00 00       	callq  424b2 <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   410f3:	48 89 df             	mov    %rbx,%rdi
   410f6:	e8 a4 f9 ff ff       	callq  40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   410fb:	ba 17 43 04 00       	mov    $0x44317,%edx
   41100:	be a4 01 00 00       	mov    $0x1a4,%esi
   41105:	bf 07 43 04 00       	mov    $0x44307,%edi
   4110a:	e8 bb 0e 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>

000000000004110f <kernel(char const*)>:
void kernel(const char* command) {
   4110f:	f3 0f 1e fa          	endbr64 
   41113:	55                   	push   %rbp
   41114:	48 89 e5             	mov    %rsp,%rbp
   41117:	48 83 ec 20          	sub    $0x20,%rsp
    init_hardware();
   4111b:	e8 69 0f 00 00       	callq  42089 <init_hardware()>
    log_printf("Starting WeensyOS\n");
   41120:	bf 2e 43 04 00       	mov    $0x4432e,%edi
   41125:	b8 00 00 00 00       	mov    $0x0,%eax
   4112a:	e8 70 0d 00 00       	callq  41e9f <log_printf(char const*, ...)>
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_acquire);
	__glibcxx_assert(__b != memory_order_acq_rel);
	__glibcxx_assert(__b != memory_order_consume);

	__atomic_store_n(&_M_i, __i, int(__m));
   4112f:	48 c7 05 f6 bd 00 00 	movq   $0x1,0xbdf6(%rip)        # 4cf30 <ticks>
   41136:	01 00 00 00 
   4113a:	0f ae f0             	mfence 
    init_timer(HZ);
   4113d:	bf 64 00 00 00       	mov    $0x64,%edi
   41142:	e8 ae 09 00 00       	callq  41af5 <init_timer(int)>
    console_clear();
   41147:	e8 fd 2e 00 00       	callq  44049 <console_clear()>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4114c:	48 c7 45 e0 00 40 05 	movq   $0x54000,-0x20(%rbp)
   41153:	00 
   41154:	48 c7 45 e8 00 40 05 	movq   $0x54000,-0x18(%rbp)
   4115b:	00 
   4115c:	c7 45 f0 03 00 00 00 	movl   $0x3,-0x10(%rbp)
   41163:	c7 45 f4 ff 0f 00 00 	movl   $0xfff,-0xc(%rbp)
   4116a:	48 c7 45 f8 00 00 00 	movq   $0x0,-0x8(%rbp)
   41171:	00 
    real_find(va);
   41172:	be 00 00 00 00       	mov    $0x0,%esi
   41177:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   4117b:	e8 e4 04 00 00       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   41180:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41184:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4118b:	0f 86 b3 00 00 00    	jbe    41244 <kernel(char const*)+0x135>
    for (pid_t i = 0; i < NPROC; i++) {
   41191:	ba 28 c2 04 00       	mov    $0x4c228,%edx
   41196:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   4119b:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   4119d:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   411a4:	83 c0 01             	add    $0x1,%eax
   411a7:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   411ae:	83 f8 10             	cmp    $0x10,%eax
   411b1:	75 e8                	jne    4119b <kernel(char const*)+0x8c>
    copy_mappings(kernel_pagetable_copy, kernel_pagetable);
   411b3:	be 00 40 05 00       	mov    $0x54000,%esi
   411b8:	bf 00 e0 04 00       	mov    $0x4e000,%edi
   411bd:	e8 7f fb ff ff       	callq  40d41 <copy_mappings(x86_64_pagetable*, x86_64_pagetable*)>
    process_setup(1, "allocator");
   411c2:	be 54 43 04 00       	mov    $0x44354,%esi
   411c7:	bf 01 00 00 00       	mov    $0x1,%edi
   411cc:	e8 93 f9 ff ff       	callq  40b64 <process_setup(int, char const*)>
    process_setup(2, "allocator2");
   411d1:	be 5e 43 04 00       	mov    $0x4435e,%esi
   411d6:	bf 02 00 00 00       	mov    $0x2,%edi
   411db:	e8 84 f9 ff ff       	callq  40b64 <process_setup(int, char const*)>
    process_setup(3, "allocator3");
   411e0:	be 69 43 04 00       	mov    $0x44369,%esi
   411e5:	bf 03 00 00 00       	mov    $0x3,%edi
   411ea:	e8 75 f9 ff ff       	callq  40b64 <process_setup(int, char const*)>
    process_setup(4 , "allocator4");
   411ef:	be 74 43 04 00       	mov    $0x44374,%esi
   411f4:	bf 04 00 00 00       	mov    $0x4,%edi
   411f9:	e8 66 f9 ff ff       	callq  40b64 <process_setup(int, char const*)>
    run(&ptable[1]);
   411fe:	bf f0 c2 04 00       	mov    $0x4c2f0,%edi
   41203:	e8 c6 fe ff ff       	callq  410ce <run(proc*)>
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   41208:	ba 00 00 00 00       	mov    $0x0,%edx
   4120d:	be 00 00 00 00       	mov    $0x0,%esi
   41212:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   41216:	e8 4d 05 00 00       	callq  41768 <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   4121b:	85 c0                	test   %eax,%eax
   4121d:	75 50                	jne    4126f <kernel(char const*)+0x160>
    return find(va_ + delta);
   4121f:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
   41223:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   4122a:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   4122e:	e8 31 04 00 00       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   41233:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41237:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4123e:	0f 87 4d ff ff ff    	ja     41191 <kernel(char const*)+0x82>
        if (it.va() != 0) {
   41244:	48 85 f6             	test   %rsi,%rsi
   41247:	74 bf                	je     41208 <kernel(char const*)+0xf9>
    int r = try_map(pa, perm);
   41249:	ba 07 00 00 00       	mov    $0x7,%edx
   4124e:	48 8d 7d e0          	lea    -0x20(%rbp),%rdi
   41252:	e8 11 05 00 00       	callq  41768 <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41257:	85 c0                	test   %eax,%eax
   41259:	74 c4                	je     4121f <kernel(char const*)+0x110>
   4125b:	ba 41 43 04 00       	mov    $0x44341,%edx
   41260:	be b0 00 00 00       	mov    $0xb0,%esi
   41265:	bf 48 43 04 00       	mov    $0x44348,%edi
   4126a:	e8 5b 0d 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
   4126f:	ba 41 43 04 00       	mov    $0x44341,%edx
   41274:	be b0 00 00 00       	mov    $0xb0,%esi
   41279:	bf 48 43 04 00       	mov    $0x44348,%edi
   4127e:	e8 47 0d 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>

0000000000041283 <memshow()>:
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
   41283:	f3 0f 1e fa          	endbr64 
   41287:	55                   	push   %rbp
   41288:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;
    static int show_virtual = 1;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   4128b:	83 3d 92 bc 00 00 00 	cmpl   $0x0,0xbc92(%rip)        # 4cf24 <memshow()::last_ticks>
   41292:	74 16                	je     412aa <memshow()+0x27>
      {
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   41294:	48 8b 05 95 bc 00 00 	mov    0xbc95(%rip),%rax        # 4cf30 <ticks>
   4129b:	8b 15 83 bc 00 00    	mov    0xbc83(%rip),%edx        # 4cf24 <memshow()::last_ticks>
   412a1:	48 29 d0             	sub    %rdx,%rax
   412a4:	48 83 f8 31          	cmp    $0x31,%rax
   412a8:	76 27                	jbe    412d1 <memshow()+0x4e>
   412aa:	48 8b 05 7f bc 00 00 	mov    0xbc7f(%rip),%rax        # 4cf30 <ticks>
        last_ticks = ticks;
   412b1:	89 05 6d bc 00 00    	mov    %eax,0xbc6d(%rip)        # 4cf24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   412b7:	8b 05 63 bc 00 00    	mov    0xbc63(%rip),%eax        # 4cf20 <memshow()::showing>
   412bd:	83 c0 01             	add    $0x1,%eax
   412c0:	99                   	cltd   
   412c1:	c1 ea 1c             	shr    $0x1c,%edx
   412c4:	01 d0                	add    %edx,%eax
   412c6:	83 e0 0f             	and    $0xf,%eax
   412c9:	29 d0                	sub    %edx,%eax
   412cb:	89 05 4f bc 00 00    	mov    %eax,0xbc4f(%rip)        # 4cf20 <memshow()::showing>
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   412d1:	8b 05 49 bc 00 00    	mov    0xbc49(%rip),%eax        # 4cf20 <memshow()::showing>
void memshow() {
   412d7:	b9 10 00 00 00       	mov    $0x10,%ecx
   412dc:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   412e2:	be 01 00 00 00       	mov    $0x1,%esi
   412e7:	eb 16                	jmp    412ff <memshow()+0x7c>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   412e9:	83 c0 01             	add    $0x1,%eax
   412ec:	99                   	cltd   
   412ed:	c1 ea 1c             	shr    $0x1c,%edx
   412f0:	01 d0                	add    %edx,%eax
   412f2:	83 e0 0f             	and    $0xf,%eax
   412f5:	29 d0                	sub    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   412f7:	41 89 f0             	mov    %esi,%r8d
   412fa:	83 e9 01             	sub    $0x1,%ecx
   412fd:	74 59                	je     41358 <memshow()+0xd5>
        if (ptable[showing].state != P_FREE
   412ff:	48 63 d0             	movslq %eax,%rdx
   41302:	48 8d 3c 52          	lea    (%rdx,%rdx,2),%rdi
   41306:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   4130a:	48 c1 e2 04          	shl    $0x4,%rdx
   4130e:	83 ba 2c c2 04 00 00 	cmpl   $0x0,0x4c22c(%rdx)
   41315:	74 d2                	je     412e9 <memshow()+0x66>
            && ptable[showing].pagetable) {
   41317:	48 63 d0             	movslq %eax,%rdx
   4131a:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   4131e:	48 c1 e2 04          	shl    $0x4,%rdx
   41322:	48 83 ba 20 c2 04 00 	cmpq   $0x0,0x4c220(%rdx)
   41329:	00 
   4132a:	74 bd                	je     412e9 <memshow()+0x66>
   4132c:	45 84 c0             	test   %r8b,%r8b
   4132f:	74 06                	je     41337 <memshow()+0xb4>
   41331:	89 05 e9 bb 00 00    	mov    %eax,0xbbe9(%rip)        # 4cf20 <memshow()::showing>
            p = &ptable[showing];
   41337:	48 98                	cltq   
   41339:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4133d:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41341:	48 c1 e7 04          	shl    $0x4,%rdi
   41345:	48 81 c7 20 c2 04 00 	add    $0x4c220,%rdi
        }
    }

    extern void console_memviewer(proc* vmp, int show_virtual);
    console_memviewer(p, show_virtual);
   4134c:	be 01 00 00 00       	mov    $0x1,%esi
   41351:	e8 d7 20 00 00       	callq  4342d <console_memviewer(proc*, int)>
}
   41356:	5d                   	pop    %rbp
   41357:	c3                   	retq   
   41358:	89 05 c2 bb 00 00    	mov    %eax,0xbbc2(%rip)        # 4cf20 <memshow()::showing>
    for (int search = 0; !p && search < NPROC; ++search) {
   4135e:	bf 00 00 00 00       	mov    $0x0,%edi
   41363:	eb e7                	jmp    4134c <memshow()+0xc9>

0000000000041365 <schedule()>:
void schedule() {
   41365:	f3 0f 1e fa          	endbr64 
   41369:	55                   	push   %rbp
   4136a:	48 89 e5             	mov    %rsp,%rbp
   4136d:	41 54                	push   %r12
   4136f:	53                   	push   %rbx
    pid_t pid = current->pid;
   41370:	48 8b 05 89 ae 00 00 	mov    0xae89(%rip),%rax        # 4c200 <current>
        pid = (pid + 1) % NPROC;
   41377:	8b 40 08             	mov    0x8(%rax),%eax
   4137a:	83 c0 01             	add    $0x1,%eax
   4137d:	99                   	cltd   
   4137e:	c1 ea 1c             	shr    $0x1c,%edx
   41381:	01 d0                	add    %edx,%eax
   41383:	83 e0 0f             	and    $0xf,%eax
   41386:	29 d0                	sub    %edx,%eax
   41388:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   4138b:	48 98                	cltq   
   4138d:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41391:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41395:	48 c1 e0 04          	shl    $0x4,%rax
   41399:	83 b8 2c c2 04 00 01 	cmpl   $0x1,0x4c22c(%rax)
   413a0:	74 5c                	je     413fe <schedule()+0x99>
        check_keyboard();
   413a2:	e8 ec 14 00 00       	callq  42893 <check_keyboard()>
    for (unsigned spins = 1; true; ++spins) {
   413a7:	bb 01 00 00 00       	mov    $0x1,%ebx
   413ac:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC;
   413af:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   413b4:	99                   	cltd   
   413b5:	c1 ea 1c             	shr    $0x1c,%edx
   413b8:	01 d0                	add    %edx,%eax
   413ba:	83 e0 0f             	and    $0xf,%eax
   413bd:	29 d0                	sub    %edx,%eax
   413bf:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   413c2:	48 98                	cltq   
   413c4:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   413c8:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   413cc:	48 c1 e0 04          	shl    $0x4,%rax
   413d0:	83 b8 2c c2 04 00 01 	cmpl   $0x1,0x4c22c(%rax)
   413d7:	74 25                	je     413fe <schedule()+0x99>
        check_keyboard();
   413d9:	e8 b5 14 00 00       	callq  42893 <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   413de:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   413e4:	75 c6                	jne    413ac <schedule()+0x47>
            memshow();
   413e6:	e8 98 fe ff ff       	callq  41283 <memshow()>
            log_printf("%u\n", spins);
   413eb:	89 de                	mov    %ebx,%esi
   413ed:	bf 7f 43 04 00       	mov    $0x4437f,%edi
   413f2:	b8 00 00 00 00       	mov    $0x0,%eax
   413f7:	e8 a3 0a 00 00       	callq  41e9f <log_printf(char const*, ...)>
   413fc:	eb ae                	jmp    413ac <schedule()+0x47>
            run(&ptable[pid]);
   413fe:	49 63 c4             	movslq %r12d,%rax
   41401:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41405:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41409:	48 c1 e7 04          	shl    $0x4,%rdi
   4140d:	48 81 c7 20 c2 04 00 	add    $0x4c220,%rdi
   41414:	e8 b5 fc ff ff       	callq  410ce <run(proc*)>

0000000000041419 <exception(regstate*)>:
void exception(regstate* regs) {
   41419:	f3 0f 1e fa          	endbr64 
   4141d:	55                   	push   %rbp
   4141e:	48 89 e5             	mov    %rsp,%rbp
   41421:	53                   	push   %rbx
   41422:	48 83 ec 08          	sub    $0x8,%rsp
   41426:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41429:	48 8b 1d d0 ad 00 00 	mov    0xadd0(%rip),%rbx        # 4c200 <current>
   41430:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41434:	b9 18 00 00 00       	mov    $0x18,%ecx
   41439:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   4143c:	8b 3d ba 7b 07 00    	mov    0x77bba(%rip),%edi        # b8ffc <cursorpos>
   41442:	e8 d7 07 00 00       	callq  41c1e <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
   41447:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   4144e:	75 09                	jne    41459 <exception(regstate*)+0x40>
   41450:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   41457:	74 05                	je     4145e <exception(regstate*)+0x45>
        memshow();
   41459:	e8 25 fe ff ff       	callq  41283 <memshow()>
    check_keyboard();
   4145e:	e8 30 14 00 00       	callq  42893 <check_keyboard()>
    switch (regs->reg_intno) {
   41463:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   41469:	83 fe 0e             	cmp    $0xe,%esi
   4146c:	74 22                	je     41490 <exception(regstate*)+0x77>
   4146e:	83 fe 20             	cmp    $0x20,%esi
   41471:	0f 85 a3 00 00 00    	jne    4151a <exception(regstate*)+0x101>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   41477:	f0 48 83 05 b0 ba 00 	lock addq $0x1,0xbab0(%rip)        # 4cf30 <ticks>
   4147e:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   41480:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   41485:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   4148b:	e8 d5 fe ff ff       	callq  41365 <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   41490:	0f 20 d6             	mov    %cr2,%rsi
        const char* operation = regs->reg_errcode & PFERR_WRITE
   41493:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   4149a:	a8 02                	test   $0x2,%al
   4149c:	41 b9 83 43 04 00    	mov    $0x44383,%r9d
   414a2:	ba 89 43 04 00       	mov    $0x44389,%edx
   414a7:	4c 0f 44 ca          	cmove  %rdx,%r9
                ? "protection problem" : "missing page";
   414ab:	a8 01                	test   $0x1,%al
   414ad:	b9 8e 43 04 00       	mov    $0x4438e,%ecx
   414b2:	ba a1 43 04 00       	mov    $0x443a1,%edx
   414b7:	48 0f 44 ca          	cmove  %rdx,%rcx
        if (!(regs->reg_errcode & PFERR_USER)) {
   414bb:	a8 04                	test   $0x4,%al
   414bd:	74 42                	je     41501 <exception(regstate*)+0xe8>
        console_printf(CPOS(24, 0), 0x0C00,
   414bf:	48 8b 05 3a ad 00 00 	mov    0xad3a(%rip),%rax        # 4c200 <current>
   414c6:	8b 40 08             	mov    0x8(%rax),%eax
   414c9:	ff b3 a8 00 00 00    	pushq  0xa8(%rbx)
   414cf:	51                   	push   %rcx
   414d0:	49 89 f0             	mov    %rsi,%r8
   414d3:	89 c1                	mov    %eax,%ecx
   414d5:	ba c0 44 04 00       	mov    $0x444c0,%edx
   414da:	be 00 0c 00 00       	mov    $0xc00,%esi
   414df:	bf 80 07 00 00       	mov    $0x780,%edi
   414e4:	b8 00 00 00 00       	mov    $0x0,%eax
   414e9:	e8 89 2d 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
        current->state = P_BROKEN;
   414ee:	48 8b 05 0b ad 00 00 	mov    0xad0b(%rip),%rax        # 4c200 <current>
   414f5:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   414fc:	e8 64 fe ff ff       	callq  41365 <schedule()>
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
   41501:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
   41508:	4c 89 ca             	mov    %r9,%rdx
   4150b:	bf 90 44 04 00       	mov    $0x44490,%edi
   41510:	b8 00 00 00 00       	mov    $0x0,%eax
   41515:	e8 9b 14 00 00       	callq  429b5 <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   4151a:	bf ae 43 04 00       	mov    $0x443ae,%edi
   4151f:	b8 00 00 00 00       	mov    $0x0,%eax
   41524:	e8 8c 14 00 00       	callq  429b5 <panic(char const*, ...)>

0000000000041529 <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   41529:	f3 0f 1e fa          	endbr64 
   4152d:	55                   	push   %rbp
   4152e:	48 89 e5             	mov    %rsp,%rbp
   41531:	53                   	push   %rbx
   41532:	48 83 ec 08          	sub    $0x8,%rsp
   41536:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41539:	48 8b 1d c0 ac 00 00 	mov    0xacc0(%rip),%rbx        # 4c200 <current>
   41540:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41544:	b9 18 00 00 00       	mov    $0x18,%ecx
   41549:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   4154c:	8b 3d aa 7a 07 00    	mov    0x77aaa(%rip),%edi        # b8ffc <cursorpos>
   41552:	e8 c7 06 00 00       	callq  41c1e <console_show_cursor(int)>
    memshow();
   41557:	e8 27 fd ff ff       	callq  41283 <memshow()>
    check_keyboard();
   4155c:	e8 32 13 00 00       	callq  42893 <check_keyboard()>
    switch (regs->reg_rax) {
   41561:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   41565:	48 83 fe 02          	cmp    $0x2,%rsi
   41569:	74 49                	je     415b4 <syscall(regstate*)+0x8b>
   4156b:	77 18                	ja     41585 <syscall(regstate*)+0x5c>
   4156d:	48 83 fe 01          	cmp    $0x1,%rsi
   41571:	75 55                	jne    415c8 <syscall(regstate*)+0x9f>
        return current->pid;
   41573:	48 8b 05 86 ac 00 00 	mov    0xac86(%rip),%rax        # 4c200 <current>
   4157a:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   4157e:	48 83 c4 08          	add    $0x8,%rsp
   41582:	5b                   	pop    %rbx
   41583:	5d                   	pop    %rbp
   41584:	c3                   	retq   
    switch (regs->reg_rax) {
   41585:	48 83 fe 03          	cmp    $0x3,%rsi
   41589:	74 1a                	je     415a5 <syscall(regstate*)+0x7c>
   4158b:	48 83 fe 04          	cmp    $0x4,%rsi
   4158f:	75 37                	jne    415c8 <syscall(regstate*)+0x9f>
        return syscall_page_alloc(current->regs.reg_rdi);
   41591:	48 8b 05 68 ac 00 00 	mov    0xac68(%rip),%rax        # 4c200 <current>
   41598:	48 8b 78 40          	mov    0x40(%rax),%rdi
   4159c:	e8 e4 fa ff ff       	callq  41085 <syscall_page_alloc(unsigned long)>
   415a1:	48 98                	cltq   
   415a3:	eb d9                	jmp    4157e <syscall(regstate*)+0x55>
        panic(nullptr);         // does not return
   415a5:	bf 00 00 00 00       	mov    $0x0,%edi
   415aa:	b8 00 00 00 00       	mov    $0x0,%eax
   415af:	e8 01 14 00 00       	callq  429b5 <panic(char const*, ...)>
        current->regs.reg_rax = 0;
   415b4:	48 8b 05 45 ac 00 00 	mov    0xac45(%rip),%rax        # 4c200 <current>
   415bb:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   415c2:	00 
        schedule();             // does not return
   415c3:	e8 9d fd ff ff       	callq  41365 <schedule()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   415c8:	bf c8 43 04 00       	mov    $0x443c8,%edi
   415cd:	b8 00 00 00 00       	mov    $0x0,%eax
   415d2:	e8 de 13 00 00       	callq  429b5 <panic(char const*, ...)>
   415d7:	90                   	nop

00000000000415d8 <vmiter::down()>:
#include "k-vmiter.hh"

const x86_64_pageentry_t vmiter::zero_pe = 0;

void vmiter::down() {
   415d8:	f3 0f 1e fa          	endbr64 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   415dc:	8b 47 10             	mov    0x10(%rdi),%eax
   415df:	85 c0                	test   %eax,%eax
   415e1:	7e 4c                	jle    4162f <vmiter::down()+0x57>
        perm_ &= *pep_;
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   415e3:	49 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%r8
   415ea:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   415ed:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   415f1:	48 8b 0a             	mov    (%rdx),%rcx
   415f4:	48 89 ce             	mov    %rcx,%rsi
   415f7:	81 e6 81 00 00 00    	and    $0x81,%esi
   415fd:	48 83 fe 01          	cmp    $0x1,%rsi
   41601:	75 2c                	jne    4162f <vmiter::down()+0x57>
        perm_ &= *pep_;
   41603:	21 4f 14             	and    %ecx,0x14(%rdi)
        --level_;
   41606:	83 e8 01             	sub    $0x1,%eax
   41609:	89 47 10             	mov    %eax,0x10(%rdi)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4160c:	4c 89 c6             	mov    %r8,%rsi
   4160f:	48 23 32             	and    (%rdx),%rsi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41612:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41616:	48 8b 57 18          	mov    0x18(%rdi),%rdx
   4161a:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   4161d:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41623:	48 8d 14 d6          	lea    (%rsi,%rdx,8),%rdx
   41627:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   4162b:	85 c0                	test   %eax,%eax
   4162d:	75 be                	jne    415ed <vmiter::down()+0x15>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   4162f:	48 8b 47 08          	mov    0x8(%rdi),%rax
   41633:	48 8b 10             	mov    (%rax),%rdx
   41636:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   4163d:	ff 0f 00 
   41640:	48 21 d0             	and    %rdx,%rax
   41643:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   41648:	48 39 c8             	cmp    %rcx,%rax
   4164b:	77 01                	ja     4164e <vmiter::down()+0x76>
   4164d:	c3                   	retq   
void vmiter::down() {
   4164e:	55                   	push   %rbp
   4164f:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   41652:	48 8b 37             	mov    (%rdi),%rsi
   41655:	bf f0 44 04 00       	mov    $0x444f0,%edi
   4165a:	b8 00 00 00 00       	mov    $0x0,%eax
   4165f:	e8 51 13 00 00       	callq  429b5 <panic(char const*, ...)>

0000000000041664 <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   41664:	f3 0f 1e fa          	endbr64 
   41668:	55                   	push   %rbp
   41669:	48 89 e5             	mov    %rsp,%rbp
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   4166c:	8b 47 10             	mov    0x10(%rdi),%eax
   4166f:	83 f8 03             	cmp    $0x3,%eax
   41672:	74 1d                	je     41691 <vmiter::real_find(unsigned long)+0x2d>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41674:	8d 54 c0 09          	lea    0x9(%rax,%rax,8),%edx
   41678:	8d 4a 0c             	lea    0xc(%rdx),%ecx
   4167b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41682:	48 d3 e0             	shl    %cl,%rax
   41685:	48 89 f1             	mov    %rsi,%rcx
   41688:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   4168c:	48 85 c8             	test   %rcx,%rax
   4168f:	74 34                	je     416c5 <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   41691:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   41698:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
   4169f:	80 ff ff 
   416a2:	48 01 f0             	add    %rsi,%rax
        if (va_is_canonical(va)) {
   416a5:	48 ba ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rdx
   416ac:	ff fe ff 
   416af:	48 39 d0             	cmp    %rdx,%rax
   416b2:	77 3e                	ja     416f2 <vmiter::real_find(unsigned long)+0x8e>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   416b4:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   416bb:	48 c7 47 08 d8 45 04 	movq   $0x445d8,0x8(%rdi)
   416c2:	00 
   416c3:	eb 47                	jmp    4170c <vmiter::real_find(unsigned long)+0xa8>
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) & PAGEOFFMASK) >> 3;
   416c5:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   416c9:	8d 4a 03             	lea    0x3(%rdx),%ecx
   416cc:	48 89 f0             	mov    %rsi,%rax
   416cf:	48 d3 e8             	shr    %cl,%rax
   416d2:	25 ff 01 00 00       	and    $0x1ff,%eax
   416d7:	4c 89 c2             	mov    %r8,%rdx
   416da:	48 c1 ea 03          	shr    $0x3,%rdx
   416de:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
        pep_ += pageindex(va, level_) - curidx;
   416e4:	29 d0                	sub    %edx,%eax
   416e6:	48 98                	cltq   
   416e8:	49 8d 04 c0          	lea    (%r8,%rax,8),%rax
   416ec:	48 89 47 08          	mov    %rax,0x8(%rdi)
   416f0:	eb 1a                	jmp    4170c <vmiter::real_find(unsigned long)+0xa8>
            perm_ = initial_perm;
   416f2:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   416f9:	48 89 f0             	mov    %rsi,%rax
   416fc:	48 c1 e8 24          	shr    $0x24,%rax
   41700:	25 f8 0f 00 00       	and    $0xff8,%eax
   41705:	48 03 07             	add    (%rdi),%rax
   41708:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
    va_ = va;
   4170c:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down();
   41710:	e8 c3 fe ff ff       	callq  415d8 <vmiter::down()>
}
   41715:	5d                   	pop    %rbp
   41716:	c3                   	retq   
   41717:	90                   	nop

0000000000041718 <vmiter::next()>:

void vmiter::next() {
   41718:	f3 0f 1e fa          	endbr64 
   4171c:	55                   	push   %rbp
   4171d:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   41720:	8b 47 10             	mov    0x10(%rdi),%eax
   41723:	85 c0                	test   %eax,%eax
   41725:	7e 1d                	jle    41744 <vmiter::next()+0x2c>
    if (*pep_ & PTE_P) {
   41727:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4172b:	48 8b 12             	mov    (%rdx),%rdx
   4172e:	f6 c2 01             	test   $0x1,%dl
   41731:	74 16                	je     41749 <vmiter::next()+0x31>
        return *pep_ & perm_;
   41733:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
    int level = 0;
   41737:	48 85 d1             	test   %rdx,%rcx
   4173a:	ba 00 00 00 00       	mov    $0x0,%edx
   4173f:	0f 45 c2             	cmovne %edx,%eax
   41742:	eb 05                	jmp    41749 <vmiter::next()+0x31>
   41744:	b8 00 00 00 00       	mov    $0x0,%eax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41749:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   4174d:	be 01 00 00 00       	mov    $0x1,%esi
   41752:	48 d3 e6             	shl    %cl,%rsi
   41755:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   41759:	48 0b 77 18          	or     0x18(%rdi),%rsi
   4175d:	48 83 c6 01          	add    $0x1,%rsi
   41761:	e8 fe fe ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
}
   41766:	5d                   	pop    %rbp
   41767:	c3                   	retq   

0000000000041768 <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   41768:	f3 0f 1e fa          	endbr64 
   4176c:	55                   	push   %rbp
   4176d:	48 89 e5             	mov    %rsp,%rbp
   41770:	41 57                	push   %r15
   41772:	41 56                	push   %r14
   41774:	41 55                	push   %r13
   41776:	41 54                	push   %r12
   41778:	53                   	push   %rbx
   41779:	48 83 ec 08          	sub    $0x8,%rsp
   4177d:	49 89 fc             	mov    %rdi,%r12
   41780:	49 89 f6             	mov    %rsi,%r14
   41783:	41 89 d7             	mov    %edx,%r15d
    if (pa == (uintptr_t) -1 && perm == 0) {
   41786:	85 d2                	test   %edx,%edx
   41788:	0f 94 c2             	sete   %dl
   4178b:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   4178f:	75 25                	jne    417b6 <vmiter::try_map(unsigned long, int)+0x4e>
   41791:	84 d2                	test   %dl,%dl
   41793:	74 21                	je     417b6 <vmiter::try_map(unsigned long, int)+0x4e>
        pa = 0;
    }
    assert(!(va_ & PAGEOFFMASK));
   41795:	4c 8b 77 18          	mov    0x18(%rdi),%r14
   41799:	41 81 e6 ff 0f 00 00 	and    $0xfff,%r14d
   417a0:	74 48                	je     417ea <vmiter::try_map(unsigned long, int)+0x82>
   417a2:	ba 6b 45 04 00       	mov    $0x4456b,%edx
   417a7:	be 31 00 00 00       	mov    $0x31,%esi
   417ac:	bf 80 45 04 00       	mov    $0x44580,%edi
   417b1:	e8 14 08 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
   417b6:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   417bd:	0f 
   417be:	75 e2                	jne    417a2 <vmiter::try_map(unsigned long, int)+0x3a>
    if (perm & PTE_P) {
   417c0:	41 f6 c7 01          	test   $0x1,%r15b
   417c4:	0f 84 e4 00 00 00    	je     418ae <vmiter::try_map(unsigned long, int)+0x146>
        assert(pa != (uintptr_t) -1);
   417ca:	49 83 fe ff          	cmp    $0xffffffffffffffff,%r14
   417ce:	0f 84 b2 00 00 00    	je     41886 <vmiter::try_map(unsigned long, int)+0x11e>
        assert((pa & PTE_PAMASK) == pa);
   417d4:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   417db:	ff 0f 00 
   417de:	4c 21 f0             	and    %r14,%rax
   417e1:	4c 39 f0             	cmp    %r14,%rax
   417e4:	0f 85 b0 00 00 00    	jne    4189a <vmiter::try_map(unsigned long, int)+0x132>
    } else {
        assert(!(pa & PTE_P));
    }
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   417ea:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   417ef:	41 f7 d5             	not    %r13d
   417f2:	45 21 fd             	and    %r15d,%r13d
   417f5:	41 83 e5 07          	and    $0x7,%r13d
   417f9:	0f 85 cd 00 00 00    	jne    418cc <vmiter::try_map(unsigned long, int)+0x164>

    while (level_ > 0 && perm) {
   417ff:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   41804:	85 c0                	test   %eax,%eax
   41806:	7e 57                	jle    4185f <vmiter::try_map(unsigned long, int)+0xf7>
   41808:	84 d2                	test   %dl,%dl
   4180a:	75 53                	jne    4185f <vmiter::try_map(unsigned long, int)+0xf7>
        assert(!(*pep_ & PTE_P));
   4180c:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41811:	f6 00 01             	testb  $0x1,(%rax)
   41814:	0f 85 c6 00 00 00    	jne    418e0 <vmiter::try_map(unsigned long, int)+0x178>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   4181a:	bf 00 10 00 00       	mov    $0x1000,%edi
   4181f:	e8 c7 f7 ff ff       	callq  40feb <kalloc(unsigned long)>
   41824:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   41827:	48 85 c0             	test   %rax,%rax
   4182a:	0f 84 c4 00 00 00    	je     418f4 <vmiter::try_map(unsigned long, int)+0x18c>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   41830:	ba 00 10 00 00       	mov    $0x1000,%edx
   41835:	be 00 00 00 00       	mov    $0x0,%esi
   4183a:	48 89 c7             	mov    %rax,%rdi
   4183d:	e8 30 1f 00 00       	callq  43772 <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   41842:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   41847:	48 83 cb 07          	or     $0x7,%rbx
   4184b:	48 89 18             	mov    %rbx,(%rax)
        down();
   4184e:	4c 89 e7             	mov    %r12,%rdi
   41851:	e8 82 fd ff ff       	callq  415d8 <vmiter::down()>
    while (level_ > 0 && perm) {
   41856:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   4185b:	85 c0                	test   %eax,%eax
   4185d:	7f ad                	jg     4180c <vmiter::try_map(unsigned long, int)+0xa4>
    }

    if (level_ == 0) {
   4185f:	85 c0                	test   %eax,%eax
   41861:	75 11                	jne    41874 <vmiter::try_map(unsigned long, int)+0x10c>
        *pep_ = pa | perm;
   41863:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   41868:	4d 63 ff             	movslq %r15d,%r15
   4186b:	4d 09 fe             	or     %r15,%r14
   4186e:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   41871:	41 89 c5             	mov    %eax,%r13d
}
   41874:	44 89 e8             	mov    %r13d,%eax
   41877:	48 83 c4 08          	add    $0x8,%rsp
   4187b:	5b                   	pop    %rbx
   4187c:	41 5c                	pop    %r12
   4187e:	41 5d                	pop    %r13
   41880:	41 5e                	pop    %r14
   41882:	41 5f                	pop    %r15
   41884:	5d                   	pop    %rbp
   41885:	c3                   	retq   
        assert(pa != (uintptr_t) -1);
   41886:	ba 8c 45 04 00       	mov    $0x4458c,%edx
   4188b:	be 33 00 00 00       	mov    $0x33,%esi
   41890:	bf 80 45 04 00       	mov    $0x44580,%edi
   41895:	e8 30 07 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
        assert((pa & PTE_PAMASK) == pa);
   4189a:	ba a1 45 04 00       	mov    $0x445a1,%edx
   4189f:	be 34 00 00 00       	mov    $0x34,%esi
   418a4:	bf 80 45 04 00       	mov    $0x44580,%edi
   418a9:	e8 1c 07 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
        assert(!(pa & PTE_P));
   418ae:	41 f6 c6 01          	test   $0x1,%r14b
   418b2:	0f 84 32 ff ff ff    	je     417ea <vmiter::try_map(unsigned long, int)+0x82>
   418b8:	ba b9 45 04 00       	mov    $0x445b9,%edx
   418bd:	be 36 00 00 00       	mov    $0x36,%esi
   418c2:	bf 80 45 04 00       	mov    $0x44580,%edi
   418c7:	e8 fe 06 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   418cc:	ba 40 45 04 00       	mov    $0x44540,%edx
   418d1:	be 38 00 00 00       	mov    $0x38,%esi
   418d6:	bf 80 45 04 00       	mov    $0x44580,%edi
   418db:	e8 ea 06 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
        assert(!(*pep_ & PTE_P));
   418e0:	ba c7 45 04 00       	mov    $0x445c7,%edx
   418e5:	be 3b 00 00 00       	mov    $0x3b,%esi
   418ea:	bf 80 45 04 00       	mov    $0x44580,%edi
   418ef:	e8 d6 06 00 00       	callq  41fca <assert_fail(char const*, int, char const*)>
            return -1;
   418f4:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   418fa:	e9 75 ff ff ff       	jmpq   41874 <vmiter::try_map(unsigned long, int)+0x10c>
   418ff:	90                   	nop

0000000000041900 <ptiter::down(bool)>:
    pep_ = &pt_->entry[pageindex(va, level_)];
    va_ = va;
    down(false);
}

void ptiter::down(bool skip) {
   41900:	f3 0f 1e fa          	endbr64 
   41904:	55                   	push   %rbp
   41905:	48 89 e5             	mov    %rsp,%rbp
   41908:	41 55                	push   %r13
   4190a:	41 54                	push   %r12
   4190c:	53                   	push   %rbx
    int stop_level = 1;
   4190d:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   41913:	41 ba 01 00 00 00    	mov    $0x1,%r10d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41919:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   41920:	ff 0f 00 
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
                    return;
                }
                stop_level = level_ + 1;
   41923:	41 bb 00 00 00 00    	mov    $0x0,%r11d
   41929:	eb 53                	jmp    4197e <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   4192b:	8b 47 10             	mov    0x10(%rdi),%eax
   4192e:	44 39 e8             	cmp    %r13d,%eax
   41931:	74 35                	je     41968 <ptiter::down(bool)+0x68>
                --level_;
   41933:	83 e8 01             	sub    $0x1,%eax
   41936:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   41939:	48 89 da             	mov    %rbx,%rdx
   4193c:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41940:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41944:	48 8b 47 18          	mov    0x18(%rdi),%rax
   41948:	48 d3 e8             	shr    %cl,%rax
                pep_ = &pt->entry[pageindex(va_, level_)];
   4194b:	25 ff 01 00 00       	and    $0x1ff,%eax
   41950:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   41954:	48 89 47 08          	mov    %rax,0x8(%rdi)
            }
   41958:	eb 21                	jmp    4197b <ptiter::down(bool)+0x7b>
                    va_ = VA_NONCANONMAX + 1;
   4195a:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   41961:	00 01 00 
   41964:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   41968:	5b                   	pop    %rbx
   41969:	41 5c                	pop    %r12
   4196b:	41 5d                	pop    %r13
   4196d:	5d                   	pop    %rbp
   4196e:	c3                   	retq   
                ++pep_;
   4196f:	49 83 c4 08          	add    $0x8,%r12
   41973:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   41977:	48 89 47 18          	mov    %rax,0x18(%rdi)
                stop_level = level_ + 1;
   4197b:	44 89 de             	mov    %r11d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   4197e:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   41982:	49 8b 04 24          	mov    (%r12),%rax
   41986:	25 81 00 00 00       	and    $0x81,%eax
   4198b:	48 83 f8 01          	cmp    $0x1,%rax
   4198f:	75 05                	jne    41996 <ptiter::down(bool)+0x96>
   41991:	40 84 f6             	test   %sil,%sil
   41994:	74 95                	je     4192b <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   41996:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   4199a:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   4199e:	47 8d 04 c9          	lea    (%r9,%r9,8),%r8d
   419a2:	41 8d 48 0c          	lea    0xc(%r8),%ecx
   419a6:	4c 89 d2             	mov    %r10,%rdx
   419a9:	48 d3 e2             	shl    %cl,%rdx
   419ac:	48 83 ea 01          	sub    $0x1,%rdx
   419b0:	48 09 f2             	or     %rsi,%rdx
   419b3:	48 8d 42 01          	lea    0x1(%rdx),%rax
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   419b7:	41 8d 51 01          	lea    0x1(%r9),%edx
   419bb:	41 8d 48 15          	lea    0x15(%r8),%ecx
   419bf:	4d 89 d0             	mov    %r10,%r8
   419c2:	49 d3 e0             	shl    %cl,%r8
   419c5:	4c 89 c1             	mov    %r8,%rcx
   419c8:	48 f7 d9             	neg    %rcx
   419cb:	49 89 f0             	mov    %rsi,%r8
   419ce:	49 31 c0             	xor    %rax,%r8
   419d1:	4c 85 c1             	test   %r8,%rcx
   419d4:	74 99                	je     4196f <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   419d6:	41 83 f9 03          	cmp    $0x3,%r9d
   419da:	0f 84 7a ff ff ff    	je     4195a <ptiter::down(bool)+0x5a>
                level_ = 3;
   419e0:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   419e7:	48 89 f0             	mov    %rsi,%rax
   419ea:	48 c1 e8 24          	shr    $0x24,%rax
   419ee:	25 f8 0f 00 00       	and    $0xff8,%eax
   419f3:	48 03 07             	add    (%rdi),%rax
   419f6:	48 89 47 08          	mov    %rax,0x8(%rdi)
                stop_level = level_ + 1;
   419fa:	41 89 d5             	mov    %edx,%r13d
   419fd:	e9 79 ff ff ff       	jmpq   4197b <ptiter::down(bool)+0x7b>

0000000000041a02 <ptiter::go(unsigned long)>:
void ptiter::go(uintptr_t va) {
   41a02:	f3 0f 1e fa          	endbr64 
   41a06:	55                   	push   %rbp
   41a07:	48 89 e5             	mov    %rsp,%rbp
    level_ = 3;
   41a0a:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    pep_ = &pt_->entry[pageindex(va, level_)];
   41a11:	48 89 f0             	mov    %rsi,%rax
   41a14:	48 c1 e8 24          	shr    $0x24,%rax
   41a18:	25 f8 0f 00 00       	and    $0xff8,%eax
   41a1d:	48 03 07             	add    (%rdi),%rax
   41a20:	48 89 47 08          	mov    %rax,0x8(%rdi)
    va_ = va;
   41a24:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down(false);
   41a28:	be 00 00 00 00       	mov    $0x0,%esi
   41a2d:	e8 ce fe ff ff       	callq  41900 <ptiter::down(bool)>
}
   41a32:	5d                   	pop    %rbp
   41a33:	c3                   	retq   

0000000000041a34 <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   41a34:	f3 0f 1e fa          	endbr64 
    if (!initialized) {
   41a38:	83 3d c5 75 01 00 00 	cmpl   $0x0,0x175c5(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   41a3f:	75 15                	jne    41a56 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x22>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   41a41:	b8 00 00 00 00       	mov    $0x0,%eax
   41a46:	ba 7a 03 00 00       	mov    $0x37a,%edx
   41a4b:	ee                   	out    %al,(%dx)
        initialized = 1;
   41a4c:	c7 05 ae 75 01 00 01 	movl   $0x1,0x175ae(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   41a53:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   41a56:	ba 79 03 00 00       	mov    $0x379,%edx
   41a5b:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   41a5c:	bf 00 32 00 00       	mov    $0x3200,%edi
   41a61:	b9 84 00 00 00       	mov    $0x84,%ecx
   41a66:	41 b8 79 03 00 00    	mov    $0x379,%r8d
   41a6c:	84 c0                	test   %al,%al
   41a6e:	78 13                	js     41a83 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   41a70:	89 ca                	mov    %ecx,%edx
   41a72:	ec                   	in     (%dx),%al
   41a73:	ec                   	in     (%dx),%al
   41a74:	ec                   	in     (%dx),%al
   41a75:	ec                   	in     (%dx),%al
   41a76:	83 ef 01             	sub    $0x1,%edi
   41a79:	74 08                	je     41a83 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   41a7b:	44 89 c2             	mov    %r8d,%edx
   41a7e:	ec                   	in     (%dx),%al
   41a7f:	84 c0                	test   %al,%al
   41a81:	79 ed                	jns    41a70 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3c>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   41a83:	ba 78 03 00 00       	mov    $0x378,%edx
   41a88:	89 f0                	mov    %esi,%eax
   41a8a:	ee                   	out    %al,(%dx)
   41a8b:	ba 7a 03 00 00       	mov    $0x37a,%edx
   41a90:	b8 0d 00 00 00       	mov    $0xd,%eax
   41a95:	ee                   	out    %al,(%dx)
   41a96:	b8 0c 00 00 00       	mov    $0xc,%eax
   41a9b:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   41a9c:	c3                   	retq   

0000000000041a9d <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   41a9d:	55                   	push   %rbp
   41a9e:	48 89 e5             	mov    %rsp,%rbp
   41aa1:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   41aa3:	ba d0 b9 04 00       	mov    $0x4b9d0,%edx
   41aa8:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   41aaf:	bf 00 60 04 01       	mov    $0x1046000,%edi
   41ab4:	48 81 ef d0 b9 04 00 	sub    $0x4b9d0,%rdi
    if (reboot) {
   41abb:	84 c0                	test   %al,%al
   41abd:	74 2a                	je     41ae9 <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   41abf:	48 89 fe             	mov    %rdi,%rsi
   41ac2:	bf 00 60 04 00       	mov    $0x46000,%edi
   41ac7:	e8 35 1c 00 00       	callq  43701 <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   41acc:	ba 98 90 05 00       	mov    $0x59098,%edx
   41ad1:	48 81 ea d0 b9 04 00 	sub    $0x4b9d0,%rdx
   41ad8:	be 00 00 00 00       	mov    $0x0,%esi
   41add:	bf d0 b9 04 00       	mov    $0x4b9d0,%edi
   41ae2:	e8 8b 1c 00 00       	callq  43772 <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   41ae7:	5d                   	pop    %rbp
   41ae8:	c3                   	retq   
        memcpy(data_stash, &_data_start, data_size);
   41ae9:	be 00 60 04 00       	mov    $0x46000,%esi
   41aee:	e8 0e 1c 00 00       	callq  43701 <memcpy>
}
   41af3:	eb f2                	jmp    41ae7 <stash_kernel_data(bool)+0x4a>

0000000000041af5 <init_timer(int)>:
void init_timer(int rate) {
   41af5:	f3 0f 1e fa          	endbr64 
    if (rate > 0) {
   41af9:	85 ff                	test   %edi,%edi
   41afb:	7e 12                	jle    41b0f <init_timer(int)+0x1a>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   41afd:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   41b02:	99                   	cltd   
   41b03:	f7 ff                	idiv   %edi
   41b05:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   41b0c:	00 00 
}
   41b0e:	c3                   	retq   
    reg_[reg].v = v;
   41b0f:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   41b14:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   41b1a:	c3                   	retq   

0000000000041b1b <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   41b1b:	f3 0f 1e fa          	endbr64 
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   41b1f:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   41b26:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   41b2c:	0f 96 c0             	setbe  %al
   41b2f:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   41b36:	0f 96 c2             	setbe  %dl
   41b39:	09 d0                	or     %edx,%eax
}
   41b3b:	c3                   	retq   

0000000000041b3c <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   41b3c:	f3 0f 1e fa          	endbr64 
   41b40:	55                   	push   %rbp
   41b41:	48 89 e5             	mov    %rsp,%rbp
   41b44:	53                   	push   %rbx
   41b45:	48 83 ec 08          	sub    $0x8,%rsp
   41b49:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   41b4c:	e8 ca ff ff ff       	callq  41b1b <reserved_physical_address(unsigned long)>
        && pa < MEMSIZE_PHYSICAL;
   41b51:	84 c0                	test   %al,%al
   41b53:	75 38                	jne    41b8d <allocatable_physical_address(unsigned long)+0x51>
        && (pa < KERNEL_START_ADDR
   41b55:	48 81 fb ff ff 03 00 	cmp    $0x3ffff,%rbx
   41b5c:	76 11                	jbe    41b6f <allocatable_physical_address(unsigned long)+0x33>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
   41b5e:	ba 97 a0 05 00       	mov    $0x5a097,%edx
            || pa >= round_up((uintptr_t) _kernel_end, PAGESIZE))
   41b63:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
   41b6a:	48 39 d3             	cmp    %rdx,%rbx
   41b6d:	72 23                	jb     41b92 <allocatable_physical_address(unsigned long)+0x56>
            || pa >= KERNEL_STACK_TOP)
   41b6f:	48 8d 83 00 10 f8 ff 	lea    -0x7f000(%rbx),%rax
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   41b76:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
   41b7c:	0f 97 c0             	seta   %al
        && pa < MEMSIZE_PHYSICAL;
   41b7f:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   41b86:	0f 96 c2             	setbe  %dl
   41b89:	21 d0                	and    %edx,%eax
   41b8b:	eb 05                	jmp    41b92 <allocatable_physical_address(unsigned long)+0x56>
   41b8d:	b8 00 00 00 00       	mov    $0x0,%eax
}
   41b92:	48 83 c4 08          	add    $0x8,%rsp
   41b96:	5b                   	pop    %rbx
   41b97:	5d                   	pop    %rbp
   41b98:	c3                   	retq   

0000000000041b99 <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   41b99:	f3 0f 1e fa          	endbr64 
   41b9d:	55                   	push   %rbp
   41b9e:	48 89 e5             	mov    %rsp,%rbp
   41ba1:	41 54                	push   %r12
   41ba3:	53                   	push   %rbx
   41ba4:	48 89 fb             	mov    %rdi,%rbx
   41ba7:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   41baa:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   41bae:	ba c0 00 00 00       	mov    $0xc0,%edx
   41bb3:	be 00 00 00 00       	mov    $0x0,%esi
   41bb8:	e8 b5 1b 00 00       	callq  43772 <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   41bbd:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   41bc4:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   41bc8:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   41bcf:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   41bd3:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   41bda:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   41bde:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   41be5:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   41be9:	44 89 e0             	mov    %r12d,%eax
   41bec:	83 e0 01             	and    $0x1,%eax
    p->regs.reg_rflags = EFLAGS_IF;
   41bef:	83 f8 01             	cmp    $0x1,%eax
   41bf2:	48 19 c0             	sbb    %rax,%rax
   41bf5:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   41bfb:	48 05 00 32 00 00    	add    $0x3200,%rax
   41c01:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   41c08:	41 f6 c4 02          	test   $0x2,%r12b
   41c0c:	74 0b                	je     41c19 <init_process(proc*, int)+0x80>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   41c0e:	48 81 a3 b8 00 00 00 	andq   $0xfffffffffffffdff,0xb8(%rbx)
   41c15:	ff fd ff ff 
}
   41c19:	5b                   	pop    %rbx
   41c1a:	41 5c                	pop    %r12
   41c1c:	5d                   	pop    %rbp
   41c1d:	c3                   	retq   

0000000000041c1e <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   41c1e:	f3 0f 1e fa          	endbr64 
        cpos = 0;
   41c22:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   41c28:	b8 00 00 00 00       	mov    $0x0,%eax
   41c2d:	0f 43 f8             	cmovae %eax,%edi
   41c30:	be d4 03 00 00       	mov    $0x3d4,%esi
   41c35:	b8 0e 00 00 00       	mov    $0xe,%eax
   41c3a:	89 f2                	mov    %esi,%edx
   41c3c:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   41c3d:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   41c43:	85 ff                	test   %edi,%edi
   41c45:	0f 49 c7             	cmovns %edi,%eax
   41c48:	c1 f8 08             	sar    $0x8,%eax
   41c4b:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   41c50:	89 ca                	mov    %ecx,%edx
   41c52:	ee                   	out    %al,(%dx)
   41c53:	b8 0f 00 00 00       	mov    $0xf,%eax
   41c58:	89 f2                	mov    %esi,%edx
   41c5a:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   41c5b:	89 fa                	mov    %edi,%edx
   41c5d:	c1 fa 1f             	sar    $0x1f,%edx
   41c60:	c1 ea 18             	shr    $0x18,%edx
   41c63:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   41c66:	0f b6 c0             	movzbl %al,%eax
   41c69:	29 d0                	sub    %edx,%eax
   41c6b:	89 ca                	mov    %ecx,%edx
   41c6d:	ee                   	out    %al,(%dx)
}
   41c6e:	c3                   	retq   

0000000000041c6f <keyboard_readc()>:
int keyboard_readc() {
   41c6f:	f3 0f 1e fa          	endbr64 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   41c73:	ba 64 00 00 00       	mov    $0x64,%edx
   41c78:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   41c79:	a8 01                	test   $0x1,%al
   41c7b:	0f 84 1d 01 00 00    	je     41d9e <keyboard_readc()+0x12f>
   41c81:	ba 60 00 00 00       	mov    $0x60,%edx
   41c86:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   41c87:	0f b6 15 7a 73 01 00 	movzbl 0x1737a(%rip),%edx        # 59008 <keyboard_readc()::last_escape>
    last_escape = 0;
   41c8e:	c6 05 73 73 01 00 00 	movb   $0x0,0x17373(%rip)        # 59008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   41c95:	3c e0                	cmp    $0xe0,%al
   41c97:	74 2a                	je     41cc3 <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   41c99:	84 c0                	test   %al,%al
   41c9b:	78 33                	js     41cd0 <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   41c9d:	09 d0                	or     %edx,%eax
   41c9f:	0f b6 c0             	movzbl %al,%eax
   41ca2:	0f b6 80 a0 49 04 00 	movzbl 0x449a0(%rax),%eax
    if (ch >= 'a' && ch <= 'z') {
   41ca9:	89 c1                	mov    %eax,%ecx
   41cab:	8d 50 9f             	lea    -0x61(%rax),%edx
   41cae:	83 fa 19             	cmp    $0x19,%edx
   41cb1:	77 73                	ja     41d26 <keyboard_readc()+0xb7>
        if (modifiers & MOD_CONTROL) {
   41cb3:	0f b6 15 4f 73 01 00 	movzbl 0x1734f(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   41cba:	f6 c2 02             	test   $0x2,%dl
   41cbd:	74 4d                	je     41d0c <keyboard_readc()+0x9d>
            ch -= 0x60;
   41cbf:	83 e8 60             	sub    $0x60,%eax
   41cc2:	c3                   	retq   
        last_escape = 0x80;
   41cc3:	c6 05 3e 73 01 00 80 	movb   $0x80,0x1733e(%rip)        # 59008 <keyboard_readc()::last_escape>
        return 0;
   41cca:	b8 00 00 00 00       	mov    $0x0,%eax
   41ccf:	c3                   	retq   
        int ch = keymap[(data & 0x7F) | escape];
   41cd0:	83 e0 7f             	and    $0x7f,%eax
   41cd3:	09 d0                	or     %edx,%eax
   41cd5:	0f b6 c0             	movzbl %al,%eax
   41cd8:	0f b6 88 a0 49 04 00 	movzbl 0x449a0(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41cdf:	0f b6 d1             	movzbl %cl,%edx
   41ce2:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   41ce8:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   41ced:	83 fa 02             	cmp    $0x2,%edx
   41cf0:	0f 87 ad 00 00 00    	ja     41da3 <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   41cf6:	83 c1 06             	add    $0x6,%ecx
   41cf9:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   41cfe:	d3 c0                	rol    %cl,%eax
   41d00:	20 05 03 73 01 00    	and    %al,0x17303(%rip)        # 59009 <keyboard_readc()::modifiers>
        return 0;
   41d06:	b8 00 00 00 00       	mov    $0x0,%eax
   41d0b:	c3                   	retq   
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   41d0c:	89 d1                	mov    %edx,%ecx
   41d0e:	83 f1 01             	xor    $0x1,%ecx
   41d11:	83 e1 01             	and    $0x1,%ecx
   41d14:	c0 ea 03             	shr    $0x3,%dl
   41d17:	83 f2 01             	xor    $0x1,%edx
   41d1a:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   41d1d:	8d 70 e0             	lea    -0x20(%rax),%esi
   41d20:	38 d1                	cmp    %dl,%cl
   41d22:	0f 45 c6             	cmovne %esi,%eax
   41d25:	c3                   	retq   
    } else if (ch >= KEY_CAPSLOCK) {
   41d26:	3d fc 00 00 00       	cmp    $0xfc,%eax
   41d2b:	7e 19                	jle    41d46 <keyboard_readc()+0xd7>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   41d2d:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41d33:	ba 01 00 00 00       	mov    $0x1,%edx
   41d38:	d3 e2                	shl    %cl,%edx
   41d3a:	30 15 c9 72 01 00    	xor    %dl,0x172c9(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   41d40:	b8 00 00 00 00       	mov    $0x0,%eax
   41d45:	c3                   	retq   
    } else if (ch >= KEY_SHIFT) {
   41d46:	3d f9 00 00 00       	cmp    $0xf9,%eax
   41d4b:	7e 19                	jle    41d66 <keyboard_readc()+0xf7>
        modifiers |= 1 << (ch - KEY_SHIFT);
   41d4d:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   41d53:	ba 01 00 00 00       	mov    $0x1,%edx
   41d58:	d3 e2                	shl    %cl,%edx
   41d5a:	08 15 a9 72 01 00    	or     %dl,0x172a9(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   41d60:	b8 00 00 00 00       	mov    $0x0,%eax
   41d65:	c3                   	retq   
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   41d66:	83 c1 80             	add    $0xffffff80,%ecx
   41d69:	83 f9 15             	cmp    $0x15,%ecx
   41d6c:	77 18                	ja     41d86 <keyboard_readc()+0x117>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   41d6e:	0f b6 15 94 72 01 00 	movzbl 0x17294(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   41d75:	83 e2 03             	and    $0x3,%edx
   41d78:	83 c0 80             	add    $0xffffff80,%eax
   41d7b:	48 98                	cltq   
   41d7d:	0f b6 84 82 40 49 04 	movzbl 0x44940(%rdx,%rax,4),%eax
   41d84:	00 
   41d85:	c3                   	retq   
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   41d86:	83 f8 7f             	cmp    $0x7f,%eax
   41d89:	7f 18                	jg     41da3 <keyboard_readc()+0x134>
   41d8b:	0f b6 15 77 72 01 00 	movzbl 0x17277(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   41d92:	83 e2 02             	and    $0x2,%edx
        ch = 0;
   41d95:	ba 00 00 00 00       	mov    $0x0,%edx
   41d9a:	0f 45 c2             	cmovne %edx,%eax
   41d9d:	c3                   	retq   
        return -1;
   41d9e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   41da3:	c3                   	retq   

0000000000041da4 <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   41da4:	f3 0f 1e fa          	endbr64 
   41da8:	55                   	push   %rbp
   41da9:	48 89 e5             	mov    %rsp,%rbp
   41dac:	41 55                	push   %r13
   41dae:	41 54                	push   %r12
   41db0:	53                   	push   %rbx
   41db1:	48 89 d3             	mov    %rdx,%rbx
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   41db4:	48 83 3d 84 42 01 00 	cmpq   $0x0,0x14284(%rip)        # 56040 <kernel_pagetable+0x2040>
   41dbb:	00 
   41dbc:	75 0b                	jne    41dc9 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x25>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   41dbe:	48 c7 05 77 42 01 00 	movq   $0x1000083,0x14277(%rip)        # 56040 <kernel_pagetable+0x2040>
   41dc5:	83 00 00 01 
    size_t r = symtab.nsym;
   41dc9:	48 8b 15 d8 42 00 00 	mov    0x42d8(%rip),%rdx        # 460a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   41dd0:	4c 8b 1d c9 42 00 00 	mov    0x42c9(%rip),%r11        # 460a0 <symtab>
    size_t r = symtab.nsym;
   41dd7:	49 89 d2             	mov    %rdx,%r10
    size_t l = 0;
   41dda:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   41de0:	eb 17                	jmp    41df9 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   41de2:	4c 8d 60 01          	lea    0x1(%rax),%r12
                ? addr < sym.st_value + sym.st_size
   41de6:	49 39 d4             	cmp    %rdx,%r12
   41de9:	74 47                	je     41e32 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   41deb:	48 39 79 20          	cmp    %rdi,0x20(%rcx)
   41def:	77 41                	ja     41e32 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
        } else if (symtab.sym[m].st_value < addr) {
   41df1:	49 39 f8             	cmp    %rdi,%r8
   41df4:	72 6d                	jb     41e63 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xbf>
        size_t m = l + ((r - l) >> 1);
   41df6:	49 89 c2             	mov    %rax,%r10
    while (l < r) {
   41df9:	4d 39 d1             	cmp    %r10,%r9
   41dfc:	73 6b                	jae    41e69 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc5>
        size_t m = l + ((r - l) >> 1);
   41dfe:	4c 89 d0             	mov    %r10,%rax
   41e01:	4c 29 c8             	sub    %r9,%rax
   41e04:	48 d1 e8             	shr    %rax
   41e07:	4c 01 c8             	add    %r9,%rax
        auto& sym = symtab.sym[m];
   41e0a:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   41e0e:	48 c1 e1 03          	shl    $0x3,%rcx
   41e12:	49 89 cd             	mov    %rcx,%r13
   41e15:	4c 01 d9             	add    %r11,%rcx
        if (sym.st_value <= addr
   41e18:	4c 8b 41 08          	mov    0x8(%rcx),%r8
   41e1c:	49 39 f8             	cmp    %rdi,%r8
   41e1f:	77 d0                	ja     41df1 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            && (sym.st_size != 0
   41e21:	4c 8b 61 10          	mov    0x10(%rcx),%r12
        if (sym.st_value <= addr
   41e25:	4d 85 e4             	test   %r12,%r12
   41e28:	74 b8                	je     41de2 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x3e>
                ? addr < sym.st_value + sym.st_size
   41e2a:	4d 01 c4             	add    %r8,%r12
            && (sym.st_size != 0
   41e2d:	49 39 fc             	cmp    %rdi,%r12
   41e30:	76 bf                	jbe    41df1 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            if (name) {
   41e32:	48 85 f6             	test   %rsi,%rsi
   41e35:	74 0c                	je     41e43 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x9f>
                *name = symtab.strtab + symtab.sym[m].st_name;
   41e37:	8b 01                	mov    (%rcx),%eax
   41e39:	48 03 05 70 42 00 00 	add    0x4270(%rip),%rax        # 460b0 <symtab+0x10>
   41e40:	48 89 06             	mov    %rax,(%rsi)
            return true;
   41e43:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   41e48:	48 85 db             	test   %rbx,%rbx
   41e4b:	74 21                	je     41e6e <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
                *start = symtab.sym[m].st_value;
   41e4d:	48 8b 05 4c 42 00 00 	mov    0x424c(%rip),%rax        # 460a0 <symtab>
   41e54:	4a 8b 44 28 08       	mov    0x8(%rax,%r13,1),%rax
   41e59:	48 89 03             	mov    %rax,(%rbx)
            return true;
   41e5c:	b8 01 00 00 00       	mov    $0x1,%eax
   41e61:	eb 0b                	jmp    41e6e <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
            l = m + 1;
   41e63:	4c 8d 48 01          	lea    0x1(%rax),%r9
   41e67:	eb 90                	jmp    41df9 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
    return false;
   41e69:	b8 00 00 00 00       	mov    $0x0,%eax
}
   41e6e:	5b                   	pop    %rbx
   41e6f:	41 5c                	pop    %r12
   41e71:	41 5d                	pop    %r13
   41e73:	5d                   	pop    %rbp
   41e74:	c3                   	retq   

0000000000041e75 <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   41e75:	f3 0f 1e fa          	endbr64 
   41e79:	55                   	push   %rbp
   41e7a:	48 89 e5             	mov    %rsp,%rbp
   41e7d:	48 83 ec 10          	sub    $0x10,%rsp
   41e81:	48 89 fa             	mov    %rdi,%rdx
   41e84:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   41e87:	48 c7 45 f8 30 49 04 	movq   $0x44930,-0x8(%rbp)
   41e8e:	00 
    p.vprintf(0, format, val);
   41e8f:	be 00 00 00 00       	mov    $0x0,%esi
   41e94:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   41e98:	e8 b3 19 00 00       	callq  43850 <printer::vprintf(int, char const*, __va_list_tag*)>
}
   41e9d:	c9                   	leaveq 
   41e9e:	c3                   	retq   

0000000000041e9f <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   41e9f:	f3 0f 1e fa          	endbr64 
   41ea3:	55                   	push   %rbp
   41ea4:	48 89 e5             	mov    %rsp,%rbp
   41ea7:	48 83 ec 50          	sub    $0x50,%rsp
   41eab:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   41eaf:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   41eb3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41eb7:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41ebb:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41ebf:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   41ec6:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41eca:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41ece:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41ed2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   41ed6:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   41eda:	e8 96 ff ff ff       	callq  41e75 <log_vprintf(char const*, __va_list_tag*)>
}
   41edf:	c9                   	leaveq 
   41ee0:	c3                   	retq   

0000000000041ee1 <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   41ee1:	f3 0f 1e fa          	endbr64 
   41ee5:	55                   	push   %rbp
   41ee6:	48 89 e5             	mov    %rsp,%rbp
   41ee9:	41 56                	push   %r14
   41eeb:	41 55                	push   %r13
   41eed:	41 54                	push   %r12
   41eef:	53                   	push   %rbx
   41ef0:	48 83 ec 20          	sub    $0x20,%rsp
   41ef4:	41 89 fd             	mov    %edi,%r13d
   41ef7:	41 89 f6             	mov    %esi,%r14d
   41efa:	49 89 d4             	mov    %rdx,%r12
   41efd:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   41f00:	48 8b 01             	mov    (%rcx),%rax
   41f03:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   41f07:	48 8b 41 08          	mov    0x8(%rcx),%rax
   41f0b:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   41f0f:	48 8b 41 10          	mov    0x10(%rcx),%rax
   41f13:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    log_vprintf(format, val2);
   41f17:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   41f1b:	48 89 d7             	mov    %rdx,%rdi
   41f1e:	e8 52 ff ff ff       	callq  41e75 <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   41f23:	48 89 d9             	mov    %rbx,%rcx
   41f26:	4c 89 e2             	mov    %r12,%rdx
   41f29:	44 89 f6             	mov    %r14d,%esi
   41f2c:	44 89 ef             	mov    %r13d,%edi
   41f2f:	e8 da 22 00 00       	callq  4420e <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   41f34:	48 83 c4 20          	add    $0x20,%rsp
   41f38:	5b                   	pop    %rbx
   41f39:	41 5c                	pop    %r12
   41f3b:	41 5d                	pop    %r13
   41f3d:	41 5e                	pop    %r14
   41f3f:	5d                   	pop    %rbp
   41f40:	c3                   	retq   

0000000000041f41 <error_printf(int, int, char const*, ...)>:
int error_printf(int cpos, int color, const char* format, ...) {
   41f41:	f3 0f 1e fa          	endbr64 
   41f45:	55                   	push   %rbp
   41f46:	48 89 e5             	mov    %rsp,%rbp
   41f49:	48 83 ec 50          	sub    $0x50,%rsp
   41f4d:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41f51:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41f55:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41f59:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   41f60:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41f64:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41f68:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41f6c:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   41f70:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   41f74:	e8 68 ff ff ff       	callq  41ee1 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   41f79:	c9                   	leaveq 
   41f7a:	c3                   	retq   

0000000000041f7b <error_printf(char const*, ...)>:
void error_printf(const char* format, ...) {
   41f7b:	f3 0f 1e fa          	endbr64 
   41f7f:	55                   	push   %rbp
   41f80:	48 89 e5             	mov    %rsp,%rbp
   41f83:	48 83 ec 50          	sub    $0x50,%rsp
   41f87:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   41f8b:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   41f8f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   41f93:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   41f97:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   41f9b:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   41fa2:	48 8d 45 10          	lea    0x10(%rbp),%rax
   41fa6:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41faa:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   41fae:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   41fb2:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   41fb6:	48 89 fa             	mov    %rdi,%rdx
   41fb9:	be 00 c0 00 00       	mov    $0xc000,%esi
   41fbe:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   41fc3:	e8 19 ff ff ff       	callq  41ee1 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   41fc8:	c9                   	leaveq 
   41fc9:	c3                   	retq   

0000000000041fca <assert_fail(char const*, int, char const*)>:
void assert_fail(const char* file, int line, const char* msg) {
   41fca:	f3 0f 1e fa          	endbr64 
   41fce:	55                   	push   %rbp
   41fcf:	48 89 e5             	mov    %rsp,%rbp
   41fd2:	41 57                	push   %r15
   41fd4:	41 56                	push   %r14
   41fd6:	41 55                	push   %r13
   41fd8:	41 54                	push   %r12
   41fda:	53                   	push   %rbx
   41fdb:	48 83 ec 18          	sub    $0x18,%rsp
   41fdf:	48 89 d1             	mov    %rdx,%rcx
    cursorpos = CPOS(23, 0);
   41fe2:	c7 05 10 70 07 00 30 	movl   $0x730,0x77010(%rip)        # b8ffc <cursorpos>
   41fe9:	07 00 00 
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   41fec:	89 f2                	mov    %esi,%edx
   41fee:	48 89 fe             	mov    %rdi,%rsi
   41ff1:	bf 18 46 04 00       	mov    $0x44618,%edi
   41ff6:	b0 00                	mov    $0x0,%al
   41ff8:	e8 7e ff ff ff       	callq  41f7b <error_printf(char const*, ...)>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   41ffd:	48 89 e0             	mov    %rsp,%rax
   42000:	48 89 c2             	mov    %rax,%rdx
   42003:	4c 8d a8 ff 0f 00 00 	lea    0xfff(%rax),%r13
   4200a:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    asm volatile("movq %%rbp, %0" : "=r" (x));
   42011:	48 89 eb             	mov    %rbp,%rbx
    int frame = 1;
   42014:	41 bc 01 00 00 00    	mov    $0x1,%r12d
        return rbp_ >= rsp_ && stack_top_ - rbp_ >= 16;
   4201a:	48 39 da             	cmp    %rbx,%rdx
   4201d:	77 4a                	ja     42069 <assert_fail(char const*, int, char const*)+0x9f>
   4201f:	4c 89 e8             	mov    %r13,%rax
   42022:	48 29 d8             	sub    %rbx,%rax
   42025:	48 83 f8 0f          	cmp    $0xf,%rax
   42029:	76 3e                	jbe    42069 <assert_fail(char const*, int, char const*)+0x9f>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   4202b:	49 89 df             	mov    %rbx,%r15
        return rbpx[1];
   4202e:	4c 8b 73 08          	mov    0x8(%rbx),%r14
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   42032:	ba 00 00 00 00       	mov    $0x0,%edx
   42037:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   4203b:	4c 89 f7             	mov    %r14,%rdi
   4203e:	e8 61 fd ff ff       	callq  41da4 <lookup_symbol(unsigned long, char const**, unsigned long*)>
   42043:	84 c0                	test   %al,%al
   42045:	74 29                	je     42070 <assert_fail(char const*, int, char const*)+0xa6>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   42047:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   4204b:	4c 89 f2             	mov    %r14,%rdx
   4204e:	44 89 e6             	mov    %r12d,%esi
   42051:	bf fb 47 04 00       	mov    $0x447fb,%edi
   42056:	b0 00                	mov    $0x0,%al
   42058:	e8 1e ff ff ff       	callq  41f7b <error_printf(char const*, ...)>
        rsp_ = rbp_ + 16;
   4205d:	48 8d 53 10          	lea    0x10(%rbx),%rdx
        rbp_ = rbpx[0];
   42061:	49 8b 1f             	mov    (%r15),%rbx
    for (backtracer bt(rdrbp(), rsp, round_up(rsp, PAGESIZE));
   42064:	41 ff c4             	inc    %r12d
   42067:	eb b1                	jmp    4201a <assert_fail(char const*, int, char const*)+0x50>
        check_keyboard();
   42069:	e8 25 08 00 00       	callq  42893 <check_keyboard()>
    while (true) {
   4206e:	eb f9                	jmp    42069 <assert_fail(char const*, int, char const*)+0x9f>
        } else if (ret_rip) {
   42070:	4d 85 f6             	test   %r14,%r14
   42073:	74 e8                	je     4205d <assert_fail(char const*, int, char const*)+0x93>
            error_printf("  #%d  %p\n", frame, ret_rip);
   42075:	4c 89 f2             	mov    %r14,%rdx
   42078:	44 89 e6             	mov    %r12d,%esi
   4207b:	bf 0e 48 04 00       	mov    $0x4480e,%edi
   42080:	b0 00                	mov    $0x0,%al
   42082:	e8 f4 fe ff ff       	callq  41f7b <error_printf(char const*, ...)>
   42087:	eb d4                	jmp    4205d <assert_fail(char const*, int, char const*)+0x93>

0000000000042089 <init_hardware()>:
void init_hardware() {
   42089:	f3 0f 1e fa          	endbr64 
   4208d:	55                   	push   %rbp
   4208e:	48 89 e5             	mov    %rsp,%rbp
   42091:	53                   	push   %rbx
   42092:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   42096:	bf 00 00 00 00       	mov    $0x0,%edi
   4209b:	e8 fd f9 ff ff       	callq  41a9d <stash_kernel_data(bool)>
    kernel_gdt_segments[0] = 0;
   420a0:	48 c7 05 55 0f 01 00 	movq   $0x0,0x10f55(%rip)        # 53000 <kernel_gdt_segments>
   420a7:	00 00 00 00 
    *segment = type
   420ab:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   420b2:	98 20 00 
   420b5:	48 89 05 4c 0f 01 00 	mov    %rax,0x10f4c(%rip)        # 53008 <kernel_gdt_segments+0x8>
   420bc:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   420c3:	92 00 00 
   420c6:	48 89 05 43 0f 01 00 	mov    %rax,0x10f43(%rip)        # 53010 <kernel_gdt_segments+0x10>
   420cd:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   420d4:	f8 20 00 
   420d7:	48 89 05 3a 0f 01 00 	mov    %rax,0x10f3a(%rip)        # 53018 <kernel_gdt_segments+0x18>
   420de:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   420e5:	f2 00 00 
   420e8:	48 89 05 31 0f 01 00 	mov    %rax,0x10f31(%rip)        # 53020 <kernel_gdt_segments+0x20>
    set_sys_segment(&kernel_gdt_segments[SEGSEL_TASKSTATE >> 3],
   420ef:	ba 20 90 05 00       	mov    $0x59020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   420f4:	48 89 d0             	mov    %rdx,%rax
   420f7:	48 c1 e0 10          	shl    $0x10,%rax
   420fb:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   42102:	00 00 00 
   42105:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   42108:	48 89 d1             	mov    %rdx,%rcx
   4210b:	48 c1 e1 20          	shl    $0x20,%rcx
   4210f:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   42116:	00 00 ff 
   42119:	48 21 f1             	and    %rsi,%rcx
   4211c:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   4211f:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   42126:	89 00 00 
   42129:	48 09 c8             	or     %rcx,%rax
   4212c:	48 89 05 f5 0e 01 00 	mov    %rax,0x10ef5(%rip)        # 53028 <kernel_gdt_segments+0x28>
    segment[1] = addr >> 32;
   42133:	48 c1 ea 20          	shr    $0x20,%rdx
   42137:	48 89 15 f2 0e 01 00 	mov    %rdx,0x10ef2(%rip)        # 53030 <kernel_gdt_segments+0x30>
    gdt.limit = (sizeof(uint64_t) * 3) - 1;
   4213e:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42144:	48 c7 45 c8 00 30 05 	movq   $0x53000,-0x38(%rbp)
   4214b:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   4214c:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   42150:	ba 00 50 00 00       	mov    $0x5000,%edx
   42155:	be 00 00 00 00       	mov    $0x0,%esi
   4215a:	bf 00 40 05 00       	mov    $0x54000,%edi
   4215f:	e8 0e 16 00 00       	callq  43772 <memset>
        (x86_64_pageentry_t) &kernel_pagetable[1] | PTE_P | PTE_W | PTE_U;
   42164:	b8 00 50 05 00       	mov    $0x55000,%eax
   42169:	48 83 c8 07          	or     $0x7,%rax
   4216d:	48 89 05 8c 1e 01 00 	mov    %rax,0x11e8c(%rip)        # 54000 <kernel_pagetable>
        (x86_64_pageentry_t) &kernel_pagetable[2] | PTE_P | PTE_W | PTE_U;
   42174:	b8 00 60 05 00       	mov    $0x56000,%eax
   42179:	48 83 c8 07          	or     $0x7,%rax
   4217d:	48 89 05 7c 2e 01 00 	mov    %rax,0x12e7c(%rip)        # 55000 <kernel_pagetable+0x1000>
        (x86_64_pageentry_t) &kernel_pagetable[3] | PTE_P | PTE_W | PTE_U;
   42184:	b8 00 70 05 00       	mov    $0x57000,%eax
   42189:	48 83 c8 07          	or     $0x7,%rax
   4218d:	48 89 05 6c 3e 01 00 	mov    %rax,0x13e6c(%rip)        # 56000 <kernel_pagetable+0x2000>
        (x86_64_pageentry_t) &kernel_pagetable[4] | PTE_P | PTE_W | PTE_U;
   42194:	b8 00 80 05 00       	mov    $0x58000,%eax
   42199:	48 83 c8 07          	or     $0x7,%rax
   4219d:	48 89 05 64 3e 01 00 	mov    %rax,0x13e64(%rip)        # 56008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   421a4:	48 c7 05 59 2e 01 00 	movq   $0x40000083,0x12e59(%rip)        # 55008 <kernel_pagetable+0x1008>
   421ab:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   421af:	b8 83 00 00 80       	mov    $0x80000083,%eax
   421b4:	48 89 05 55 2e 01 00 	mov    %rax,0x12e55(%rip)        # 55010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   421bb:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   421c2:	48 89 05 4f 2e 01 00 	mov    %rax,0x12e4f(%rip)        # 55018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   421c9:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   421d0:	00 
   421d1:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   421d8:	00 
   421d9:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   421e0:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   421e7:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   421ee:	00 
    real_find(va);
   421ef:	be 00 00 00 00       	mov    $0x0,%esi
   421f4:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   421f8:	e8 67 f4 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   421fd:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42201:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42208:	76 72                	jbe    4227c <init_hardware()+0x1f3>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   4220a:	b8 00 40 05 00       	mov    $0x54000,%eax
   4220f:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   42212:	c7 05 e0 6d 07 00 f0 	movl   $0xf0,0x76de0(%rip)        # b8ffc <cursorpos>
   42219:	00 00 00 
   4221c:	ba d0 a9 04 00       	mov    $0x4a9d0,%edx
    for (int i = 0; i < 256; ++i) {
   42221:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42226:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   4222d:	00 ff ff 
   42230:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   42237:	60 00 00 
   4223a:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   42241:	8e 00 00 
   42244:	e9 b3 00 00 00       	jmpq   422fc <init_hardware()+0x273>
    int r = try_map(pa, perm);
   42249:	ba 07 00 00 00       	mov    $0x7,%edx
   4224e:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42252:	e8 11 f5 ff ff       	callq  41768 <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   42257:	85 c0                	test   %eax,%eax
   42259:	75 28                	jne    42283 <init_hardware()+0x1fa>
    return find(va_ + delta);
   4225b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   4225f:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   42266:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   4226a:	e8 f5 f3 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   4226f:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42273:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   4227a:	77 8e                	ja     4220a <init_hardware()+0x181>
        if (it.va() != 0) {
   4227c:	48 85 f6             	test   %rsi,%rsi
   4227f:	74 da                	je     4225b <init_hardware()+0x1d2>
   42281:	eb c6                	jmp    42249 <init_hardware()+0x1c0>
    assert(r == 0);
   42283:	ba 41 43 04 00       	mov    $0x44341,%edx
   42288:	be b0 00 00 00       	mov    $0xb0,%esi
   4228d:	bf 48 43 04 00       	mov    $0x44348,%edi
   42292:	e8 33 fd ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   42297:	ba 19 48 04 00       	mov    $0x44819,%edx
   4229c:	be b8 00 00 00       	mov    $0xb8,%esi
   422a1:	bf 31 48 04 00       	mov    $0x44831,%edi
   422a6:	e8 1f fd ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   422ab:	ba 40 46 04 00       	mov    $0x44640,%edx
   422b0:	be ba 00 00 00       	mov    $0xba,%esi
   422b5:	bf 31 48 04 00       	mov    $0x44831,%edi
   422ba:	e8 0b fd ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   422bf:	ba 68 46 04 00       	mov    $0x44668,%edx
   422c4:	be bb 00 00 00       	mov    $0xbb,%esi
   422c9:	bf 31 48 04 00       	mov    $0x44831,%edi
   422ce:	e8 f7 fc ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   422d3:	48 89 c1             	mov    %rax,%rcx
   422d6:	48 c1 e1 20          	shl    $0x20,%rcx
   422da:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   422dd:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   422e1:	4d 09 ca             	or     %r9,%r10
   422e4:	4c 09 d1             	or     %r10,%rcx
   422e7:	48 09 f9             	or     %rdi,%rcx
   422ea:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   422ed:	48 c1 e8 20          	shr    $0x20,%rax
   422f1:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   422f5:	83 c6 01             	add    $0x1,%esi
   422f8:	48 83 c2 10          	add    $0x10,%rdx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   422fc:	48 8b 02             	mov    (%rdx),%rax
        set_gate(&interrupt_descriptors[i], addr,
   422ff:	83 fe 03             	cmp    $0x3,%esi
   42302:	74 cf                	je     422d3 <init_hardware()+0x24a>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42304:	48 89 c1             	mov    %rax,%rcx
   42307:	48 c1 e1 20          	shl    $0x20,%rcx
   4230b:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   4230e:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42312:	4c 09 d1             	or     %r10,%rcx
   42315:	48 09 f9             	or     %rdi,%rcx
   42318:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   4231b:	48 c1 e8 20          	shr    $0x20,%rax
   4231f:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   42323:	83 c6 01             	add    $0x1,%esi
   42326:	48 83 c2 10          	add    $0x10,%rdx
   4232a:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   42330:	75 ca                	jne    422fc <init_hardware()+0x273>
__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
                 : "=a" (ret.eax), "=b" (ret.ebx),
                   "=c" (ret.ecx), "=d" (ret.edx)
                 : "a" (leaf));
   42332:	b8 01 00 00 00       	mov    $0x1,%eax
   42337:	0f a2                	cpuid  
    assert(cpuid(1).edx & (1 << 9));
   42339:	f6 c6 02             	test   $0x2,%dh
   4233c:	0f 84 55 ff ff ff    	je     42297 <init_hardware()+0x20e>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   42342:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   42347:	0f 32                	rdmsr  
    return low | (high << 32);
   42349:	48 c1 e2 20          	shl    $0x20,%rdx
   4234d:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42350:	f6 c4 08             	test   $0x8,%ah
   42353:	0f 84 52 ff ff ff    	je     422ab <init_hardware()+0x222>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42359:	48 b9 00 f0 ff ff ff 	movabs $0xfffffffff000,%rcx
   42360:	ff 00 00 
   42363:	48 21 ca             	and    %rcx,%rdx
   42366:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   4236b:	48 39 c2             	cmp    %rax,%rdx
   4236e:	0f 85 4b ff ff ff    	jne    422bf <init_hardware()+0x236>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42374:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   42379:	ba 21 00 00 00       	mov    $0x21,%edx
   4237e:	ee                   	out    %al,(%dx)
   4237f:	ba a1 00 00 00       	mov    $0xa1,%edx
   42384:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42385:	b8 b0 53 04 00       	mov    $0x453b0,%eax
   4238a:	48 3d b0 53 04 00    	cmp    $0x453b0,%rax
   42390:	74 12                	je     423a4 <init_hardware()+0x31b>
   42392:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   42395:	ff 13                	callq  *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42397:	48 83 c3 08          	add    $0x8,%rbx
   4239b:	48 81 fb b0 53 04 00 	cmp    $0x453b0,%rbx
   423a2:	75 f1                	jne    42395 <init_hardware()+0x30c>
    memset(&kernel_taskstate, 0, sizeof(kernel_taskstate));
   423a4:	ba 68 00 00 00       	mov    $0x68,%edx
   423a9:	be 00 00 00 00       	mov    $0x0,%esi
   423ae:	bf 20 90 05 00       	mov    $0x59020,%edi
   423b3:	e8 ba 13 00 00       	callq  43772 <memset>
    kernel_taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   423b8:	48 c7 05 61 6c 01 00 	movq   $0x80000,0x16c61(%rip)        # 59024 <kernel_taskstate+0x4>
   423bf:	00 00 08 00 
    gdt.limit = sizeof(kernel_gdt_segments) - 1;
   423c3:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   423c9:	48 c7 45 c8 00 30 05 	movq   $0x53000,-0x38(%rbp)
   423d0:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   423d1:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   423d7:	48 c7 45 d8 d0 a9 04 	movq   $0x4a9d0,-0x28(%rbp)
   423de:	00 
                 : "memory", "cc");
   423df:	b8 28 00 00 00       	mov    $0x28,%eax
   423e4:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   423e8:	0f 00 d8             	ltr    %ax
   423eb:	0f 01 5d d6          	lidt   -0x2a(%rbp)
                 : : "a" ((uint16_t) SEGSEL_KERN_DATA));
   423ef:	b8 10 00 00 00       	mov    $0x10,%eax
   423f4:	8e e0                	mov    %eax,%fs
   423f6:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   423f8:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   423fb:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   42400:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42403:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   42408:	b8 00 00 00 00       	mov    $0x0,%eax
   4240d:	ba 08 00 18 00       	mov    $0x180008,%edx
   42412:	0f 30                	wrmsr  
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42414:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   42419:	48 89 c2             	mov    %rax,%rdx
   4241c:	48 c1 ea 20          	shr    $0x20,%rdx
   42420:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   42425:	0f 30                	wrmsr  
   42427:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   4242c:	b8 00 77 04 00       	mov    $0x47700,%eax
   42431:	ba 00 00 00 00       	mov    $0x0,%edx
   42436:	0f 30                	wrmsr  
    return reg_[reg].v;
   42438:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   4243d:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   42443:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   42449:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   4244f:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   42455:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   4245c:	00 00 00 
   4245f:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   42466:	00 02 00 
   42469:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   42470:	00 00 00 
   42473:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   4247a:	00 01 00 
   4247d:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   42484:	00 01 00 
   42487:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   4248e:	00 00 00 
   42491:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   42498:	00 00 00 
    return reg_[reg].v;
   4249b:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   424a1:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   424a8:	00 00 00 
}
   424ab:	48 83 c4 38          	add    $0x38,%rsp
   424af:	5b                   	pop    %rbx
   424b0:	5d                   	pop    %rbp
   424b1:	c3                   	retq   

00000000000424b2 <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   424b2:	f3 0f 1e fa          	endbr64 
   424b6:	55                   	push   %rbp
   424b7:	48 89 e5             	mov    %rsp,%rbp
   424ba:	53                   	push   %rbx
   424bb:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   424bf:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   424c5:	0f 85 85 01 00 00    	jne    42650 <check_pagetable(x86_64_pagetable*)+0x19e>
   424cb:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   424ce:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   424d2:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   424d6:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   424dd:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   424e4:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   424eb:	00 
    real_find(va);
   424ec:	be 72 0a 04 00       	mov    $0x40a72,%esi
   424f1:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   424f5:	e8 6a f1 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   424fa:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   424fe:	48 8b 30             	mov    (%rax),%rsi
   42501:	40 f6 c6 01          	test   $0x1,%sil
   42505:	0f 84 6e 01 00 00    	je     42679 <check_pagetable(x86_64_pagetable*)+0x1c7>
        if (level_ > 0) {
   4250b:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   4250e:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42515:	ff 0f 00 
   42518:	48 21 f0             	and    %rsi,%rax
   4251b:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   4251e:	85 c9                	test   %ecx,%ecx
   42520:	0f 8e 3e 01 00 00    	jle    42664 <check_pagetable(x86_64_pagetable*)+0x1b2>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42526:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4252a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42531:	48 d3 e0             	shl    %cl,%rax
   42534:	48 f7 d0             	not    %rax
   42537:	48 23 45 e8          	and    -0x18(%rbp),%rax
   4253b:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   4253e:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   42543:	48 39 c2             	cmp    %rax,%rdx
   42546:	0f 85 2d 01 00 00    	jne    42679 <check_pagetable(x86_64_pagetable*)+0x1c7>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   4254c:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   42553:	00 
   42554:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   4255b:	00 
   4255c:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42563:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   4256a:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42571:	00 
    real_find(va);
   42572:	48 89 de             	mov    %rbx,%rsi
   42575:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42579:	e8 e6 f0 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   4257e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42582:	48 8b 30             	mov    (%rax),%rsi
   42585:	40 f6 c6 01          	test   $0x1,%sil
   42589:	0f 84 13 01 00 00    	je     426a2 <check_pagetable(x86_64_pagetable*)+0x1f0>
        if (level_ > 0) {
   4258f:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42592:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42599:	ff 0f 00 
   4259c:	48 21 f0             	and    %rsi,%rax
   4259f:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   425a2:	85 c9                	test   %ecx,%ecx
   425a4:	0f 8e e3 00 00 00    	jle    4268d <check_pagetable(x86_64_pagetable*)+0x1db>
   425aa:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   425ae:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   425b5:	48 d3 e0             	shl    %cl,%rax
   425b8:	48 f7 d0             	not    %rax
   425bb:	48 23 45 e8          	and    -0x18(%rbp),%rax
   425bf:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   425c2:	48 39 c3             	cmp    %rax,%rbx
   425c5:	0f 85 d7 00 00 00    	jne    426a2 <check_pagetable(x86_64_pagetable*)+0x1f0>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   425cb:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   425cf:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   425d3:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   425da:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   425e1:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   425e8:	00 
    real_find(va);
   425e9:	be 00 40 05 00       	mov    $0x54000,%esi
   425ee:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   425f2:	e8 6d f0 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   425f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   425fb:	48 8b 30             	mov    (%rax),%rsi
   425fe:	40 f6 c6 01          	test   $0x1,%sil
   42602:	0f 84 c3 00 00 00    	je     426cb <check_pagetable(x86_64_pagetable*)+0x219>
        if (level_ > 0) {
   42608:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   4260b:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42612:	ff 0f 00 
   42615:	48 21 f0             	and    %rsi,%rax
   42618:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   4261b:	85 c9                	test   %ecx,%ecx
   4261d:	0f 8e 93 00 00 00    	jle    426b6 <check_pagetable(x86_64_pagetable*)+0x204>
   42623:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42627:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   4262e:	48 d3 e0             	shl    %cl,%rax
   42631:	48 f7 d0             	not    %rax
   42634:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42638:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   4263b:	ba 00 40 05 00       	mov    $0x54000,%edx
   42640:	48 39 c2             	cmp    %rax,%rdx
   42643:	0f 85 82 00 00 00    	jne    426cb <check_pagetable(x86_64_pagetable*)+0x219>
}
   42649:	48 83 c4 28          	add    $0x28,%rsp
   4264d:	5b                   	pop    %rbx
   4264e:	5d                   	pop    %rbp
   4264f:	c3                   	retq   
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42650:	ba a0 46 04 00       	mov    $0x446a0,%edx
   42655:	be 18 01 00 00       	mov    $0x118,%esi
   4265a:	bf 31 48 04 00       	mov    $0x44831,%edi
   4265f:	e8 66 f9 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42664:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   4266b:	ff 0f 00 
   4266e:	48 89 f2             	mov    %rsi,%rdx
   42671:	48 21 c2             	and    %rax,%rdx
   42674:	e9 ad fe ff ff       	jmpq   42526 <check_pagetable(x86_64_pagetable*)+0x74>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   42679:	ba d0 46 04 00       	mov    $0x446d0,%edx
   4267e:	be 19 01 00 00       	mov    $0x119,%esi
   42683:	bf 31 48 04 00       	mov    $0x44831,%edi
   42688:	e8 3d f9 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
   4268d:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42694:	ff 0f 00 
   42697:	48 89 f2             	mov    %rsi,%rdx
   4269a:	48 21 c2             	and    %rax,%rdx
   4269d:	e9 08 ff ff ff       	jmpq   425aa <check_pagetable(x86_64_pagetable*)+0xf8>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   426a2:	ba 28 47 04 00       	mov    $0x44728,%edx
   426a7:	be 1b 01 00 00       	mov    $0x11b,%esi
   426ac:	bf 31 48 04 00       	mov    $0x44831,%edi
   426b1:	e8 14 f9 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
   426b6:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   426bd:	ff 0f 00 
   426c0:	48 89 f2             	mov    %rsi,%rdx
   426c3:	48 21 c2             	and    %rax,%rdx
   426c6:	e9 58 ff ff ff       	jmpq   42623 <check_pagetable(x86_64_pagetable*)+0x171>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   426cb:	ba 78 47 04 00       	mov    $0x44778,%edx
   426d0:	be 1d 01 00 00       	mov    $0x11d,%esi
   426d5:	bf 31 48 04 00       	mov    $0x44831,%edi
   426da:	e8 eb f8 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
   426df:	90                   	nop

00000000000426e0 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   426e0:	f3 0f 1e fa          	endbr64 
   426e4:	55                   	push   %rbp
   426e5:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   426e8:	89 f0                	mov    %esi,%eax
   426ea:	83 c0 0c             	add    $0xc,%eax
   426ed:	78 23                	js     42712 <pcistate::next(int) const+0x32>
   426ef:	a8 03                	test   $0x3,%al
   426f1:	75 1f                	jne    42712 <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   426f3:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   426f8:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   426fd:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   426fe:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42703:	ed                   	in     (%dx),%eax
   42704:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42706:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   4270b:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   42710:	eb 51                	jmp    42763 <pcistate::next(int) const+0x83>
    assert(addr >= 0 && !(addr & 3));
   42712:	ba 61 48 04 00       	mov    $0x44861,%edx
   42717:	be 57 00 00 00       	mov    $0x57,%esi
   4271c:	bf 58 48 04 00       	mov    $0x44858,%edi
   42721:	e8 a4 f8 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   42726:	ba 7a 48 04 00       	mov    $0x4487a,%edx
   4272b:	be 4a 00 00 00       	mov    $0x4a,%esi
   42730:	bf 58 48 04 00       	mov    $0x44858,%edi
   42735:	e8 90 f8 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
            addr += make_addr(0, 0, 1);
   4273a:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   42740:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   42746:	7f 58                	jg     427a0 <pcistate::next(int) const+0xc0>
        x = readl(addr + config_lthb);
   42748:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   4274b:	40 f6 c6 03          	test   $0x3,%sil
   4274f:	75 37                	jne    42788 <pcistate::next(int) const+0xa8>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42751:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42756:	89 fa                	mov    %edi,%edx
   42758:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42759:	89 ca                	mov    %ecx,%edx
   4275b:	ed                   	in     (%dx),%eax
   4275c:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   4275e:	83 f8 ff             	cmp    $0xffffffff,%eax
   42761:	75 39                	jne    4279c <pcistate::next(int) const+0xbc>
    assert(addr >= 0 && addr < 0x1000000);
   42763:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   42769:	77 bb                	ja     42726 <pcistate::next(int) const+0x46>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   4276b:	f7 c6 00 07 00 00    	test   $0x700,%esi
   42771:	75 c7                	jne    4273a <pcistate::next(int) const+0x5a>
   42773:	83 fa ff             	cmp    $0xffffffff,%edx
   42776:	74 08                	je     42780 <pcistate::next(int) const+0xa0>
   42778:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   4277e:	75 ba                	jne    4273a <pcistate::next(int) const+0x5a>
            addr += make_addr(0, 1, 0);
   42780:	81 c6 00 08 00 00    	add    $0x800,%esi
   42786:	eb b8                	jmp    42740 <pcistate::next(int) const+0x60>
    assert(addr >= 0 && !(addr & 3));
   42788:	ba 61 48 04 00       	mov    $0x44861,%edx
   4278d:	be 57 00 00 00       	mov    $0x57,%esi
   42792:	bf 58 48 04 00       	mov    $0x44858,%edi
   42797:	e8 2e f8 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
   4279c:	89 f0                	mov    %esi,%eax
   4279e:	eb 05                	jmp    427a5 <pcistate::next(int) const+0xc5>
            return -1;
   427a0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   427a5:	5d                   	pop    %rbp
   427a6:	c3                   	retq   

00000000000427a7 <poweroff()>:
void poweroff() {
   427a7:	f3 0f 1e fa          	endbr64 
   427ab:	55                   	push   %rbp
   427ac:	48 89 e5             	mov    %rsp,%rbp
   427af:	53                   	push   %rbx
   427b0:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   427b4:	b8 00 00 00 80       	mov    $0x80000000,%eax
   427b9:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   427be:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   427bf:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   427c4:	89 c2                	mov    %eax,%edx
   427c6:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   427c7:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   427cc:	0f 84 ba 00 00 00    	je     4288c <poweroff()+0xe5>
   427d2:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   427d7:	0f 84 af 00 00 00    	je     4288c <poweroff()+0xe5>
   427dd:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   427e2:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   427e7:	bf 00 90 05 00       	mov    $0x59000,%edi
   427ec:	e8 ef fe ff ff       	callq  426e0 <pcistate::next(int) const>
   427f1:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   427f3:	85 c0                	test   %eax,%eax
   427f5:	78 52                	js     42849 <poweroff()+0xa2>
    assert(addr >= 0 && !(addr & 3));
   427f7:	40 f6 c6 03          	test   $0x3,%sil
   427fb:	75 67                	jne    42864 <poweroff()+0xbd>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   427fd:	89 f0                	mov    %esi,%eax
   427ff:	0d 00 00 00 80       	or     $0x80000000,%eax
   42804:	89 da                	mov    %ebx,%edx
   42806:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42807:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   4280c:	89 c2                	mov    %eax,%edx
   4280e:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   4280f:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42814:	74 07                	je     4281d <poweroff()+0x76>
   42816:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   4281b:	75 ca                	jne    427e7 <poweroff()+0x40>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   4281d:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42820:	40 f6 c6 03          	test   $0x3,%sil
   42824:	75 52                	jne    42878 <poweroff()+0xd1>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42826:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4282b:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42830:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42831:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42836:	ed                   	in     (%dx),%eax
   42837:	89 c2                	mov    %eax,%edx
   42839:	81 e2 c0 ff 00 00    	and    $0xffc0,%edx
        outw(pm_io_base + 4, 0x2000);
   4283f:	83 c2 04             	add    $0x4,%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   42842:	b8 00 20 00 00       	mov    $0x2000,%eax
   42847:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   42849:	ba 98 48 04 00       	mov    $0x44898,%edx
   4284e:	be 00 c0 00 00       	mov    $0xc000,%esi
   42853:	bf 80 07 00 00       	mov    $0x780,%edi
   42858:	b8 00 00 00 00       	mov    $0x0,%eax
   4285d:	e8 15 1a 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
    while (true) {
   42862:	eb fe                	jmp    42862 <poweroff()+0xbb>
    assert(addr >= 0 && !(addr & 3));
   42864:	ba 61 48 04 00       	mov    $0x44861,%edx
   42869:	be 57 00 00 00       	mov    $0x57,%esi
   4286e:	bf 58 48 04 00       	mov    $0x44858,%edi
   42873:	e8 52 f7 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
   42878:	ba 61 48 04 00       	mov    $0x44861,%edx
   4287d:	be 57 00 00 00       	mov    $0x57,%esi
   42882:	bf 58 48 04 00       	mov    $0x44858,%edi
   42887:	e8 3e f7 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   4288c:	b8 40 00 00 00       	mov    $0x40,%eax
   42891:	eb 93                	jmp    42826 <poweroff()+0x7f>

0000000000042893 <check_keyboard()>:
int check_keyboard() {
   42893:	f3 0f 1e fa          	endbr64 
   42897:	55                   	push   %rbp
   42898:	48 89 e5             	mov    %rsp,%rbp
   4289b:	41 54                	push   %r12
   4289d:	53                   	push   %rbx
   4289e:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   428a2:	e8 c8 f3 ff ff       	callq  41c6f <keyboard_readc()>
   428a7:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   428aa:	8d 40 9b             	lea    -0x65(%rax),%eax
   428ad:	83 f8 01             	cmp    $0x1,%eax
   428b0:	76 1b                	jbe    428cd <check_keyboard()+0x3a>
   428b2:	41 83 fc 61          	cmp    $0x61,%r12d
   428b6:	74 15                	je     428cd <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   428b8:	41 83 fc 03          	cmp    $0x3,%r12d
   428bc:	74 0a                	je     428c8 <check_keyboard()+0x35>
   428be:	41 83 fc 71          	cmp    $0x71,%r12d
   428c2:	0f 85 cd 00 00 00    	jne    42995 <check_keyboard()+0x102>
        poweroff();
   428c8:	e8 da fe ff ff       	callq  427a7 <poweroff()>
   428cd:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   428d2:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   428d8:	ba 00 20 00 00       	mov    $0x2000,%edx
   428dd:	be 00 00 00 00       	mov    $0x0,%esi
   428e2:	bf 00 10 00 00       	mov    $0x1000,%edi
   428e7:	e8 86 0e 00 00       	callq  43772 <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   428ec:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   428f3:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   428f8:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   428ff:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42904:	b8 00 10 00 00       	mov    $0x1000,%eax
   42909:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   4290c:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   42913:	b8 ab 48 04 00       	mov    $0x448ab,%eax
        if (c == 'a') {
   42918:	41 83 fc 61          	cmp    $0x61,%r12d
   4291c:	74 12                	je     42930 <check_keyboard()+0x9d>
            argument = "forkexit";
   4291e:	41 83 fc 65          	cmp    $0x65,%r12d
   42922:	b8 b6 48 04 00       	mov    $0x448b6,%eax
   42927:	ba bb 48 04 00       	mov    $0x448bb,%edx
   4292c:	48 0f 44 c2          	cmove  %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   42930:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   42935:	48 39 d0             	cmp    %rdx,%rax
   42938:	77 67                	ja     429a1 <check_keyboard()+0x10e>
        multiboot_info[4] = (uint32_t) argument_ptr;
   4293a:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   4293d:	bf 01 00 00 00       	mov    $0x1,%edi
   42942:	e8 56 f1 ff ff       	callq  41a9d <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   42947:	bb 98 90 05 00       	mov    $0x59098,%ebx
   4294c:	48 81 eb d0 b9 04 00 	sub    $0x4b9d0,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   42953:	ba d0 b9 04 00       	mov    $0x4b9d0,%edx
   42958:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   4295f:	be 00 60 04 01       	mov    $0x1046000,%esi
   42964:	48 81 ee d0 b9 04 00 	sub    $0x4b9d0,%rsi
        memcpy(&_data_start, data_stash, data_size);
   4296b:	bf 00 60 04 00       	mov    $0x46000,%edi
   42970:	e8 8c 0d 00 00       	callq  43701 <memcpy>
        memset(&_edata, 0, zero_size);
   42975:	48 89 da             	mov    %rbx,%rdx
   42978:	be 00 00 00 00       	mov    $0x0,%esi
   4297d:	bf d0 b9 04 00       	mov    $0x4b9d0,%edi
   42982:	e8 eb 0d 00 00       	callq  43772 <memset>
                     : : "b" (multiboot_info) : "memory");
   42987:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   4298b:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   42990:	e9 6b d6 ff ff       	jmpq   40000 <_kernel_start>
}
   42995:	44 89 e0             	mov    %r12d,%eax
   42998:	48 83 c4 20          	add    $0x20,%rsp
   4299c:	5b                   	pop    %rbx
   4299d:	41 5c                	pop    %r12
   4299f:	5d                   	pop    %rbp
   429a0:	c3                   	retq   
        assert(argument_ptr < 0x100000000L);
   429a1:	ba c4 48 04 00       	mov    $0x448c4,%edx
   429a6:	be f8 02 00 00       	mov    $0x2f8,%esi
   429ab:	bf 31 48 04 00       	mov    $0x44831,%edi
   429b0:	e8 15 f6 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>

00000000000429b5 <panic(char const*, ...)>:
void panic(const char* format, ...) {
   429b5:	f3 0f 1e fa          	endbr64 
   429b9:	55                   	push   %rbp
   429ba:	48 89 e5             	mov    %rsp,%rbp
   429bd:	53                   	push   %rbx
   429be:	48 83 ec 58          	sub    $0x58,%rsp
   429c2:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   429c6:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   429ca:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
   429ce:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
   429d2:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
    va_start(val, format);
   429d6:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%rbp)
   429dd:	48 8d 45 10          	lea    0x10(%rbp),%rax
   429e1:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   429e5:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   429e9:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    panicking = true;
   429ed:	c6 05 15 a6 00 00 01 	movb   $0x1,0xa615(%rip)        # 4d009 <panicking>
    cursorpos = CPOS(24, 80);
   429f4:	c7 05 fe 65 07 00 d0 	movl   $0x7d0,0x765fe(%rip)        # b8ffc <cursorpos>
   429fb:	07 00 00 
    if (format) {
   429fe:	48 85 ff             	test   %rdi,%rdi
   42a01:	74 5e                	je     42a61 <panic(char const*, ...)+0xac>
   42a03:	48 89 fb             	mov    %rdi,%rbx
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   42a06:	ba e0 48 04 00       	mov    $0x448e0,%edx
   42a0b:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a10:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a15:	b0 00                	mov    $0x0,%al
   42a17:	e8 25 f5 ff ff       	callq  41f41 <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   42a1c:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
   42a20:	48 89 da             	mov    %rbx,%rdx
   42a23:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a28:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a2d:	e8 af f4 ff ff       	callq  41ee1 <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   42a32:	8b 05 c4 65 07 00    	mov    0x765c4(%rip),%eax        # b8ffc <cursorpos>
   42a38:	b9 50 00 00 00       	mov    $0x50,%ecx
   42a3d:	99                   	cltd   
   42a3e:	f7 f9                	idiv   %ecx
   42a40:	85 d2                	test   %edx,%edx
   42a42:	74 16                	je     42a5a <panic(char const*, ...)+0xa5>
            error_printf(-1, COLOR_ERROR, "\n");
   42a44:	ba 53 4b 04 00       	mov    $0x44b53,%edx
   42a49:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a4e:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a53:	b0 00                	mov    $0x0,%al
   42a55:	e8 e7 f4 ff ff       	callq  41f41 <error_printf(int, int, char const*, ...)>
        check_keyboard();
   42a5a:	e8 34 fe ff ff       	callq  42893 <check_keyboard()>
    while (true) {
   42a5f:	eb f9                	jmp    42a5a <panic(char const*, ...)+0xa5>
        error_printf(-1, COLOR_ERROR, "PANIC");
   42a61:	ba e8 48 04 00       	mov    $0x448e8,%edx
   42a66:	be 00 c0 00 00       	mov    $0xc000,%esi
   42a6b:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   42a70:	b0 00                	mov    $0x0,%al
   42a72:	e8 ca f4 ff ff       	callq  41f41 <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   42a77:	bf 53 4b 04 00       	mov    $0x44b53,%edi
   42a7c:	b0 00                	mov    $0x0,%al
   42a7e:	e8 1c f4 ff ff       	callq  41e9f <log_printf(char const*, ...)>
[[noreturn]] void fail() {
   42a83:	eb d5                	jmp    42a5a <panic(char const*, ...)+0xa5>
   42a85:	90                   	nop

0000000000042a86 <program_loader::program_number(char const*)>:
int program_loader::program_number(const char* program_name) {
   42a86:	f3 0f 1e fa          	endbr64 
   42a8a:	55                   	push   %rbp
   42a8b:	48 89 e5             	mov    %rsp,%rbp
   42a8e:	41 54                	push   %r12
   42a90:	53                   	push   %rbx
   42a91:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   42a94:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   42a99:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   42a9d:	48 8b 34 c5 00 60 04 	mov    0x46000(,%rax,8),%rsi
   42aa4:	00 
   42aa5:	4c 89 e7             	mov    %r12,%rdi
   42aa8:	e8 26 0d 00 00       	callq  437d3 <strcmp>
   42aad:	85 c0                	test   %eax,%eax
   42aaf:	74 14                	je     42ac5 <program_loader::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   42ab1:	48 83 c3 01          	add    $0x1,%rbx
   42ab5:	48 83 fb 06          	cmp    $0x6,%rbx
   42ab9:	75 de                	jne    42a99 <program_loader::program_number(char const*)+0x13>
    return -1;
   42abb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42ac0:	5b                   	pop    %rbx
   42ac1:	41 5c                	pop    %r12
   42ac3:	5d                   	pop    %rbp
   42ac4:	c3                   	retq   
            return i;
   42ac5:	89 d8                	mov    %ebx,%eax
   42ac7:	eb f7                	jmp    42ac0 <program_loader::program_number(char const*)+0x3a>
   42ac9:	90                   	nop

0000000000042aca <program_loader::fix()>:
void program_loader::fix() {
   42aca:	f3 0f 1e fa          	endbr64 
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   42ace:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42ad2:	48 85 c0             	test   %rax,%rax
   42ad5:	74 19                	je     42af0 <program_loader::fix()+0x26>
   42ad7:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   42adb:	eb 04                	jmp    42ae1 <program_loader::fix()+0x17>
        ++ph_;
   42add:	48 89 47 08          	mov    %rax,0x8(%rdi)
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   42ae1:	48 39 c2             	cmp    %rax,%rdx
   42ae4:	74 0a                	je     42af0 <program_loader::fix()+0x26>
   42ae6:	48 83 c0 38          	add    $0x38,%rax
   42aea:	83 78 c8 01          	cmpl   $0x1,-0x38(%rax)
   42aee:	75 ed                	jne    42add <program_loader::fix()+0x13>
}
   42af0:	c3                   	retq   
   42af1:	90                   	nop

0000000000042af2 <program_loader::va() const>:
uintptr_t program_loader::va() const {
   42af2:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_va : 0;
   42af6:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42afa:	b8 00 00 00 00       	mov    $0x0,%eax
   42aff:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42b03:	74 04                	je     42b09 <program_loader::va() const+0x17>
   42b05:	48 8b 42 10          	mov    0x10(%rdx),%rax
}
   42b09:	c3                   	retq   

0000000000042b0a <program_loader::size() const>:
size_t program_loader::size() const {
   42b0a:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_memsz : 0;
   42b0e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42b12:	b8 00 00 00 00       	mov    $0x0,%eax
   42b17:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42b1b:	74 04                	je     42b21 <program_loader::size() const+0x17>
   42b1d:	48 8b 42 28          	mov    0x28(%rdx),%rax
}
   42b21:	c3                   	retq   

0000000000042b22 <program_loader::data() const>:
const char* program_loader::data() const {
   42b22:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? (const char*) elf_ + ph_->p_offset : nullptr;
   42b26:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42b2a:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   42b2e:	74 08                	je     42b38 <program_loader::data() const+0x16>
   42b30:	48 8b 40 08          	mov    0x8(%rax),%rax
   42b34:	48 03 07             	add    (%rdi),%rax
   42b37:	c3                   	retq   
   42b38:	b8 00 00 00 00       	mov    $0x0,%eax
}
   42b3d:	c3                   	retq   

0000000000042b3e <program_loader::data_size() const>:
size_t program_loader::data_size() const {
   42b3e:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_filesz : 0;
   42b42:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   42b46:	b8 00 00 00 00       	mov    $0x0,%eax
   42b4b:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   42b4f:	74 04                	je     42b55 <program_loader::data_size() const+0x17>
   42b51:	48 8b 42 20          	mov    0x20(%rdx),%rax
}
   42b55:	c3                   	retq   

0000000000042b56 <program_loader::present() const>:
bool program_loader::present() const {
   42b56:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_;
   42b5a:	48 8b 47 10          	mov    0x10(%rdi),%rax
   42b5e:	48 39 47 08          	cmp    %rax,0x8(%rdi)
   42b62:	0f 95 c0             	setne  %al
}
   42b65:	c3                   	retq   

0000000000042b66 <program_loader::entry() const>:
uintptr_t program_loader::entry() const {
   42b66:	f3 0f 1e fa          	endbr64 
    return elf_ ? elf_->e_entry : 0;
   42b6a:	48 8b 17             	mov    (%rdi),%rdx
   42b6d:	b8 00 00 00 00       	mov    $0x0,%eax
   42b72:	48 85 d2             	test   %rdx,%rdx
   42b75:	74 04                	je     42b7b <program_loader::entry() const+0x15>
   42b77:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   42b7b:	c3                   	retq   

0000000000042b7c <program_loader::operator++()>:
void program_loader::operator++() {
   42b7c:	f3 0f 1e fa          	endbr64 
    if (ph_ != endph_) {
   42b80:	48 8b 47 08          	mov    0x8(%rdi),%rax
   42b84:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   42b88:	74 13                	je     42b9d <program_loader::operator++()+0x21>
void program_loader::operator++() {
   42b8a:	55                   	push   %rbp
   42b8b:	48 89 e5             	mov    %rsp,%rbp
        ++ph_;
   42b8e:	48 83 c0 38          	add    $0x38,%rax
   42b92:	48 89 47 08          	mov    %rax,0x8(%rdi)
        fix();
   42b96:	e8 2f ff ff ff       	callq  42aca <program_loader::fix()>
}
   42b9b:	5d                   	pop    %rbp
   42b9c:	c3                   	retq   
   42b9d:	c3                   	retq   

0000000000042b9e <program_loader::reset()>:
void program_loader::reset() {
   42b9e:	f3 0f 1e fa          	endbr64 
    if (elf_) {
   42ba2:	48 8b 07             	mov    (%rdi),%rax
   42ba5:	48 85 c0             	test   %rax,%rax
   42ba8:	74 49                	je     42bf3 <program_loader::reset()+0x55>
void program_loader::reset() {
   42baa:	55                   	push   %rbp
   42bab:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   42bae:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   42bb4:	75 29                	jne    42bdf <program_loader::reset()+0x41>
        ph_ = (elf_program*) ((uint8_t*) elf_ + elf_->e_phoff);
   42bb6:	48 89 c2             	mov    %rax,%rdx
   42bb9:	48 03 50 20          	add    0x20(%rax),%rdx
   42bbd:	48 89 57 08          	mov    %rdx,0x8(%rdi)
        endph_ = ph_ + elf_->e_phnum;
   42bc1:	0f b7 48 38          	movzwl 0x38(%rax),%ecx
   42bc5:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   42bcc:	00 
   42bcd:	48 29 c8             	sub    %rcx,%rax
   42bd0:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   42bd4:	48 89 47 10          	mov    %rax,0x10(%rdi)
        fix();
   42bd8:	e8 ed fe ff ff       	callq  42aca <program_loader::fix()>
}
   42bdd:	5d                   	pop    %rbp
   42bde:	c3                   	retq   
        assert(elf_->e_magic == ELF_MAGIC);
   42bdf:	ba ee 48 04 00       	mov    $0x448ee,%edx
   42be4:	be 99 03 00 00       	mov    $0x399,%esi
   42be9:	bf 31 48 04 00       	mov    $0x44831,%edi
   42bee:	e8 d7 f3 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
        ph_ = endph_ = nullptr;
   42bf3:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   42bfa:	00 
   42bfb:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
   42c02:	00 
   42c03:	c3                   	retq   

0000000000042c04 <program_loader::program_loader(int)>:
program_loader::program_loader(int program_number) {
   42c04:	f3 0f 1e fa          	endbr64 
   42c08:	55                   	push   %rbp
   42c09:	48 89 e5             	mov    %rsp,%rbp
    elf_ = nullptr;
   42c0c:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   42c13:	83 fe 05             	cmp    $0x5,%esi
   42c16:	77 12                	ja     42c2a <program_loader::program_loader(int)+0x26>
        elf_ = (elf_header*) ramimages[program_number].begin;
   42c18:	48 63 f6             	movslq %esi,%rsi
   42c1b:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   42c1f:	48 8b 04 c5 08 60 04 	mov    0x46008(,%rax,8),%rax
   42c26:	00 
   42c27:	48 89 07             	mov    %rax,(%rdi)
    reset();
   42c2a:	e8 6f ff ff ff       	callq  42b9e <program_loader::reset()>
}
   42c2f:	5d                   	pop    %rbp
   42c30:	c3                   	retq   
   42c31:	90                   	nop

0000000000042c32 <program_loader::program_loader(char const*)>:
program_loader::program_loader(const char* program_name)
   42c32:	f3 0f 1e fa          	endbr64 
   42c36:	55                   	push   %rbp
   42c37:	48 89 e5             	mov    %rsp,%rbp
   42c3a:	53                   	push   %rbx
   42c3b:	48 83 ec 08          	sub    $0x8,%rsp
   42c3f:	48 89 fb             	mov    %rdi,%rbx
   42c42:	48 89 f7             	mov    %rsi,%rdi
    : program_loader(program_number(program_name)) {
   42c45:	e8 3c fe ff ff       	callq  42a86 <program_loader::program_number(char const*)>
   42c4a:	89 c6                	mov    %eax,%esi
   42c4c:	48 89 df             	mov    %rbx,%rdi
   42c4f:	e8 b0 ff ff ff       	callq  42c04 <program_loader::program_loader(int)>
}
   42c54:	48 83 c4 08          	add    $0x8,%rsp
   42c58:	5b                   	pop    %rbx
   42c59:	5d                   	pop    %rbp
   42c5a:	c3                   	retq   

0000000000042c5b <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   42c5b:	f3 0f 1e fa          	endbr64 
	return __atomic_load_n(&_M_i, int(__m));
   42c5f:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   42c62:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   42c67:	80 fa 02             	cmp    $0x2,%dl
   42c6a:	74 22                	je     42c8e <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   42c6c:	ba 01 00 00 00       	mov    $0x1,%edx
   42c71:	89 d0                	mov    %edx,%eax
   42c73:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   42c75:	3c 02                	cmp    $0x2,%al
   42c77:	74 08                	je     42c81 <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   42c79:	3c 01                	cmp    $0x1,%al
   42c7b:	75 0c                	jne    42c89 <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   42c7d:	f3 90                	pause  
}
   42c7f:	eb f0                	jmp    42c71 <__cxa_guard_acquire+0x16>
   42c81:	86 07                	xchg   %al,(%rdi)
            return 0;
   42c83:	b8 00 00 00 00       	mov    $0x0,%eax
   42c88:	c3                   	retq   
            return 1;
   42c89:	b8 01 00 00 00       	mov    $0x1,%eax
}
   42c8e:	c3                   	retq   

0000000000042c8f <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   42c8f:	f3 0f 1e fa          	endbr64 
	__atomic_store_n(&_M_i, __i, int(__m));
   42c93:	c6 07 02             	movb   $0x2,(%rdi)
   42c96:	0f ae f0             	mfence 
}
   42c99:	c3                   	retq   

0000000000042c9a <in_alloc_region(unsigned long)>:
// k-memviewer.cc
//
//    The `memusage` class tracks memory usage by walking page tables,
//    looks for errors, and prints the memory map to the console.

bool in_alloc_region(uintptr_t pa) {
   42c9a:	f3 0f 1e fa          	endbr64 
    // true if we're within the heap region of a process
    //   first address of heap   bottom of stack
    //                     |                 |
    return (   (pa >= 0x103000 && pa < 0x13f000)
   42c9e:	48 81 e7 ff ff fb ff 	and    $0xfffffffffffbffff,%rdi
   42ca5:	48 8d 97 00 d0 ef ff 	lea    -0x103000(%rdi),%rdx
            || (pa >= 0x143000 && pa < 0x17f000)
            || (pa >= 0x183000 && pa < 0x1bf000)
            || (pa >= 0x1c3000 && pa < 0x1ff000));
   42cac:	b8 01 00 00 00       	mov    $0x1,%eax
   42cb1:	48 81 fa ff bf 03 00 	cmp    $0x3bfff,%rdx
   42cb8:	76 11                	jbe    42ccb <in_alloc_region(unsigned long)+0x31>
            || (pa >= 0x183000 && pa < 0x1bf000)
   42cba:	48 81 ef 00 30 18 00 	sub    $0x183000,%rdi
   42cc1:	48 81 ff ff bf 03 00 	cmp    $0x3bfff,%rdi
   42cc8:	0f 96 c0             	setbe  %al
}
   42ccb:	c3                   	retq   

0000000000042ccc <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   42ccc:	f3 0f 1e fa          	endbr64 
   42cd0:	55                   	push   %rbp
   42cd1:	48 89 e5             	mov    %rsp,%rbp
   42cd4:	41 57                	push   %r15
   42cd6:	41 56                	push   %r14
   42cd8:	41 55                	push   %r13
   42cda:	41 54                	push   %r12
   42cdc:	53                   	push   %rbx
   42cdd:	48 83 ec 38          	sub    $0x38,%rsp
   42ce1:	49 89 fd             	mov    %rdi,%r13
    if (!v_) {
   42ce4:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   42ce8:	74 48                	je     42d32 <memusage::refresh()+0x66>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   42cea:	ba 00 10 00 00       	mov    $0x1000,%edx
   42cef:	be 00 00 00 00       	mov    $0x0,%esi
   42cf4:	49 8b 7d 00          	mov    0x0(%r13),%rdi
   42cf8:	e8 75 0a 00 00       	callq  43772 <memset>
inline int vmiter::try_map(void* kp, int perm) {
    return try_map((uintptr_t) kp, perm);
}

inline ptiter::ptiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt) {
   42cfd:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   42d04:	00 
    go(va);
   42d05:	be 00 00 00 00       	mov    $0x0,%esi
   42d0a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42d0e:	e8 ef ec ff ff       	callq  41a02 <ptiter::go(unsigned long)>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42d13:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   42d1a:	ff 00 00 
   42d1d:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   42d21:	77 6d                	ja     42d90 <memusage::refresh()+0xc4>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   42d23:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   42d2a:	ff 0f 00 
   42d2d:	48 89 c3             	mov    %rax,%rbx
   42d30:	eb 3b                	jmp    42d6d <memusage::refresh()+0xa1>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   42d32:	bf 00 10 00 00       	mov    $0x1000,%edi
   42d37:	e8 af e2 ff ff       	callq  40feb <kalloc(unsigned long)>
   42d3c:	49 89 45 00          	mov    %rax,0x0(%r13)
        assert(v_ != nullptr);
   42d40:	48 85 c0             	test   %rax,%rax
   42d43:	75 a5                	jne    42cea <memusage::refresh()+0x1e>
   42d45:	ba a0 4a 04 00       	mov    $0x44aa0,%edx
   42d4a:	be 52 00 00 00       	mov    $0x52,%esi
   42d4f:	bf ae 4a 04 00       	mov    $0x44aae,%edi
   42d54:	e8 71 f2 ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    down(true);
   42d59:	be 01 00 00 00       	mov    $0x1,%esi
   42d5e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42d62:	e8 99 eb ff ff       	callq  41900 <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   42d67:	48 39 5d c8          	cmp    %rbx,-0x38(%rbp)
   42d6b:	77 23                	ja     42d90 <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   42d6d:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42d71:	4c 89 e6             	mov    %r12,%rsi
   42d74:	48 23 30             	and    (%rax),%rsi
   42d77:	48 89 f0             	mov    %rsi,%rax
        if (pa < maxpa) {
   42d7a:	48 81 fe ff ff 3f 00 	cmp    $0x3fffff,%rsi
   42d81:	77 d6                	ja     42d59 <memusage::refresh()+0x8d>
            v_[pa / PAGESIZE] |= flags;
   42d83:	48 c1 e8 0a          	shr    $0xa,%rax
   42d87:	49 03 45 00          	add    0x0(%r13),%rax
   42d8b:	83 08 01             	orl    $0x1,(%rax)
   42d8e:	eb c9                	jmp    42d59 <memusage::refresh()+0x8d>
        mark(it.pa(), f_kernel);
    }
    mark((uintptr_t) kernel_pagetable, f_kernel);
   42d90:	b8 00 40 05 00       	mov    $0x54000,%eax
        if (pa < maxpa) {
   42d95:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42d9b:	77 0c                	ja     42da9 <memusage::refresh()+0xdd>
            v_[pa / PAGESIZE] |= flags;
   42d9d:	48 c1 e8 0c          	shr    $0xc,%rax
   42da1:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42da5:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   42da9:	bb f0 c2 04 00       	mov    $0x4c2f0,%ebx
void memusage::refresh() {
   42dae:	41 bc 01 00 00 00    	mov    $0x1,%r12d
   42db4:	be 00 00 00 00       	mov    $0x0,%esi
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.active(); it.next()) {
   42db9:	49 be ff ff ff ff ff 	movabs $0xffffffffffff,%r14
   42dc0:	ff 00 00 
   42dc3:	e9 c5 01 00 00       	jmpq   42f8d <memusage::refresh()+0x2c1>
    down(true);
   42dc8:	be 01 00 00 00       	mov    $0x1,%esi
   42dcd:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42dd1:	e8 2a eb ff ff       	callq  41900 <ptiter::down(bool)>
   42dd6:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   42dda:	77 2a                	ja     42e06 <memusage::refresh()+0x13a>
    return *pep_ & PTE_PAMASK;
   42ddc:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42de0:	4c 89 ff             	mov    %r15,%rdi
   42de3:	48 23 38             	and    (%rax),%rdi
   42de6:	48 89 f8             	mov    %rdi,%rax
        if (pa < maxpa) {
   42de9:	48 81 ff ff ff 3f 00 	cmp    $0x3fffff,%rdi
   42df0:	77 d6                	ja     42dc8 <memusage::refresh()+0xfc>
            v_[pa / PAGESIZE] |= flags;
   42df2:	48 c1 e8 0a          	shr    $0xa,%rax
   42df6:	49 03 45 00          	add    0x0(%r13),%rax
   42dfa:	8b 55 a0             	mov    -0x60(%rbp),%edx
   42dfd:	0b 10                	or     (%rax),%edx
   42dff:	83 ca 01             	or     $0x1,%edx
   42e02:	89 10                	mov    %edx,(%rax)
   42e04:	eb c2                	jmp    42dc8 <memusage::refresh()+0xfc>
        } else if (pid >= 1) {
   42e06:	45 8d 7c 24 ff       	lea    -0x1(%r12),%r15d
            return 2U << pid;
   42e0b:	b8 02 00 00 00       	mov    $0x2,%eax
   42e10:	44 89 e1             	mov    %r12d,%ecx
   42e13:	d3 e0                	shl    %cl,%eax
   42e15:	41 83 ff 1d          	cmp    $0x1d,%r15d
   42e19:	ba 00 00 00 00       	mov    $0x0,%edx
   42e1e:	0f 43 c2             	cmovae %edx,%eax
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));
   42e21:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   42e25:	48 8b 16             	mov    (%rsi),%rdx
        if (pa < maxpa) {
   42e28:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   42e2f:	77 13                	ja     42e44 <memusage::refresh()+0x178>
            v_[pa / PAGESIZE] |= flags;
   42e31:	48 c1 ea 0c          	shr    $0xc,%rdx
   42e35:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   42e39:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   42e3d:	0b 02                	or     (%rdx),%eax
   42e3f:	83 c8 01             	or     $0x1,%eax
   42e42:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   42e44:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   42e48:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42e4b:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   42e4f:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   42e53:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   42e5a:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   42e61:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   42e68:	00 
    real_find(va);
   42e69:	be 00 00 00 00       	mov    $0x0,%esi
   42e6e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42e72:	e8 ed e7 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   42e77:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi

            for (vmiter it(p); it.low(); ) {
   42e7b:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   42e82:	7f 00 00 
   42e85:	48 39 c6             	cmp    %rax,%rsi
   42e88:	0f 87 ea 00 00 00    	ja     42f78 <memusage::refresh()+0x2ac>
            return 2U << pid;
   42e8e:	b8 02 00 00 00       	mov    $0x2,%eax
   42e93:	44 89 e1             	mov    %r12d,%ecx
   42e96:	d3 e0                	shl    %cl,%eax
   42e98:	41 83 ff 1c          	cmp    $0x1c,%r15d
   42e9c:	ba 00 00 00 00       	mov    $0x0,%edx
   42ea1:	0f 46 d0             	cmovbe %eax,%edx
   42ea4:	89 55 a8             	mov    %edx,-0x58(%rbp)
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42ea7:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   42ead:	eb 20                	jmp    42ecf <memusage::refresh()+0x203>
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   42eaf:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42eb3:	e8 60 e8 ff ff       	callq  41718 <vmiter::next()>
   42eb8:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            for (vmiter it(p); it.low(); ) {
   42ebc:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   42ec3:	7f 00 00 
   42ec6:	48 39 c6             	cmp    %rax,%rsi
   42ec9:	0f 87 a9 00 00 00    	ja     42f78 <memusage::refresh()+0x2ac>
    return (*pep_ & perm_ & p) == p;
   42ecf:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   42ed3:	48 8b 08             	mov    (%rax),%rcx
   42ed6:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   42eda:	48 21 c8             	and    %rcx,%rax
   42edd:	83 e0 05             	and    $0x5,%eax
                if (it.user()) {
   42ee0:	48 83 f8 05          	cmp    $0x5,%rax
   42ee4:	75 6c                	jne    42f52 <memusage::refresh()+0x286>
    if (*pep_ & PTE_P) {
   42ee6:	f6 c1 01             	test   $0x1,%cl
   42ee9:	74 c4                	je     42eaf <memusage::refresh()+0x1e3>
        if (level_ > 0) {
   42eeb:	8b 55 c0             	mov    -0x40(%rbp),%edx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42eee:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42ef5:	ff 0f 00 
   42ef8:	48 21 c8             	and    %rcx,%rax
   42efb:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   42f02:	ff 0f 00 
   42f05:	48 21 f9             	and    %rdi,%rcx
   42f08:	85 d2                	test   %edx,%edx
   42f0a:	48 0f 4f c1          	cmovg  %rcx,%rax
   42f0e:	48 89 c7             	mov    %rax,%rdi
   42f11:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42f15:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   42f1c:	48 89 d0             	mov    %rdx,%rax
   42f1f:	48 d3 e0             	shl    %cl,%rax
   42f22:	48 f7 d0             	not    %rax
   42f25:	48 21 f0             	and    %rsi,%rax
   42f28:	48 01 f8             	add    %rdi,%rax
        if (pa < maxpa) {
   42f2b:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   42f31:	0f 87 78 ff ff ff    	ja     42eaf <memusage::refresh()+0x1e3>
            v_[pa / PAGESIZE] |= flags;
   42f37:	48 c1 e8 0c          	shr    $0xc,%rax
   42f3b:	49 8b 55 00          	mov    0x0(%r13),%rdx
   42f3f:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   42f43:	8b 45 a8             	mov    -0x58(%rbp),%eax
   42f46:	0b 02                	or     (%rdx),%eax
   42f48:	83 c8 02             	or     $0x2,%eax
   42f4b:	89 02                	mov    %eax,(%rdx)
   42f4d:	e9 5d ff ff ff       	jmpq   42eaf <memusage::refresh()+0x1e3>
   42f52:	8b 45 c0             	mov    -0x40(%rbp),%eax
   42f55:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42f59:	4c 89 f8             	mov    %r15,%rax
   42f5c:	48 d3 e0             	shl    %cl,%rax
   42f5f:	48 83 e8 01          	sub    $0x1,%rax
    return (va_ | pageoffmask(level_)) + 1;
   42f63:	48 09 f0             	or     %rsi,%rax
   42f66:	48 8d 70 01          	lea    0x1(%rax),%rsi
    real_find(last_va());
   42f6a:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42f6e:	e8 f1 e6 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
}
   42f73:	e9 40 ff ff ff       	jmpq   42eb8 <memusage::refresh()+0x1ec>
            any = true;
   42f78:	0f b6 75 a7          	movzbl -0x59(%rbp),%esi
    for (int pid = 1; pid < NPROC; ++pid) {
   42f7c:	41 83 c4 01          	add    $0x1,%r12d
   42f80:	48 81 c3 d0 00 00 00 	add    $0xd0,%rbx
   42f87:	41 83 fc 10          	cmp    $0x10,%r12d
   42f8b:	74 6b                	je     42ff8 <memusage::refresh()+0x32c>
        if (p->state != P_FREE
   42f8d:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   42f91:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   42f95:	74 e5                	je     42f7c <memusage::refresh()+0x2b0>
            && p->pagetable
   42f97:	48 8b 03             	mov    (%rbx),%rax
            && p->pagetable != kernel_pagetable) {
   42f9a:	48 3d 00 40 05 00    	cmp    $0x54000,%rax
   42fa0:	0f 95 c1             	setne  %cl
            && p->pagetable
   42fa3:	48 85 c0             	test   %rax,%rax
   42fa6:	0f 95 c2             	setne  %dl
            && p->pagetable != kernel_pagetable) {
   42fa9:	20 d1                	and    %dl,%cl
   42fab:	88 4d a7             	mov    %cl,-0x59(%rbp)
   42fae:	74 cc                	je     42f7c <memusage::refresh()+0x2b0>
    : pt_(pt) {
   42fb0:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    go(va);
   42fb4:	be 00 00 00 00       	mov    $0x0,%esi
   42fb9:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   42fbd:	e8 40 ea ff ff       	callq  41a02 <ptiter::go(unsigned long)>
            for (ptiter it(p); it.active(); it.next()) {
   42fc2:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   42fc6:	0f 87 3a fe ff ff    	ja     42e06 <memusage::refresh()+0x13a>
            return 2U << pid;
   42fcc:	b8 02 00 00 00       	mov    $0x2,%eax
   42fd1:	44 89 e1             	mov    %r12d,%ecx
   42fd4:	d3 e0                	shl    %cl,%eax
        } else if (pid >= 1) {
   42fd6:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
   42fdb:	83 fa 1c             	cmp    $0x1c,%edx
   42fde:	ba 00 00 00 00       	mov    $0x0,%edx
   42fe3:	0f 46 d0             	cmovbe %eax,%edx
   42fe6:	89 55 a0             	mov    %edx,-0x60(%rbp)
    return *pep_ & PTE_PAMASK;
   42fe9:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   42ff0:	ff 0f 00 
   42ff3:	e9 e4 fd ff ff       	jmpq   42ddc <memusage::refresh()+0x110>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   42ff8:	40 84 f6             	test   %sil,%sil
   42ffb:	74 26                	je     43023 <memusage::refresh()+0x357>
        }
    }

    // mark my own memory
    if (any) {
        mark((uintptr_t) v_, f_kernel);
   42ffd:	49 8b 45 00          	mov    0x0(%r13),%rax
        if (pa < maxpa) {
   43001:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43007:	77 0b                	ja     43014 <memusage::refresh()+0x348>
            v_[pa / PAGESIZE] |= flags;
   43009:	48 89 c2             	mov    %rax,%rdx
   4300c:	48 c1 ea 0c          	shr    $0xc,%rdx
   43010:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
    }
}
   43014:	48 83 c4 38          	add    $0x38,%rsp
   43018:	5b                   	pop    %rbx
   43019:	41 5c                	pop    %r12
   4301b:	41 5d                	pop    %r13
   4301d:	41 5e                	pop    %r14
   4301f:	41 5f                	pop    %r15
   43021:	5d                   	pop    %rbp
   43022:	c3                   	retq   
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43023:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   4302a:	00 
   4302b:	48 c7 45 b8 00 40 05 	movq   $0x54000,-0x48(%rbp)
   43032:	00 
   43033:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   4303a:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   43041:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43048:	00 
    real_find(va);
   43049:	be 00 00 00 00       	mov    $0x0,%esi
   4304e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43052:	e8 0d e6 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43057:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   4305b:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   43061:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   43068:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   4306b:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   43072:	ff 0f 00 
        for (vmiter it(kernel_pagetable); it.low(); ) {
   43075:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   4307c:	7f 00 00 
   4307f:	48 39 da             	cmp    %rbx,%rdx
   43082:	76 30                	jbe    430b4 <memusage::refresh()+0x3e8>
   43084:	eb 8e                	jmp    43014 <memusage::refresh()+0x348>
   43086:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43089:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   4308d:	4c 89 e0             	mov    %r12,%rax
   43090:	48 d3 e0             	shl    %cl,%rax
   43093:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    return (va_ | pageoffmask(level_)) + 1;
   43097:	48 09 d6             	or     %rdx,%rsi
   4309a:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   4309e:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   430a2:	e8 bd e5 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   430a7:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   430ab:	48 39 da             	cmp    %rbx,%rdx
   430ae:	0f 87 60 ff ff ff    	ja     43014 <memusage::refresh()+0x348>
    return (*pep_ & perm_ & p) == p;
   430b4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   430b8:	48 8b 08             	mov    (%rax),%rcx
   430bb:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   430bf:	48 21 c8             	and    %rcx,%rax
   430c2:	83 e0 05             	and    $0x5,%eax
                && pages[it.pa() / PAGESIZE].used()) {
   430c5:	48 83 f8 05          	cmp    $0x5,%rax
   430c9:	75 bb                	jne    43086 <memusage::refresh()+0x3ba>
    if (*pep_ & PTE_P) {
   430cb:	f6 c1 01             	test   $0x1,%cl
   430ce:	74 b6                	je     43086 <memusage::refresh()+0x3ba>
        if (level_ > 0) {
   430d0:	8b 7d c0             	mov    -0x40(%rbp),%edi
            pa &= ~0x1000UL;
   430d3:	48 89 c8             	mov    %rcx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   430d6:	4c 21 f8             	and    %r15,%rax
   430d9:	4c 21 f1             	and    %r14,%rcx
   430dc:	85 ff                	test   %edi,%edi
   430de:	48 0f 4f c1          	cmovg  %rcx,%rax
   430e2:	48 89 c6             	mov    %rax,%rsi
   430e5:	8d 4c ff 0c          	lea    0xc(%rdi,%rdi,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   430e9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   430f0:	48 d3 e0             	shl    %cl,%rax
   430f3:	48 f7 d0             	not    %rax
   430f6:	48 21 d0             	and    %rdx,%rax
   430f9:	48 01 f0             	add    %rsi,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   430fc:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   43102:	77 82                	ja     43086 <memusage::refresh()+0x3ba>
                && pages[it.pa() / PAGESIZE].used()) {
   43104:	48 89 c6             	mov    %rax,%rsi
   43107:	48 c1 ee 0c          	shr    $0xc,%rsi
   4310b:	80 be 00 c0 04 00 00 	cmpb   $0x0,0x4c000(%rsi)
   43112:	0f 84 6e ff ff ff    	je     43086 <memusage::refresh()+0x3ba>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   43118:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   4311e:	48 c1 e8 12          	shr    $0x12,%rax
            return 0;
   43122:	ba 00 00 00 00       	mov    $0x0,%edx
        } else if (pid >= 1) {
   43127:	83 f8 1c             	cmp    $0x1c,%eax
   4312a:	76 1d                	jbe    43149 <memusage::refresh()+0x47d>
            v_[pa / PAGESIZE] |= flags;
   4312c:	49 8b 45 00          	mov    0x0(%r13),%rax
   43130:	48 8d 04 b0          	lea    (%rax,%rsi,4),%rax
   43134:	0b 10                	or     (%rax),%edx
   43136:	83 ca 02             	or     $0x2,%edx
   43139:	89 10                	mov    %edx,(%rax)
                it.next();
   4313b:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4313f:	e8 d4 e5 ff ff       	callq  41718 <vmiter::next()>
   43144:	e9 5e ff ff ff       	jmpq   430a7 <memusage::refresh()+0x3db>
                mark(it.pa(), f_user | f_process(owner + 1));
   43149:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   4314c:	ba 02 00 00 00       	mov    $0x2,%edx
   43151:	d3 e2                	shl    %cl,%edx
   43153:	eb d7                	jmp    4312c <memusage::refresh()+0x460>
   43155:	90                   	nop

0000000000043156 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   43156:	f3 0f 1e fa          	endbr64 
   4315a:	55                   	push   %rbp
   4315b:	48 89 e5             	mov    %rsp,%rbp
   4315e:	41 56                	push   %r14
   43160:	41 55                	push   %r13
   43162:	41 54                	push   %r12
   43164:	53                   	push   %rbx
   43165:	49 89 f5             	mov    %rsi,%r13
   43168:	49 89 d6             	mov    %rdx,%r14
   4316b:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   4316d:	85 c9                	test   %ecx,%ecx
   4316f:	41 bc 58 4b 04 00    	mov    $0x44b58,%r12d
   43175:	b8 bd 4a 04 00       	mov    $0x44abd,%eax
   4317a:	4c 0f 48 e0          	cmovs  %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   4317e:	41 89 c9             	mov    %ecx,%r9d
   43181:	49 89 d0             	mov    %rdx,%r8
   43184:	48 89 f1             	mov    %rsi,%rcx
   43187:	4c 89 e2             	mov    %r12,%rdx
   4318a:	be 00 c0 00 00       	mov    $0xc000,%esi
   4318f:	bf e0 06 00 00       	mov    $0x6e0,%edi
   43194:	b8 00 00 00 00       	mov    $0x0,%eax
   43199:	e8 a3 ed ff ff       	callq  41f41 <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   4319e:	89 d9                	mov    %ebx,%ecx
   431a0:	4c 89 f2             	mov    %r14,%rdx
   431a3:	4c 89 ee             	mov    %r13,%rsi
   431a6:	4c 89 e7             	mov    %r12,%rdi
   431a9:	b8 00 00 00 00       	mov    $0x0,%eax
   431ae:	e8 ec ec ff ff       	callq  41e9f <log_printf(char const*, ...)>
}
   431b3:	5b                   	pop    %rbx
   431b4:	41 5c                	pop    %r12
   431b6:	41 5d                	pop    %r13
   431b8:	41 5e                	pop    %r14
   431ba:	5d                   	pop    %rbp
   431bb:	c3                   	retq   

00000000000431bc <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   431bc:	f3 0f 1e fa          	endbr64 
   431c0:	55                   	push   %rbp
   431c1:	48 89 e5             	mov    %rsp,%rbp
   431c4:	41 56                	push   %r14
   431c6:	41 55                	push   %r13
   431c8:	41 54                	push   %r12
   431ca:	53                   	push   %rbx
   431cb:	49 89 fd             	mov    %rdi,%r13
   431ce:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   431d1:	48 89 f7             	mov    %rsi,%rdi
   431d4:	e8 42 e9 ff ff       	callq  41b1b <reserved_physical_address(unsigned long)>
   431d9:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   431dc:	84 c0                	test   %al,%al
   431de:	74 3f                	je     4321f <memusage::symbol_at(unsigned long) const+0x63>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   431e0:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   431e5:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   431ec:	77 57                	ja     43245 <memusage::symbol_at(unsigned long) const+0x89>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   431ee:	48 89 da             	mov    %rbx,%rdx
   431f1:	48 c1 ea 0c          	shr    $0xc,%rdx
   431f5:	49 8b 45 00          	mov    0x0(%r13),%rax
   431f9:	44 8b 34 90          	mov    (%rax,%rdx,4),%r14d
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   431fd:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43202:	48 39 d8             	cmp    %rbx,%rax
   43205:	77 47                	ja     4324e <memusage::symbol_at(unsigned long) const+0x92>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43207:	ba 00 00 00 00       	mov    $0x0,%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   4320c:	48 8d 88 00 10 00 00 	lea    0x1000(%rax),%rcx
        return 'C' | 0x0700;
   43213:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43218:	48 39 d9             	cmp    %rbx,%rcx
   4321b:	76 36                	jbe    43253 <memusage::symbol_at(unsigned long) const+0x97>
   4321d:	eb 26                	jmp    43245 <memusage::symbol_at(unsigned long) const+0x89>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4321f:	48 89 df             	mov    %rbx,%rdi
   43222:	e8 15 e9 ff ff       	callq  41b3c <allocatable_physical_address(unsigned long)>
   43227:	83 f0 01             	xor    $0x1,%eax
   4322a:	89 c2                	mov    %eax,%edx
    if (pa >= maxpa) {
   4322c:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   43233:	0f 86 cb 01 00 00    	jbe    43404 <memusage::symbol_at(unsigned long) const+0x248>
            return 'K' | 0x4000;
   43239:	3c 01                	cmp    $0x1,%al
   4323b:	19 c0                	sbb    %eax,%eax
   4323d:	66 25 f4 af          	and    $0xaff4,%ax
   43241:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   43245:	5b                   	pop    %rbx
   43246:	41 5c                	pop    %r12
   43248:	41 5d                	pop    %r13
   4324a:	41 5e                	pop    %r14
   4324c:	5d                   	pop    %rbp
   4324d:	c3                   	retq   
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   4324e:	ba 00 00 00 00       	mov    $0x0,%edx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43253:	41 83 fe 03          	cmp    $0x3,%r14d
   43257:	0f 97 c1             	seta   %cl
   4325a:	76 09                	jbe    43265 <memusage::symbol_at(unsigned long) const+0xa9>
   4325c:	45 84 e4             	test   %r12b,%r12b
   4325f:	0f 85 04 01 00 00    	jne    43369 <memusage::symbol_at(unsigned long) const+0x1ad>
        return 'R' | 0x0700;
   43265:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   4326a:	45 84 e4             	test   %r12b,%r12b
   4326d:	75 d6                	jne    43245 <memusage::symbol_at(unsigned long) const+0x89>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   4326f:	84 c9                	test   %cl,%cl
   43271:	74 08                	je     4327b <memusage::symbol_at(unsigned long) const+0xbf>
   43273:	84 d2                	test   %dl,%dl
   43275:	0f 85 1b 01 00 00    	jne    43396 <memusage::symbol_at(unsigned long) const+0x1da>
        return 'K' | 0x0D00;
   4327b:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   43280:	84 d2                	test   %dl,%dl
   43282:	75 c1                	jne    43245 <memusage::symbol_at(unsigned long) const+0x89>
        return ' ' | 0x0700;
   43284:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   43289:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   43290:	77 b3                	ja     43245 <memusage::symbol_at(unsigned long) const+0x89>
            return '.' | 0x0700;
   43292:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   43297:	45 85 f6             	test   %r14d,%r14d
   4329a:	74 a9                	je     43245 <memusage::symbol_at(unsigned long) const+0x89>
        } else if (v == f_kernel) {
   4329c:	41 83 fe 01          	cmp    $0x1,%r14d
   432a0:	0f 84 4a 01 00 00    	je     433f0 <memusage::symbol_at(unsigned long) const+0x234>
        } else if (v == f_user) {
   432a6:	41 83 fe 02          	cmp    $0x2,%r14d
   432aa:	0f 84 4a 01 00 00    	je     433fa <memusage::symbol_at(unsigned long) const+0x23e>
        } else if ((v & f_kernel) && (v & f_user)) {
   432b0:	44 89 f0             	mov    %r14d,%eax
   432b3:	83 e0 03             	and    $0x3,%eax
   432b6:	83 f8 03             	cmp    $0x3,%eax
   432b9:	0f 84 04 01 00 00    	je     433c3 <memusage::symbol_at(unsigned long) const+0x207>
        return lsb(v >> 2);
   432bf:	45 89 f5             	mov    %r14d,%r13d
   432c2:	41 c1 ed 02          	shr    $0x2,%r13d
//    Returns 0 if `x == 0`.
inline constexpr int lsb(int x) {
    return __builtin_ffs(x);
}
inline constexpr int lsb(unsigned x) {
    return __builtin_ffs(x);
   432c6:	45 0f bc ed          	bsf    %r13d,%r13d
   432ca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   432cf:	44 0f 44 e8          	cmove  %eax,%r13d
   432d3:	41 83 c5 01          	add    $0x1,%r13d
            uint16_t ch = colors[pid % 5] << 8;
   432d7:	49 63 c5             	movslq %r13d,%rax
   432da:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   432e1:	48 c1 f8 21          	sar    $0x21,%rax
   432e5:	44 89 ea             	mov    %r13d,%edx
   432e8:	c1 fa 1f             	sar    $0x1f,%edx
   432eb:	29 d0                	sub    %edx,%eax
   432ed:	8d 04 80             	lea    (%rax,%rax,4),%eax
   432f0:	44 89 e9             	mov    %r13d,%ecx
   432f3:	29 c1                	sub    %eax,%ecx
   432f5:	89 c8                	mov    %ecx,%eax
   432f7:	48 98                	cltq   
   432f9:	44 0f b6 a0 01 4c 04 	movzbl 0x44c01(%rax),%r12d
   43300:	00 
   43301:	41 c1 e4 08          	shl    $0x8,%r12d
            if (in_alloc_region(pa)) {
   43305:	48 89 df             	mov    %rbx,%rdi
   43308:	e8 8d f9 ff ff       	callq  42c9a <in_alloc_region(unsigned long)>
   4330d:	84 c0                	test   %al,%al
   4330f:	74 0c                	je     4331d <memusage::symbol_at(unsigned long) const+0x161>
                    ch = 0xF << 8;
   43311:	83 3b 00             	cmpl   $0x0,(%rbx)
   43314:	b8 00 0f 00 00       	mov    $0xf00,%eax
   43319:	44 0f 44 e0          	cmove  %eax,%r12d
                ch |= 0x4000;
   4331d:	44 89 e0             	mov    %r12d,%eax
   43320:	80 cc 40             	or     $0x40,%ah
   43323:	41 f6 c6 01          	test   $0x1,%r14b
   43327:	44 0f 45 e0          	cmovne %eax,%r12d
        } else if (pid >= 1) {
   4332b:	41 8d 55 ff          	lea    -0x1(%r13),%edx
            return 2U << pid;
   4332f:	b8 02 00 00 00       	mov    $0x2,%eax
   43334:	44 89 e9             	mov    %r13d,%ecx
   43337:	d3 e0                	shl    %cl,%eax
   43339:	83 fa 1d             	cmp    $0x1d,%edx
   4333c:	ba 00 00 00 00       	mov    $0x0,%edx
   43341:	0f 42 d0             	cmovb  %eax,%edx
            if (v > (f_process(pid) | f_kernel | f_user)) {
   43344:	83 ca 03             	or     $0x3,%edx
                ch = 0x0F00 | 'S';
   43347:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   4334c:	44 39 f2             	cmp    %r14d,%edx
   4334f:	0f 82 f0 fe ff ff    	jb     43245 <memusage::symbol_at(unsigned long) const+0x89>
                ch |= names[pid];
   43355:	4d 63 ed             	movslq %r13d,%r13
   43358:	66 41 0f be 85 e0 4b 	movsbw 0x44be0(%r13),%ax
   4335f:	04 00 
   43361:	44 09 e0             	or     %r12d,%eax
   43364:	e9 dc fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
        return lsb(v >> 2);
   43369:	41 c1 ee 02          	shr    $0x2,%r14d
   4336d:	41 0f bc ce          	bsf    %r14d,%ecx
   43371:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43376:	0f 44 c8             	cmove  %eax,%ecx
   43379:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   4337c:	ba d8 4a 04 00       	mov    $0x44ad8,%edx
   43381:	48 89 de             	mov    %rbx,%rsi
   43384:	4c 89 ef             	mov    %r13,%rdi
   43387:	e8 ca fd ff ff       	callq  43156 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   4338c:	b8 52 0c 00 00       	mov    $0xc52,%eax
   43391:	e9 af fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
        return lsb(v >> 2);
   43396:	41 c1 ee 02          	shr    $0x2,%r14d
   4339a:	41 0f bc ce          	bsf    %r14d,%ecx
   4339e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   433a3:	0f 44 c8             	cmove  %eax,%ecx
   433a6:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   433a9:	ba 80 4b 04 00       	mov    $0x44b80,%edx
   433ae:	48 89 de             	mov    %rbx,%rsi
   433b1:	4c 89 ef             	mov    %r13,%rdi
   433b4:	e8 9d fd ff ff       	callq  43156 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   433b9:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   433be:	e9 82 fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
        return lsb(v >> 2);
   433c3:	41 c1 ee 02          	shr    $0x2,%r14d
   433c7:	41 0f bc ce          	bsf    %r14d,%ecx
   433cb:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   433d0:	0f 44 c8             	cmove  %eax,%ecx
   433d3:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   433d6:	ba a8 4b 04 00       	mov    $0x44ba8,%edx
   433db:	48 89 de             	mov    %rbx,%rsi
   433de:	4c 89 ef             	mov    %r13,%rdi
   433e1:	e8 70 fd ff ff       	callq  43156 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   433e6:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   433eb:	e9 55 fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
            return 'K' | 0x0D00;
   433f0:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   433f5:	e9 4b fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
            return '.' | 0x0700;
   433fa:	b8 2e 07 00 00       	mov    $0x72e,%eax
   433ff:	e9 41 fe ff ff       	jmpq   43245 <memusage::symbol_at(unsigned long) const+0x89>
    auto v = v_[pa / PAGESIZE];
   43404:	48 89 d9             	mov    %rbx,%rcx
   43407:	48 c1 e9 0c          	shr    $0xc,%rcx
   4340b:	49 8b 45 00          	mov    0x0(%r13),%rax
   4340f:	44 8b 34 88          	mov    (%rax,%rcx,4),%r14d
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43413:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43418:	48 39 c3             	cmp    %rax,%rbx
   4341b:	0f 83 eb fd ff ff    	jae    4320c <memusage::symbol_at(unsigned long) const+0x50>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43421:	41 83 fe 03          	cmp    $0x3,%r14d
   43425:	0f 97 c1             	seta   %cl
   43428:	e9 42 fe ff ff       	jmpq   4326f <memusage::symbol_at(unsigned long) const+0xb3>

000000000004342d <console_memviewer(proc*, int)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp, int show_virtual) {
   4342d:	f3 0f 1e fa          	endbr64 
   43431:	55                   	push   %rbp
   43432:	48 89 e5             	mov    %rsp,%rbp
   43435:	41 57                	push   %r15
   43437:	41 56                	push   %r14
   43439:	41 55                	push   %r13
   4343b:	41 54                	push   %r12
   4343d:	53                   	push   %rbx
   4343e:	48 83 ec 28          	sub    $0x28,%rsp
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   43442:	83 3d e3 8d 00 00 00 	cmpl   $0x0,0x8de3(%rip)        # 4c22c <ptable+0xc>
   43449:	75 3f                	jne    4348a <console_memviewer(proc*, int)+0x5d>
   4344b:	49 89 fe             	mov    %rdi,%r14
   4344e:	41 89 f7             	mov    %esi,%r15d

    // track physical memory
    static memusage mu;
   43451:	0f b6 05 30 5c 01 00 	movzbl 0x15c30(%rip),%eax        # 59088 <guard variable for console_memviewer(proc*, int)::mu>
   43458:	84 c0                	test   %al,%al
   4345a:	74 42                	je     4349e <console_memviewer(proc*, int)+0x71>
    mu.refresh();
   4345c:	bf 90 90 05 00       	mov    $0x59090,%edi
   43461:	e8 66 f8 ff ff       	callq  42ccc <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   43466:	ba 10 4b 04 00       	mov    $0x44b10,%edx
   4346b:	be 00 0f 00 00       	mov    $0xf00,%esi
   43470:	bf 20 00 00 00       	mov    $0x20,%edi
   43475:	b8 00 00 00 00       	mov    $0x0,%eax
   4347a:	e8 f8 0d 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
   4347f:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   43485:	e9 b6 00 00 00       	jmpq   43540 <console_memviewer(proc*, int)+0x113>
    assert(ptable[0].state == P_FREE);
   4348a:	ba f6 4a 04 00       	mov    $0x44af6,%edx
   4348f:	be f6 00 00 00       	mov    $0xf6,%esi
   43494:	bf ae 4a 04 00       	mov    $0x44aae,%edi
   43499:	e8 2c eb ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
    static memusage mu;
   4349e:	bf 88 90 05 00       	mov    $0x59088,%edi
   434a3:	e8 b3 f7 ff ff       	callq  42c5b <__cxa_guard_acquire>
   434a8:	85 c0                	test   %eax,%eax
   434aa:	74 b0                	je     4345c <console_memviewer(proc*, int)+0x2f>
        : v_(nullptr) {
   434ac:	48 c7 05 d9 5b 01 00 	movq   $0x0,0x15bd9(%rip)        # 59090 <console_memviewer(proc*, int)::mu>
   434b3:	00 00 00 00 
    static memusage mu;
   434b7:	bf 88 90 05 00       	mov    $0x59088,%edi
   434bc:	e8 ce f7 ff ff       	callq  42c8f <__cxa_guard_release>
   434c1:	eb 99                	jmp    4345c <console_memviewer(proc*, int)+0x2f>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   434c3:	44 89 e1             	mov    %r12d,%ecx
   434c6:	c1 e1 0c             	shl    $0xc,%ecx
   434c9:	41 8d 44 24 3f       	lea    0x3f(%r12),%eax
   434ce:	45 85 e4             	test   %r12d,%r12d
   434d1:	41 0f 49 c4          	cmovns %r12d,%eax
   434d5:	c1 f8 06             	sar    $0x6,%eax
   434d8:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   434dc:	c1 e7 04             	shl    $0x4,%edi
   434df:	83 c7 03             	add    $0x3,%edi
   434e2:	ba 21 4b 04 00       	mov    $0x44b21,%edx
   434e7:	be 00 0f 00 00       	mov    $0xf00,%esi
   434ec:	b8 00 00 00 00       	mov    $0x0,%eax
   434f1:	e8 81 0d 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   434f6:	8d 43 3f             	lea    0x3f(%rbx),%eax
   434f9:	85 db                	test   %ebx,%ebx
   434fb:	0f 49 c3             	cmovns %ebx,%eax
   434fe:	c1 f8 06             	sar    $0x6,%eax
   43501:	8d 54 80 05          	lea    0x5(%rax,%rax,4),%edx
   43505:	c1 e2 04             	shl    $0x4,%edx
   43508:	89 d8                	mov    %ebx,%eax
   4350a:	c1 f8 1f             	sar    $0x1f,%eax
   4350d:	c1 e8 1a             	shr    $0x1a,%eax
   43510:	01 c3                	add    %eax,%ebx
   43512:	83 e3 3f             	and    $0x3f,%ebx
   43515:	29 c3                	sub    %eax,%ebx
   43517:	8d 5c 1a 0c          	lea    0xc(%rdx,%rbx,1),%ebx
   4351b:	4c 89 ee             	mov    %r13,%rsi
   4351e:	bf 90 90 05 00       	mov    $0x59090,%edi
   43523:	e8 94 fc ff ff       	callq  431bc <memusage::symbol_at(unsigned long) const>
   43528:	48 63 db             	movslq %ebx,%rbx
   4352b:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%rbx,%rbx,1)
   43532:	00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   43533:	49 83 c4 01          	add    $0x1,%r12
   43537:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
   4353e:	74 15                	je     43555 <console_memviewer(proc*, int)+0x128>
   43540:	4d 89 e5             	mov    %r12,%r13
   43543:	49 c1 e5 0c          	shl    $0xc,%r13
   43547:	44 89 e3             	mov    %r12d,%ebx
        if (pn % 64 == 0) {
   4354a:	41 f6 c4 3f          	test   $0x3f,%r12b
   4354e:	75 a6                	jne    434f6 <console_memviewer(proc*, int)+0xc9>
   43550:	e9 6e ff ff ff       	jmpq   434c3 <console_memviewer(proc*, int)+0x96>
    }

    // print virtual memory
    if (vmp && vmp->pagetable && show_virtual) {
   43555:	4d 85 f6             	test   %r14,%r14
   43558:	74 0b                	je     43565 <console_memviewer(proc*, int)+0x138>
   4355a:	49 83 3e 00          	cmpq   $0x0,(%r14)
   4355e:	74 05                	je     43565 <console_memviewer(proc*, int)+0x138>
   43560:	45 85 ff             	test   %r15d,%r15d
   43563:	75 28                	jne    4358d <console_memviewer(proc*, int)+0x160>
        console_memviewer_virtual(mu, vmp);
    } else {
        console_printf(CPOS(10, 0), 0x0F00, "\n\n\n\n\n\n\n\n\n\n\n\n\n");
   43565:	ba 47 4b 04 00       	mov    $0x44b47,%edx
   4356a:	be 00 0f 00 00       	mov    $0xf00,%esi
   4356f:	bf 20 03 00 00       	mov    $0x320,%edi
   43574:	b8 00 00 00 00       	mov    $0x0,%eax
   43579:	e8 f9 0c 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
    }
}
   4357e:	48 83 c4 28          	add    $0x28,%rsp
   43582:	5b                   	pop    %rbx
   43583:	41 5c                	pop    %r12
   43585:	41 5d                	pop    %r13
   43587:	41 5e                	pop    %r14
   43589:	41 5f                	pop    %r15
   4358b:	5d                   	pop    %rbp
   4358c:	c3                   	retq   
    console_printf(CPOS(10, 26), 0x0F00,
   4358d:	41 8b 4e 08          	mov    0x8(%r14),%ecx
   43591:	ba 29 4b 04 00       	mov    $0x44b29,%edx
   43596:	be 00 0f 00 00       	mov    $0xf00,%esi
   4359b:	bf 3a 03 00 00       	mov    $0x33a,%edi
   435a0:	b8 00 00 00 00       	mov    $0x0,%eax
   435a5:	e8 cd 0c 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   435aa:	49 8b 06             	mov    (%r14),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   435ad:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   435b1:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   435b5:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   435bc:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   435c3:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   435ca:	00 
    real_find(va);
   435cb:	be 00 00 00 00       	mov    $0x0,%esi
   435d0:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   435d4:	e8 8b e0 ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   435d9:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   435dd:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   435e4:	77 98                	ja     4357e <console_memviewer(proc*, int)+0x151>
            pa &= ~0x1000UL;
   435e6:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   435ed:	ff 0f 00 
        return pa + (va_ & pageoffmask(level_));
   435f0:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
        uintptr_t pa = *pep_ & PTE_PAMASK;
   435f7:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   435fe:	ff 0f 00 
   43601:	e9 88 00 00 00       	jmpq   4368e <console_memviewer(proc*, int)+0x261>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   43606:	48 89 d8             	mov    %rbx,%rax
   43609:	48 c1 e8 12          	shr    $0x12,%rax
   4360d:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   43610:	c1 e7 04             	shl    $0x4,%edi
   43613:	81 c7 73 03 00 00    	add    $0x373,%edi
   43619:	48 89 d9             	mov    %rbx,%rcx
   4361c:	ba 21 4b 04 00       	mov    $0x44b21,%edx
   43621:	be 00 0f 00 00       	mov    $0xf00,%esi
   43626:	b8 00 00 00 00       	mov    $0x0,%eax
   4362b:	e8 47 0c 00 00       	callq  44277 <console_printf(int, int, char const*, ...)>
   43630:	eb 6d                	jmp    4369f <console_memviewer(proc*, int)+0x272>
                uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   43632:	89 d0                	mov    %edx,%eax
   43634:	66 c1 e8 04          	shr    $0x4,%ax
   43638:	31 d0                	xor    %edx,%eax
   4363a:	89 c1                	mov    %eax,%ecx
   4363c:	66 81 e1 00 0f       	and    $0xf00,%cx
                ch ^= z | (z << 4);
   43641:	25 00 0f 00 00       	and    $0xf00,%eax
   43646:	c1 e0 04             	shl    $0x4,%eax
   43649:	09 c8                	or     %ecx,%eax
   4364b:	31 c2                	xor    %eax,%edx
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   4364d:	48 c1 eb 12          	shr    $0x12,%rbx
   43651:	48 8d 04 9b          	lea    (%rbx,%rbx,4),%rax
   43655:	48 c1 e0 04          	shl    $0x4,%rax
   43659:	49 8d 84 04 7c 03 00 	lea    0x37c(%r12,%rax,1),%rax
   43660:	00 
   43661:	66 89 94 00 00 80 0b 	mov    %dx,0xb8000(%rax,%rax,1)
   43668:	00 
    return find(va_ + delta);
   43669:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   4366d:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   43674:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43678:	e8 e7 df ff ff       	callq  41664 <vmiter::real_find(unsigned long)>
    return va_;
   4367d:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43681:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43688:	0f 87 f0 fe ff ff    	ja     4357e <console_memviewer(proc*, int)+0x151>
        unsigned long pn = it.va() / PAGESIZE;
   4368e:	49 89 dc             	mov    %rbx,%r12
   43691:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   43695:	41 83 e4 3f          	and    $0x3f,%r12d
   43699:	0f 84 67 ff ff ff    	je     43606 <console_memviewer(proc*, int)+0x1d9>
    return (*pep_ & PTE_P) != 0;
   4369f:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   436a3:	48 8b 00             	mov    (%rax),%rax
            ch = ' ';
   436a6:	ba 20 00 00 00       	mov    $0x20,%edx
        if (!it.present()) {
   436ab:	a8 01                	test   $0x1,%al
   436ad:	74 9e                	je     4364d <console_memviewer(proc*, int)+0x220>
        if (level_ > 0) {
   436af:	8b 4d c0             	mov    -0x40(%rbp),%ecx
            pa &= ~0x1000UL;
   436b2:	48 89 c6             	mov    %rax,%rsi
   436b5:	4c 21 ee             	and    %r13,%rsi
        uintptr_t pa = *pep_ & PTE_PAMASK;
   436b8:	48 89 c2             	mov    %rax,%rdx
   436bb:	4c 21 f2             	and    %r14,%rdx
   436be:	85 c9                	test   %ecx,%ecx
   436c0:	48 0f 4f d6          	cmovg  %rsi,%rdx
   436c4:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   436c8:	4c 89 fe             	mov    %r15,%rsi
   436cb:	48 d3 e6             	shl    %cl,%rsi
   436ce:	48 f7 d6             	not    %rsi
   436d1:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   436d5:	48 01 d6             	add    %rdx,%rsi
            ch = mu.symbol_at(it.pa());
   436d8:	bf 90 90 05 00       	mov    $0x59090,%edi
   436dd:	e8 da fa ff ff       	callq  431bc <memusage::symbol_at(unsigned long) const>
   436e2:	89 c2                	mov    %eax,%edx
    return (*pep_ & perm_ & p) == p;
   436e4:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   436e8:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   436ec:	48 23 01             	and    (%rcx),%rax
   436ef:	83 e0 05             	and    $0x5,%eax
            if (it.user()) { // switch foreground & background colors
   436f2:	48 83 f8 05          	cmp    $0x5,%rax
   436f6:	0f 85 51 ff ff ff    	jne    4364d <console_memviewer(proc*, int)+0x220>
   436fc:	e9 31 ff ff ff       	jmpq   43632 <console_memviewer(proc*, int)+0x205>

0000000000043701 <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   43701:	f3 0f 1e fa          	endbr64 
   43705:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43708:	48 85 d2             	test   %rdx,%rdx
   4370b:	74 17                	je     43724 <memcpy+0x23>
   4370d:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   43712:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   43717:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   4371b:	48 83 c1 01          	add    $0x1,%rcx
   4371f:	48 39 d1             	cmp    %rdx,%rcx
   43722:	75 ee                	jne    43712 <memcpy+0x11>
    }
    return dst;
}
   43724:	c3                   	retq   

0000000000043725 <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   43725:	f3 0f 1e fa          	endbr64 
   43729:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   4372c:	48 39 fe             	cmp    %rdi,%rsi
   4372f:	73 09                	jae    4373a <memmove+0x15>
   43731:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   43735:	48 39 cf             	cmp    %rcx,%rdi
   43738:	72 1d                	jb     43757 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   4373a:	b9 00 00 00 00       	mov    $0x0,%ecx
   4373f:	48 85 d2             	test   %rdx,%rdx
   43742:	74 12                	je     43756 <memmove+0x31>
            *d++ = *s++;
   43744:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   43748:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   4374c:	48 83 c1 01          	add    $0x1,%rcx
   43750:	48 39 d1             	cmp    %rdx,%rcx
   43753:	75 ef                	jne    43744 <memmove+0x1f>
        }
    }
    return dst;
}
   43755:	c3                   	retq   
   43756:	c3                   	retq   
        while (n-- > 0) {
   43757:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   4375b:	48 85 d2             	test   %rdx,%rdx
   4375e:	74 f5                	je     43755 <memmove+0x30>
            *--d = *--s;
   43760:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   43764:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   43767:	48 83 e9 01          	sub    $0x1,%rcx
   4376b:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   4376f:	75 ef                	jne    43760 <memmove+0x3b>
   43771:	c3                   	retq   

0000000000043772 <memset>:

void* memset(void* v, int c, size_t n) {
   43772:	f3 0f 1e fa          	endbr64 
   43776:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43779:	48 85 d2             	test   %rdx,%rdx
   4377c:	74 13                	je     43791 <memset+0x1f>
   4377e:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
   43782:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
   43785:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43788:	48 83 c2 01          	add    $0x1,%rdx
   4378c:	48 39 d1             	cmp    %rdx,%rcx
   4378f:	75 f4                	jne    43785 <memset+0x13>
    }
    return v;
}
   43791:	c3                   	retq   

0000000000043792 <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   43792:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   43796:	80 3f 00             	cmpb   $0x0,(%rdi)
   43799:	74 10                	je     437ab <strlen+0x19>
   4379b:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   437a0:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   437a4:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   437a8:	75 f6                	jne    437a0 <strlen+0xe>
   437aa:	c3                   	retq   
   437ab:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   437b0:	c3                   	retq   

00000000000437b1 <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   437b1:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   437b5:	48 85 f6             	test   %rsi,%rsi
   437b8:	74 15                	je     437cf <strnlen+0x1e>
   437ba:	b8 00 00 00 00       	mov    $0x0,%eax
   437bf:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   437c3:	74 0d                	je     437d2 <strnlen+0x21>
        ++n;
   437c5:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   437c9:	48 39 c6             	cmp    %rax,%rsi
   437cc:	75 f1                	jne    437bf <strnlen+0xe>
   437ce:	c3                   	retq   
   437cf:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
   437d2:	c3                   	retq   

00000000000437d3 <strcmp>:
        *d++ = *src++;
    } while (d[-1]);
    return dst;
}

int strcmp(const char* a, const char* b) {
   437d3:	f3 0f 1e fa          	endbr64 
    while (true) {
        unsigned char ac = *a, bc = *b;
   437d7:	0f b6 17             	movzbl (%rdi),%edx
   437da:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   437dd:	84 d2                	test   %dl,%dl
   437df:	41 0f 94 c0          	sete   %r8b
   437e3:	38 ca                	cmp    %cl,%dl
   437e5:	0f 95 c0             	setne  %al
   437e8:	41 08 c0             	or     %al,%r8b
   437eb:	75 2a                	jne    43817 <strcmp+0x44>
   437ed:	b8 01 00 00 00       	mov    $0x1,%eax
   437f2:	84 c9                	test   %cl,%cl
   437f4:	74 21                	je     43817 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   437f6:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   437fa:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   437fe:	48 83 c0 01          	add    $0x1,%rax
   43802:	84 d2                	test   %dl,%dl
   43804:	41 0f 94 c1          	sete   %r9b
   43808:	84 c9                	test   %cl,%cl
   4380a:	41 0f 94 c0          	sete   %r8b
   4380e:	45 08 c1             	or     %r8b,%r9b
   43811:	75 04                	jne    43817 <strcmp+0x44>
   43813:	38 ca                	cmp    %cl,%dl
   43815:	74 df                	je     437f6 <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   43817:	38 ca                	cmp    %cl,%dl
   43819:	0f 97 c0             	seta   %al
   4381c:	0f b6 c0             	movzbl %al,%eax
   4381f:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   43822:	c3                   	retq   

0000000000043823 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   43823:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
   43827:	0f b6 07             	movzbl (%rdi),%eax
   4382a:	84 c0                	test   %al,%al
   4382c:	74 10                	je     4383e <strchr+0x1b>
   4382e:	40 38 f0             	cmp    %sil,%al
   43831:	74 18                	je     4384b <strchr+0x28>
        ++s;
   43833:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   43837:	0f b6 07             	movzbl (%rdi),%eax
   4383a:	84 c0                	test   %al,%al
   4383c:	75 f0                	jne    4382e <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
   4383e:	40 84 f6             	test   %sil,%sil
   43841:	b8 00 00 00 00       	mov    $0x0,%eax
   43846:	48 0f 44 c7          	cmove  %rdi,%rax
   4384a:	c3                   	retq   
   4384b:	48 89 f8             	mov    %rdi,%rax
    }
}
   4384e:	c3                   	retq   
   4384f:	90                   	nop

0000000000043850 <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   43850:	f3 0f 1e fa          	endbr64 
   43854:	55                   	push   %rbp
   43855:	48 89 e5             	mov    %rsp,%rbp
   43858:	41 57                	push   %r15
   4385a:	41 56                	push   %r14
   4385c:	41 55                	push   %r13
   4385e:	41 54                	push   %r12
   43860:	53                   	push   %rbx
   43861:	48 83 ec 58          	sub    $0x58,%rsp
   43865:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   43869:	0f b6 02             	movzbl (%rdx),%eax
   4386c:	84 c0                	test   %al,%al
   4386e:	0f 84 c6 07 00 00    	je     4403a <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
   43874:	49 89 fe             	mov    %rdi,%r14
   43877:	41 89 f7             	mov    %esi,%r15d
   4387a:	48 89 d3             	mov    %rdx,%rbx
   4387d:	e9 b9 03 00 00       	jmpq   43c3b <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
   43882:	4c 8d 63 01          	lea    0x1(%rbx),%r12
   43886:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
   4388a:	84 db                	test   %bl,%bl
   4388c:	0f 84 8a 07 00 00    	je     4401c <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
   43892:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
   43898:	0f be f3             	movsbl %bl,%esi
   4389b:	bf f0 52 04 00       	mov    $0x452f0,%edi
   438a0:	e8 7e ff ff ff       	callq  43823 <strchr>
   438a5:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   438a8:	48 85 c0             	test   %rax,%rax
   438ab:	74 74                	je     43921 <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
   438ad:	48 81 e9 f0 52 04 00 	sub    $0x452f0,%rcx
   438b4:	b8 01 00 00 00       	mov    $0x1,%eax
   438b9:	d3 e0                	shl    %cl,%eax
   438bb:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
   438be:	49 83 c4 01          	add    $0x1,%r12
   438c2:	41 0f b6 1c 24       	movzbl (%r12),%ebx
   438c7:	84 db                	test   %bl,%bl
   438c9:	75 cd                	jne    43898 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
   438cb:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
   438d2:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
   438d9:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
   438de:	0f 84 cc 00 00 00    	je     439b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
   438e4:	41 0f b6 04 24       	movzbl (%r12),%eax
   438e9:	3c 6c                	cmp    $0x6c,%al
   438eb:	0f 84 54 01 00 00    	je     43a45 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   438f1:	0f 8f 42 01 00 00    	jg     43a39 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
   438f7:	3c 68                	cmp    $0x68,%al
   438f9:	0f 85 68 01 00 00    	jne    43a67 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
   438ff:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
   43904:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   4390a:	8d 50 bd             	lea    -0x43(%rax),%edx
   4390d:	80 fa 35             	cmp    $0x35,%dl
   43910:	0f 87 aa 05 00 00    	ja     43ec0 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   43916:	0f b6 d2             	movzbl %dl,%edx
   43919:	3e ff 24 d5 30 4c 04 	notrack jmpq *0x44c30(,%rdx,8)
   43920:	00 
        if (*format >= '1' && *format <= '9') {
   43921:	8d 43 cf             	lea    -0x31(%rbx),%eax
   43924:	3c 08                	cmp    $0x8,%al
   43926:	77 35                	ja     4395d <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43928:	41 0f b6 04 24       	movzbl (%r12),%eax
   4392d:	8d 50 d0             	lea    -0x30(%rax),%edx
   43930:	80 fa 09             	cmp    $0x9,%dl
   43933:	77 63                	ja     43998 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
   43935:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
   4393a:	49 83 c4 01          	add    $0x1,%r12
   4393e:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
   43941:	0f be c0             	movsbl %al,%eax
   43944:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43948:	41 0f b6 04 24       	movzbl (%r12),%eax
   4394d:	8d 48 d0             	lea    -0x30(%rax),%ecx
   43950:	80 f9 09             	cmp    $0x9,%cl
   43953:	76 e5                	jbe    4393a <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
   43955:	89 55 98             	mov    %edx,-0x68(%rbp)
   43958:	e9 75 ff ff ff       	jmpq   438d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
   4395d:	80 fb 2a             	cmp    $0x2a,%bl
   43960:	75 42                	jne    439a4 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
   43962:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43966:	8b 07                	mov    (%rdi),%eax
   43968:	83 f8 2f             	cmp    $0x2f,%eax
   4396b:	77 19                	ja     43986 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
   4396d:	89 c2                	mov    %eax,%edx
   4396f:	48 03 57 10          	add    0x10(%rdi),%rdx
   43973:	83 c0 08             	add    $0x8,%eax
   43976:	89 07                	mov    %eax,(%rdi)
   43978:	8b 02                	mov    (%rdx),%eax
   4397a:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
   4397d:	49 83 c4 01          	add    $0x1,%r12
   43981:	e9 4c ff ff ff       	jmpq   438d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
   43986:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   4398a:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4398e:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43992:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43996:	eb e0                	jmp    43978 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   43998:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
   4399f:	e9 2e ff ff ff       	jmpq   438d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
   439a4:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
   439ab:	e9 22 ff ff ff       	jmpq   438d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
   439b0:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
   439b5:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   439bb:	8d 48 d0             	lea    -0x30(%rax),%ecx
   439be:	80 f9 09             	cmp    $0x9,%cl
   439c1:	76 13                	jbe    439d6 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
   439c3:	3c 2a                	cmp    $0x2a,%al
   439c5:	74 32                	je     439f9 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
   439c7:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
   439ca:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
   439d1:	e9 0e ff ff ff       	jmpq   438e4 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   439d6:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
   439db:	48 83 c2 01          	add    $0x1,%rdx
   439df:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
   439e2:	0f be c0             	movsbl %al,%eax
   439e5:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   439e9:	0f b6 02             	movzbl (%rdx),%eax
   439ec:	8d 48 d0             	lea    -0x30(%rax),%ecx
   439ef:	80 f9 09             	cmp    $0x9,%cl
   439f2:	76 e7                	jbe    439db <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
   439f4:	49 89 d4             	mov    %rdx,%r12
   439f7:	eb 1c                	jmp    43a15 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
   439f9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   439fd:	8b 01                	mov    (%rcx),%eax
   439ff:	83 f8 2f             	cmp    $0x2f,%eax
   43a02:	77 23                	ja     43a27 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
   43a04:	89 c2                	mov    %eax,%edx
   43a06:	48 03 51 10          	add    0x10(%rcx),%rdx
   43a0a:	83 c0 08             	add    $0x8,%eax
   43a0d:	89 01                	mov    %eax,(%rcx)
   43a0f:	8b 32                	mov    (%rdx),%esi
                ++format;
   43a11:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
   43a15:	85 f6                	test   %esi,%esi
   43a17:	b8 00 00 00 00       	mov    $0x0,%eax
   43a1c:	0f 49 c6             	cmovns %esi,%eax
   43a1f:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   43a22:	e9 bd fe ff ff       	jmpq   438e4 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
   43a27:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43a2b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43a2f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43a33:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43a37:	eb d6                	jmp    43a0f <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
   43a39:	3c 74                	cmp    $0x74,%al
   43a3b:	74 08                	je     43a45 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   43a3d:	3c 7a                	cmp    $0x7a,%al
   43a3f:	0f 85 e2 05 00 00    	jne    44027 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
   43a45:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
   43a4a:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   43a50:	8d 50 bd             	lea    -0x43(%rax),%edx
   43a53:	80 fa 35             	cmp    $0x35,%dl
   43a56:	0f 87 64 04 00 00    	ja     43ec0 <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   43a5c:	0f b6 d2             	movzbl %dl,%edx
   43a5f:	3e ff 24 d5 e0 4d 04 	notrack jmpq *0x44de0(,%rdx,8)
   43a66:	00 
   43a67:	8d 50 bd             	lea    -0x43(%rax),%edx
   43a6a:	80 fa 35             	cmp    $0x35,%dl
   43a6d:	0f 87 4a 04 00 00    	ja     43ebd <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
   43a73:	0f b6 d2             	movzbl %dl,%edx
   43a76:	3e ff 24 d5 90 4f 04 	notrack jmpq *0x44f90(,%rdx,8)
   43a7d:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43a7e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43a82:	8b 07                	mov    (%rdi),%eax
   43a84:	83 f8 2f             	cmp    $0x2f,%eax
   43a87:	0f 87 c9 01 00 00    	ja     43c56 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
   43a8d:	89 c2                	mov    %eax,%edx
   43a8f:	48 03 57 10          	add    0x10(%rdi),%rdx
   43a93:	83 c0 08             	add    $0x8,%eax
   43a96:	89 07                	mov    %eax,(%rdi)
   43a98:	48 8b 12             	mov    (%rdx),%rdx
   43a9b:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   43a9e:	48 89 d0             	mov    %rdx,%rax
   43aa1:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   43aa5:	49 89 d0             	mov    %rdx,%r8
   43aa8:	49 f7 d8             	neg    %r8
   43aab:	25 80 00 00 00       	and    $0x80,%eax
   43ab0:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   43ab4:	41 09 c5             	or     %eax,%r13d
   43ab7:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
   43abb:	bb 54 4b 04 00       	mov    $0x44b54,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
   43ac0:	44 89 e8             	mov    %r13d,%eax
   43ac3:	83 e0 20             	and    $0x20,%eax
   43ac6:	89 45 9c             	mov    %eax,-0x64(%rbp)
   43ac9:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
   43acf:	0f 85 0e 04 00 00    	jne    43ee3 <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   43ad5:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
   43ad9:	44 89 e8             	mov    %r13d,%eax
   43adc:	83 e0 60             	and    $0x60,%eax
   43adf:	83 f8 60             	cmp    $0x60,%eax
   43ae2:	0f 84 3e 04 00 00    	je     43f26 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   43ae8:	44 89 e8             	mov    %r13d,%eax
   43aeb:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
   43aee:	48 c7 45 a8 54 4b 04 	movq   $0x44b54,-0x58(%rbp)
   43af5:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   43af6:	83 f8 21             	cmp    $0x21,%eax
   43af9:	0f 84 66 04 00 00    	je     43f65 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   43aff:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   43b02:	89 c8                	mov    %ecx,%eax
   43b04:	f7 d0                	not    %eax
   43b06:	c1 e8 1f             	shr    $0x1f,%eax
   43b09:	89 45 88             	mov    %eax,-0x78(%rbp)
   43b0c:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   43b10:	0f 85 8b 04 00 00    	jne    43fa1 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
   43b16:	84 c0                	test   %al,%al
   43b18:	0f 84 83 04 00 00    	je     43fa1 <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
   43b1e:	48 63 f1             	movslq %ecx,%rsi
   43b21:	48 89 df             	mov    %rbx,%rdi
   43b24:	e8 88 fc ff ff       	callq  437b1 <strnlen>
   43b29:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
   43b2c:	8b 45 8c             	mov    -0x74(%rbp),%eax
   43b2f:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
   43b32:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   43b39:	83 f8 22             	cmp    $0x22,%eax
   43b3c:	0f 84 97 04 00 00    	je     43fd9 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
   43b42:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   43b46:	e8 47 fc ff ff       	callq  43792 <strlen>
   43b4b:	8b 55 a4             	mov    -0x5c(%rbp),%edx
   43b4e:	03 55 a0             	add    -0x60(%rbp),%edx
   43b51:	8b 7d 98             	mov    -0x68(%rbp),%edi
   43b54:	29 d7                	sub    %edx,%edi
   43b56:	89 fa                	mov    %edi,%edx
   43b58:	29 c2                	sub    %eax,%edx
   43b5a:	89 55 98             	mov    %edx,-0x68(%rbp)
   43b5d:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43b60:	41 f6 c5 04          	test   $0x4,%r13b
   43b64:	75 32                	jne    43b98 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
   43b66:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43b69:	85 d2                	test   %edx,%edx
   43b6b:	7e 2b                	jle    43b98 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
   43b6d:	49 8b 06             	mov    (%r14),%rax
   43b70:	44 89 fa             	mov    %r15d,%edx
   43b73:	be 20 00 00 00       	mov    $0x20,%esi
   43b78:	4c 89 f7             	mov    %r14,%rdi
   43b7b:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   43b7d:	41 83 ed 01          	sub    $0x1,%r13d
   43b81:	45 85 ed             	test   %r13d,%r13d
   43b84:	7f e7                	jg     43b6d <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
   43b86:	8b 7d 98             	mov    -0x68(%rbp),%edi
   43b89:	85 ff                	test   %edi,%edi
   43b8b:	b8 01 00 00 00       	mov    $0x1,%eax
   43b90:	0f 4f c7             	cmovg  %edi,%eax
   43b93:	29 c7                	sub    %eax,%edi
   43b95:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
   43b98:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   43b9c:	0f b6 00             	movzbl (%rax),%eax
   43b9f:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
   43ba3:	84 c0                	test   %al,%al
   43ba5:	74 1b                	je     43bc2 <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
   43ba7:	0f b6 f0             	movzbl %al,%esi
   43baa:	49 8b 06             	mov    (%r14),%rax
   43bad:	44 89 fa             	mov    %r15d,%edx
   43bb0:	4c 89 f7             	mov    %r14,%rdi
   43bb3:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
   43bb5:	49 83 c5 01          	add    $0x1,%r13
   43bb9:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
   43bbe:	84 c0                	test   %al,%al
   43bc0:	75 e5                	jne    43ba7 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
   43bc2:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
   43bc6:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
   43bca:	7e 16                	jle    43be2 <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
   43bcc:	49 8b 06             	mov    (%r14),%rax
   43bcf:	44 89 fa             	mov    %r15d,%edx
   43bd2:	be 30 00 00 00       	mov    $0x30,%esi
   43bd7:	4c 89 f7             	mov    %r14,%rdi
   43bda:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
   43bdc:	41 83 ed 01          	sub    $0x1,%r13d
   43be0:	75 ea                	jne    43bcc <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
   43be2:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
   43be6:	7e 22                	jle    43c0a <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
   43be8:	8b 45 a0             	mov    -0x60(%rbp),%eax
   43beb:	8d 40 ff             	lea    -0x1(%rax),%eax
   43bee:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
   43bf3:	0f b6 33             	movzbl (%rbx),%esi
   43bf6:	49 8b 06             	mov    (%r14),%rax
   43bf9:	44 89 fa             	mov    %r15d,%edx
   43bfc:	4c 89 f7             	mov    %r14,%rdi
   43bff:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   43c01:	48 83 c3 01          	add    $0x1,%rbx
   43c05:	4c 39 eb             	cmp    %r13,%rbx
   43c08:	75 e9                	jne    43bf3 <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
   43c0a:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
   43c0d:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   43c11:	7e 15                	jle    43c28 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
   43c13:	49 8b 06             	mov    (%r14),%rax
   43c16:	44 89 fa             	mov    %r15d,%edx
   43c19:	be 20 00 00 00       	mov    $0x20,%esi
   43c1e:	4c 89 f7             	mov    %r14,%rdi
   43c21:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
   43c23:	83 eb 01             	sub    $0x1,%ebx
   43c26:	75 eb                	jne    43c13 <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
   43c28:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   43c2d:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   43c33:	84 c0                	test   %al,%al
   43c35:	0f 84 ff 03 00 00    	je     4403a <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
   43c3b:	3c 25                	cmp    $0x25,%al
   43c3d:	0f 84 3f fc ff ff    	je     43882 <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
   43c43:	0f b6 f0             	movzbl %al,%esi
   43c46:	49 8b 06             	mov    (%r14),%rax
   43c49:	44 89 fa             	mov    %r15d,%edx
   43c4c:	4c 89 f7             	mov    %r14,%rdi
   43c4f:	ff 10                	callq  *(%rax)
            continue;
   43c51:	49 89 dc             	mov    %rbx,%r12
   43c54:	eb d2                	jmp    43c28 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43c56:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43c5a:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43c5e:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c62:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43c66:	e9 2d fe ff ff       	jmpq   43a98 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
   43c6b:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
   43c6e:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43c72:	8b 01                	mov    (%rcx),%eax
   43c74:	83 f8 2f             	cmp    $0x2f,%eax
   43c77:	77 13                	ja     43c8c <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
   43c79:	89 c2                	mov    %eax,%edx
   43c7b:	48 03 51 10          	add    0x10(%rcx),%rdx
   43c7f:	83 c0 08             	add    $0x8,%eax
   43c82:	89 01                	mov    %eax,(%rcx)
   43c84:	48 63 12             	movslq (%rdx),%rdx
   43c87:	e9 12 fe ff ff       	jmpq   43a9e <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
   43c8c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43c90:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43c94:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43c98:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43c9c:	eb e6                	jmp    43c84 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
   43c9e:	49 89 cc             	mov    %rcx,%r12
   43ca1:	b8 01 00 00 00       	mov    $0x1,%eax
   43ca6:	be 0a 00 00 00       	mov    $0xa,%esi
   43cab:	e9 a8 00 00 00       	jmpq   43d58 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   43cb0:	49 89 cc             	mov    %rcx,%r12
   43cb3:	b8 00 00 00 00       	mov    $0x0,%eax
   43cb8:	be 0a 00 00 00       	mov    $0xa,%esi
   43cbd:	e9 96 00 00 00       	jmpq   43d58 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   43cc2:	b8 00 00 00 00       	mov    $0x0,%eax
   43cc7:	be 0a 00 00 00       	mov    $0xa,%esi
   43ccc:	e9 87 00 00 00       	jmpq   43d58 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   43cd1:	b8 00 00 00 00       	mov    $0x0,%eax
   43cd6:	be 0a 00 00 00       	mov    $0xa,%esi
   43cdb:	eb 7b                	jmp    43d58 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   43cdd:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43ce1:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43ce5:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43ce9:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43ced:	e9 84 00 00 00       	jmpq   43d76 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
   43cf2:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43cf6:	8b 01                	mov    (%rcx),%eax
   43cf8:	83 f8 2f             	cmp    $0x2f,%eax
   43cfb:	77 10                	ja     43d0d <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
   43cfd:	89 c2                	mov    %eax,%edx
   43cff:	48 03 51 10          	add    0x10(%rcx),%rdx
   43d03:	83 c0 08             	add    $0x8,%eax
   43d06:	89 01                	mov    %eax,(%rcx)
   43d08:	44 8b 02             	mov    (%rdx),%r8d
   43d0b:	eb 6c                	jmp    43d79 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
   43d0d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43d11:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43d15:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43d19:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43d1d:	eb e9                	jmp    43d08 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
   43d1f:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
   43d22:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
   43d29:	bf 20 53 04 00       	mov    $0x45320,%edi
   43d2e:	e9 c0 01 00 00       	jmpq   43ef3 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   43d33:	49 89 cc             	mov    %rcx,%r12
   43d36:	b8 01 00 00 00       	mov    $0x1,%eax
   43d3b:	eb 16                	jmp    43d53 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   43d3d:	49 89 cc             	mov    %rcx,%r12
   43d40:	b8 00 00 00 00       	mov    $0x0,%eax
   43d45:	eb 0c                	jmp    43d53 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
   43d47:	b8 00 00 00 00       	mov    $0x0,%eax
   43d4c:	eb 05                	jmp    43d53 <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   43d4e:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   43d53:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   43d58:	85 c0                	test   %eax,%eax
   43d5a:	74 96                	je     43cf2 <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
   43d5c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43d60:	8b 01                	mov    (%rcx),%eax
   43d62:	83 f8 2f             	cmp    $0x2f,%eax
   43d65:	0f 87 72 ff ff ff    	ja     43cdd <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
   43d6b:	89 c2                	mov    %eax,%edx
   43d6d:	48 03 51 10          	add    0x10(%rcx),%rdx
   43d71:	83 c0 08             	add    $0x8,%eax
   43d74:	89 01                	mov    %eax,(%rcx)
   43d76:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
   43d79:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
   43d7d:	85 f6                	test   %esi,%esi
   43d7f:	79 9e                	jns    43d1f <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
   43d81:	41 89 f1             	mov    %esi,%r9d
   43d84:	f7 de                	neg    %esi
   43d86:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
   43d8d:	bf 00 53 04 00       	mov    $0x45300,%edi
   43d92:	e9 5c 01 00 00       	jmpq   43ef3 <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   43d97:	49 89 cc             	mov    %rcx,%r12
   43d9a:	b8 01 00 00 00       	mov    $0x1,%eax
   43d9f:	eb 16                	jmp    43db7 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   43da1:	49 89 cc             	mov    %rcx,%r12
   43da4:	b8 00 00 00 00       	mov    $0x0,%eax
   43da9:	eb 0c                	jmp    43db7 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
   43dab:	b8 00 00 00 00       	mov    $0x0,%eax
   43db0:	eb 05                	jmp    43db7 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   43db2:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   43db7:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   43dbc:	eb 9a                	jmp    43d58 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   43dbe:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
   43dc1:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43dc5:	8b 01                	mov    (%rcx),%eax
   43dc7:	83 f8 2f             	cmp    $0x2f,%eax
   43dca:	77 21                	ja     43ded <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
   43dcc:	89 c2                	mov    %eax,%edx
   43dce:	48 03 51 10          	add    0x10(%rcx),%rdx
   43dd2:	83 c0 08             	add    $0x8,%eax
   43dd5:	89 01                	mov    %eax,(%rcx)
   43dd7:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   43dda:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
   43de1:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   43de6:	eb 99                	jmp    43d81 <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
   43de8:	49 89 cc             	mov    %rcx,%r12
   43deb:	eb d4                	jmp    43dc1 <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
   43ded:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43df1:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43df5:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43df9:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43dfd:	eb d8                	jmp    43dd7 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
   43dff:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
   43e02:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43e06:	8b 07                	mov    (%rdi),%eax
   43e08:	83 f8 2f             	cmp    $0x2f,%eax
   43e0b:	77 1e                	ja     43e2b <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
   43e0d:	89 c2                	mov    %eax,%edx
   43e0f:	48 03 57 10          	add    0x10(%rdi),%rdx
   43e13:	83 c0 08             	add    $0x8,%eax
   43e16:	89 07                	mov    %eax,(%rdi)
   43e18:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
   43e1b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   43e21:	e9 9a fc ff ff       	jmpq   43ac0 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   43e26:	49 89 cc             	mov    %rcx,%r12
   43e29:	eb d7                	jmp    43e02 <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
   43e2b:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43e2f:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43e33:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43e37:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43e3b:	eb db                	jmp    43e18 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
   43e3d:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
   43e40:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43e44:	8b 01                	mov    (%rcx),%eax
   43e46:	83 f8 2f             	cmp    $0x2f,%eax
   43e49:	77 18                	ja     43e63 <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
   43e4b:	89 c2                	mov    %eax,%edx
   43e4d:	48 03 51 10          	add    0x10(%rcx),%rdx
   43e51:	83 c0 08             	add    $0x8,%eax
   43e54:	89 01                	mov    %eax,(%rcx)
   43e56:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
   43e59:	e9 ca fd ff ff       	jmpq   43c28 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
   43e5e:	49 89 cc             	mov    %rcx,%r12
   43e61:	eb dd                	jmp    43e40 <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
   43e63:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43e67:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43e6b:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43e6f:	48 89 47 08          	mov    %rax,0x8(%rdi)
   43e73:	eb e1                	jmp    43e56 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
   43e75:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
   43e78:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   43e7c:	8b 07                	mov    (%rdi),%eax
   43e7e:	83 f8 2f             	cmp    $0x2f,%eax
   43e81:	77 28                	ja     43eab <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
   43e83:	89 c2                	mov    %eax,%edx
   43e85:	48 03 57 10          	add    0x10(%rdi),%rdx
   43e89:	83 c0 08             	add    $0x8,%eax
   43e8c:	89 07                	mov    %eax,(%rdi)
   43e8e:	8b 02                	mov    (%rdx),%eax
   43e90:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   43e93:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   43e97:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   43e9b:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   43ea1:	e9 1a fc ff ff       	jmpq   43ac0 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   43ea6:	49 89 cc             	mov    %rcx,%r12
   43ea9:	eb cd                	jmp    43e78 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
   43eab:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   43eaf:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   43eb3:	48 8d 42 08          	lea    0x8(%rdx),%rax
   43eb7:	48 89 41 08          	mov    %rax,0x8(%rcx)
   43ebb:	eb d1                	jmp    43e8e <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
   43ebd:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
   43ec0:	84 c0                	test   %al,%al
   43ec2:	0f 85 3b 01 00 00    	jne    44003 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
   43ec8:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
   43ecc:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
   43ed0:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
   43ed4:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   43ed8:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   43ede:	e9 dd fb ff ff       	jmpq   43ac0 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
   43ee3:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
   43ee9:	bf 20 53 04 00       	mov    $0x45320,%edi
        if (flags & FLAG_NUMERIC) {
   43eee:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
   43ef3:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   43ef7:	4c 89 c1             	mov    %r8,%rcx
   43efa:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
   43efe:	48 63 f6             	movslq %esi,%rsi
   43f01:	48 83 eb 01          	sub    $0x1,%rbx
   43f05:	48 89 c8             	mov    %rcx,%rax
   43f08:	ba 00 00 00 00       	mov    $0x0,%edx
   43f0d:	48 f7 f6             	div    %rsi
   43f10:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   43f14:	88 13                	mov    %dl,(%rbx)
        val /= base;
   43f16:	48 89 ca             	mov    %rcx,%rdx
   43f19:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   43f1c:	48 39 d6             	cmp    %rdx,%rsi
   43f1f:	76 e0                	jbe    43f01 <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
   43f21:	e9 af fb ff ff       	jmpq   43ad5 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
   43f26:	48 c7 45 a8 1d 4c 04 	movq   $0x44c1d,-0x58(%rbp)
   43f2d:	00 
            if (flags & FLAG_NEGATIVE) {
   43f2e:	41 f6 c5 80          	test   $0x80,%r13b
   43f32:	0f 85 c7 fb ff ff    	jne    43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
   43f38:	48 c7 45 a8 1b 4c 04 	movq   $0x44c1b,-0x58(%rbp)
   43f3f:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
   43f40:	41 f6 c5 10          	test   $0x10,%r13b
   43f44:	0f 85 b5 fb ff ff    	jne    43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
   43f4a:	41 f6 c5 08          	test   $0x8,%r13b
   43f4e:	ba 54 4b 04 00       	mov    $0x44b54,%edx
   43f53:	b8 e6 48 04 00       	mov    $0x448e6,%eax
   43f58:	48 0f 44 c2          	cmove  %rdx,%rax
   43f5c:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   43f60:	e9 9a fb ff ff       	jmpq   43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
   43f65:	41 8d 41 10          	lea    0x10(%r9),%eax
   43f69:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   43f6e:	0f 85 8b fb ff ff    	jne    43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
   43f74:	4d 85 c0             	test   %r8,%r8
   43f77:	75 0d                	jne    43f86 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   43f79:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
   43f80:	0f 84 79 fb ff ff    	je     43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
   43f86:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
   43f8a:	ba 18 4c 04 00       	mov    $0x44c18,%edx
   43f8f:	b8 1f 4c 04 00       	mov    $0x44c1f,%eax
   43f94:	48 0f 44 c2          	cmove  %rdx,%rax
   43f98:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   43f9c:	e9 5e fb ff ff       	jmpq   43aff <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
   43fa1:	48 89 df             	mov    %rbx,%rdi
   43fa4:	e8 e9 f7 ff ff       	callq  43792 <strlen>
   43fa9:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
   43fac:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   43fb0:	0f 84 76 fb ff ff    	je     43b2c <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
   43fb6:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
   43fba:	0f 84 6c fb ff ff    	je     43b2c <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
   43fc0:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   43fc3:	89 ca                	mov    %ecx,%edx
   43fc5:	29 c2                	sub    %eax,%edx
   43fc7:	39 c1                	cmp    %eax,%ecx
   43fc9:	b8 00 00 00 00       	mov    $0x0,%eax
   43fce:	0f 4f c2             	cmovg  %edx,%eax
   43fd1:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   43fd4:	e9 69 fb ff ff       	jmpq   43b42 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
   43fd9:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   43fdd:	e8 b0 f7 ff ff       	callq  43792 <strlen>
   43fe2:	8b 75 a0             	mov    -0x60(%rbp),%esi
   43fe5:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   43fe8:	8b 7d 98             	mov    -0x68(%rbp),%edi
   43feb:	89 f9                	mov    %edi,%ecx
   43fed:	29 f1                	sub    %esi,%ecx
   43fef:	29 c1                	sub    %eax,%ecx
   43ff1:	39 fa                	cmp    %edi,%edx
   43ff3:	b8 00 00 00 00       	mov    $0x0,%eax
   43ff8:	0f 4c c1             	cmovl  %ecx,%eax
   43ffb:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   43ffe:	e9 3f fb ff ff       	jmpq   43b42 <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
   44003:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
   44006:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   44009:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   4400d:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44011:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   44017:	e9 a4 fa ff ff       	jmpq   43ac0 <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
   4401c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   44022:	e9 a4 f8 ff ff       	jmpq   438cb <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
   44027:	8d 50 bd             	lea    -0x43(%rax),%edx
   4402a:	80 fa 35             	cmp    $0x35,%dl
   4402d:	77 d7                	ja     44006 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
   4402f:	0f b6 d2             	movzbl %dl,%edx
   44032:	3e ff 24 d5 40 51 04 	notrack jmpq *0x45140(,%rdx,8)
   44039:	00 
        }
    }
}
   4403a:	48 83 c4 58          	add    $0x58,%rsp
   4403e:	5b                   	pop    %rbx
   4403f:	41 5c                	pop    %r12
   44041:	41 5d                	pop    %r13
   44043:	41 5e                	pop    %r14
   44045:	41 5f                	pop    %r15
   44047:	5d                   	pop    %rbp
   44048:	c3                   	retq   

0000000000044049 <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   44049:	f3 0f 1e fa          	endbr64 
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   4404d:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   44052:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   44057:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   4405c:	48 83 c0 02          	add    $0x2,%rax
   44060:	48 39 d0             	cmp    %rdx,%rax
   44063:	75 f2                	jne    44057 <console_clear()+0xe>
    }
    cursorpos = 0;
   44065:	c7 05 8d 4f 07 00 00 	movl   $0x0,0x74f8d(%rip)        # b8ffc <cursorpos>
   4406c:	00 00 00 
}
   4406f:	c3                   	retq   

0000000000044070 <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   44070:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
   44074:	48 c7 07 a8 53 04 00 	movq   $0x453a8,(%rdi)
   4407b:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   44082:	00 
   44083:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   44086:	85 f6                	test   %esi,%esi
   44088:	78 18                	js     440a2 <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   4408a:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   44090:	7f 0f                	jg     440a1 <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   44092:	48 63 f6             	movslq %esi,%rsi
   44095:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   4409c:	00 
   4409d:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   440a1:	c3                   	retq   
        cell_ += cursorpos;
   440a2:	8b 05 54 4f 07 00    	mov    0x74f54(%rip),%eax        # b8ffc <cursorpos>
   440a8:	48 98                	cltq   
   440aa:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   440b1:	00 
   440b2:	48 89 47 08          	mov    %rax,0x8(%rdi)
   440b6:	c3                   	retq   
   440b7:	90                   	nop

00000000000440b8 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   440b8:	f3 0f 1e fa          	endbr64 
   440bc:	55                   	push   %rbp
   440bd:	48 89 e5             	mov    %rsp,%rbp
   440c0:	53                   	push   %rbx
   440c1:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   440c5:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   440cc:	00 
   440cd:	72 18                	jb     440e7 <console_printer::scroll()+0x2f>
   440cf:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   440d2:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   440d6:	75 23                	jne    440fb <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
   440d8:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   440df:	00 
    }
}
   440e0:	48 83 c4 08          	add    $0x8,%rsp
   440e4:	5b                   	pop    %rbx
   440e5:	5d                   	pop    %rbp
   440e6:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   440e7:	ba 38 53 04 00       	mov    $0x45338,%edx
   440ec:	be 1f 02 00 00       	mov    $0x21f,%esi
   440f1:	bf 11 4c 04 00       	mov    $0x44c11,%edi
   440f6:	e8 cf de ff ff       	callq  41fca <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   440fb:	ba 00 0f 00 00       	mov    $0xf00,%edx
   44100:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   44105:	bf 00 80 0b 00       	mov    $0xb8000,%edi
   4410a:	e8 16 f6 ff ff       	callq  43725 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   4410f:	ba a0 00 00 00       	mov    $0xa0,%edx
   44114:	be 00 00 00 00       	mov    $0x0,%esi
   44119:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   4411e:	e8 4f f6 ff ff       	callq  43772 <memset>
        cell_ -= CONSOLE_COLUMNS;
   44123:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
   4412a:	00 
   4412b:	eb b3                	jmp    440e0 <console_printer::scroll()+0x28>
   4412d:	90                   	nop

000000000004412e <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   4412e:	f3 0f 1e fa          	endbr64 
   44132:	55                   	push   %rbp
   44133:	48 89 e5             	mov    %rsp,%rbp
   44136:	41 55                	push   %r13
   44138:	41 54                	push   %r12
   4413a:	53                   	push   %rbx
   4413b:	48 83 ec 08          	sub    $0x8,%rsp
   4413f:	48 89 fb             	mov    %rdi,%rbx
   44142:	41 89 f5             	mov    %esi,%r13d
   44145:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44148:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4414c:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44152:	72 14                	jb     44168 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   44154:	48 89 df             	mov    %rbx,%rdi
   44157:	e8 5c ff ff ff       	callq  440b8 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   4415c:	48 8b 43 08          	mov    0x8(%rbx),%rax
   44160:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44166:	73 ec                	jae    44154 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   44168:	41 80 fd 0a          	cmp    $0xa,%r13b
   4416c:	74 1e                	je     4418c <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   4416e:	48 8d 50 02          	lea    0x2(%rax),%rdx
   44172:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   44176:	45 0f b6 ed          	movzbl %r13b,%r13d
   4417a:	45 09 ec             	or     %r13d,%r12d
   4417d:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
   44181:	48 83 c4 08          	add    $0x8,%rsp
   44185:	5b                   	pop    %rbx
   44186:	41 5c                	pop    %r12
   44188:	41 5d                	pop    %r13
   4418a:	5d                   	pop    %rbp
   4418b:	c3                   	retq   
        int pos = (cell_ - console) % 80;
   4418c:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44192:	48 89 c1             	mov    %rax,%rcx
   44195:	48 89 c6             	mov    %rax,%rsi
   44198:	48 d1 fe             	sar    %rsi
   4419b:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   441a2:	66 66 66 
   441a5:	48 89 f0             	mov    %rsi,%rax
   441a8:	48 f7 ea             	imul   %rdx
   441ab:	48 c1 fa 05          	sar    $0x5,%rdx
   441af:	48 89 c8             	mov    %rcx,%rax
   441b2:	48 c1 f8 3f          	sar    $0x3f,%rax
   441b6:	48 29 c2             	sub    %rax,%rdx
   441b9:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
   441bd:	48 c1 e0 04          	shl    $0x4,%rax
   441c1:	89 f2                	mov    %esi,%edx
   441c3:	29 c2                	sub    %eax,%edx
   441c5:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
   441c7:	41 83 cc 20          	or     $0x20,%r12d
   441cb:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
   441cf:	48 8d 71 02          	lea    0x2(%rcx),%rsi
   441d3:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   441d7:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
   441db:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   441de:	83 f8 50             	cmp    $0x50,%eax
   441e1:	75 e8                	jne    441cb <console_printer::putc(unsigned char, int)+0x9d>
   441e3:	eb 9c                	jmp    44181 <console_printer::putc(unsigned char, int)+0x53>
   441e5:	90                   	nop

00000000000441e6 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   441e6:	f3 0f 1e fa          	endbr64 
   441ea:	55                   	push   %rbp
   441eb:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   441ee:	48 8b 47 08          	mov    0x8(%rdi),%rax
   441f2:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   441f8:	48 d1 f8             	sar    %rax
   441fb:	89 05 fb 4d 07 00    	mov    %eax,0x74dfb(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   44201:	8b 3d f5 4d 07 00    	mov    0x74df5(%rip),%edi        # b8ffc <cursorpos>
   44207:	e8 12 da ff ff       	callq  41c1e <console_show_cursor(int)>
}
   4420c:	5d                   	pop    %rbp
   4420d:	c3                   	retq   

000000000004420e <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   4420e:	f3 0f 1e fa          	endbr64 
   44212:	55                   	push   %rbp
   44213:	48 89 e5             	mov    %rsp,%rbp
   44216:	41 56                	push   %r14
   44218:	41 55                	push   %r13
   4421a:	41 54                	push   %r12
   4421c:	53                   	push   %rbx
   4421d:	48 83 ec 20          	sub    $0x20,%rsp
   44221:	89 fb                	mov    %edi,%ebx
   44223:	41 89 f4             	mov    %esi,%r12d
   44226:	49 89 d5             	mov    %rdx,%r13
   44229:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   4422c:	89 fa                	mov    %edi,%edx
   4422e:	c1 ea 1f             	shr    $0x1f,%edx
   44231:	89 fe                	mov    %edi,%esi
   44233:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44237:	e8 34 fe ff ff       	callq  44070 <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   4423c:	4c 89 f1             	mov    %r14,%rcx
   4423f:	4c 89 ea             	mov    %r13,%rdx
   44242:	44 89 e6             	mov    %r12d,%esi
   44245:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44249:	e8 02 f6 ff ff       	callq  43850 <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   4424e:	85 db                	test   %ebx,%ebx
   44250:	78 1a                	js     4426c <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   44252:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   44256:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   4425c:	48 d1 f8             	sar    %rax
}
   4425f:	48 83 c4 20          	add    $0x20,%rsp
   44263:	5b                   	pop    %rbx
   44264:	41 5c                	pop    %r12
   44266:	41 5d                	pop    %r13
   44268:	41 5e                	pop    %r14
   4426a:	5d                   	pop    %rbp
   4426b:	c3                   	retq   
        cp.move_cursor();
   4426c:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44270:	e8 71 ff ff ff       	callq  441e6 <console_printer::move_cursor()>
   44275:	eb db                	jmp    44252 <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000044277 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   44277:	f3 0f 1e fa          	endbr64 
   4427b:	55                   	push   %rbp
   4427c:	48 89 e5             	mov    %rsp,%rbp
   4427f:	48 83 ec 50          	sub    $0x50,%rsp
   44283:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   44287:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   4428b:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   4428f:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   44296:	48 8d 45 10          	lea    0x10(%rbp),%rax
   4429a:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4429e:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   442a2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   442a6:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   442aa:	e8 5f ff ff ff       	callq  4420e <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   442af:	c9                   	leaveq 
   442b0:	c3                   	retq   
