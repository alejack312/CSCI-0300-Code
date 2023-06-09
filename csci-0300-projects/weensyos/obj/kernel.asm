
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
   40028:	e9 6a 18 00 00       	jmpq   41897 <kernel(char const*)>

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
   40a9a:	e8 88 11 00 00       	callq  41c27 <exception(regstate*)>

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
   40b23:	e8 0f 12 00 00       	callq  41d37 <syscall(regstate*)>
   40b28:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b2f:	00 
   40b30:	8b 49 0c             	mov    0xc(%rcx),%ecx
   40b33:	83 f9 01             	cmp    $0x1,%ecx
   40b36:	75 17                	jne    40b4f <proc_runnable_fail>
   40b38:	48 8b 0c 25 00 22 05 	mov    0x52200,%rcx
   40b3f:	00 
   40b40:	48 8b 09             	mov    (%rcx),%rcx
   40b43:	0f 22 d9             	mov    %rcx,%cr3
   40b46:	48 81 c4 98 00 00 00 	add    $0x98,%rsp
   40b4d:	48 cf                	iretq  

0000000000040b4f <proc_runnable_fail>:
   40b4f:	48 c7 c2 8e 4a 04 00 	mov    $0x44a8e,%rdx
   40b56:	31 f6                	xor    %esi,%esi
   40b58:	48 c7 c7 80 4a 04 00 	mov    $0x44a80,%rdi
   40b5f:	e8 7a 1c 00 00       	callq  427de <assert_fail(char const*, int, char const*)>

0000000000040b64 <kalloc(unsigned long)>:
//    but it never reuses pages or supports freeing memory (you'll have to
//    change this at some point).

static uintptr_t next_alloc_pa;

void* kalloc(size_t sz) {
   40b64:	f3 0f 1e fa          	endbr64 
   40b68:	55                   	push   %rbp
   40b69:	48 89 e5             	mov    %rsp,%rbp
   40b6c:	41 54                	push   %r12
   40b6e:	53                   	push   %rbx
    if (sz > PAGESIZE) {
   40b6f:	48 81 ff 00 10 00 00 	cmp    $0x1000,%rdi
   40b76:	77 5f                	ja     40bd7 <kalloc(unsigned long)+0x73>
        return nullptr;
    }

    next_alloc_pa = 0;
    while (next_alloc_pa < MEMSIZE_PHYSICAL) {
   40b78:	bb 00 00 00 00       	mov    $0x0,%ebx
   40b7d:	eb 10                	jmp    40b8f <kalloc(unsigned long)+0x2b>
   40b7f:	48 8b 1d a2 23 01 00 	mov    0x123a2(%rip),%rbx        # 52f28 <next_alloc_pa>
   40b86:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   40b8d:	77 50                	ja     40bdf <kalloc(unsigned long)+0x7b>
        uintptr_t pa = next_alloc_pa;
        next_alloc_pa += PAGESIZE;
   40b8f:	48 8d 83 00 10 00 00 	lea    0x1000(%rbx),%rax
   40b96:	48 89 05 8b 23 01 00 	mov    %rax,0x1238b(%rip)        # 52f28 <next_alloc_pa>

        if (allocatable_physical_address(pa)
   40b9d:	48 89 df             	mov    %rbx,%rdi
   40ba0:	e8 ab 17 00 00       	callq  42350 <allocatable_physical_address(unsigned long)>
            && !pages[pa / PAGESIZE].used()) {
   40ba5:	84 c0                	test   %al,%al
   40ba7:	74 d6                	je     40b7f <kalloc(unsigned long)+0x1b>
   40ba9:	48 89 d8             	mov    %rbx,%rax
   40bac:	48 c1 e8 0c          	shr    $0xc,%rax
   40bb0:	80 b8 00 20 05 00 00 	cmpb   $0x0,0x52000(%rax)
   40bb7:	75 c6                	jne    40b7f <kalloc(unsigned long)+0x1b>
            pages[pa / PAGESIZE].refcount = 1;
   40bb9:	c6 80 00 20 05 00 01 	movb   $0x1,0x52000(%rax)
            memset((void*) pa, 0xCC, PAGESIZE);
   40bc0:	49 89 dc             	mov    %rbx,%r12
   40bc3:	ba 00 10 00 00       	mov    $0x1000,%edx
   40bc8:	be cc 00 00 00       	mov    $0xcc,%esi
   40bcd:	48 89 df             	mov    %rbx,%rdi
   40bd0:	e8 6a 33 00 00       	callq  43f3f <memset>
            return (void*) pa;
   40bd5:	eb 0e                	jmp    40be5 <kalloc(unsigned long)+0x81>
        return nullptr;
   40bd7:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   40bdd:	eb 06                	jmp    40be5 <kalloc(unsigned long)+0x81>
        }
    }
    return nullptr;
   40bdf:	41 bc 00 00 00 00    	mov    $0x0,%r12d
}
   40be5:	4c 89 e0             	mov    %r12,%rax
   40be8:	5b                   	pop    %rbx
   40be9:	41 5c                	pop    %r12
   40beb:	5d                   	pop    %rbp
   40bec:	c3                   	retq   

0000000000040bed <process_setup(int, char const*)>:
// process_setup(pid, program_name)
//    Loads application program `program_name` as process number `pid`.
//    This loads the application's code and data into memory, sets its
//    %rip and %rsp, gives it a stack page, and marks it as runnable.

void process_setup(pid_t pid, const char* program_name) {
   40bed:	55                   	push   %rbp
   40bee:	48 89 e5             	mov    %rsp,%rbp
   40bf1:	41 57                	push   %r15
   40bf3:	41 56                	push   %r14
   40bf5:	41 55                	push   %r13
   40bf7:	41 54                	push   %r12
   40bf9:	53                   	push   %rbx
   40bfa:	48 81 ec b8 00 00 00 	sub    $0xb8,%rsp
   40c01:	41 89 fe             	mov    %edi,%r14d
   40c04:	89 bd 2c ff ff ff    	mov    %edi,-0xd4(%rbp)
   40c0a:	48 89 b5 20 ff ff ff 	mov    %rsi,-0xe0(%rbp)
    init_process(&ptable[pid], 0);
   40c11:	48 63 c7             	movslq %edi,%rax
   40c14:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   40c18:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   40c1c:	48 c1 e7 04          	shl    $0x4,%rdi
   40c20:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   40c27:	be 00 00 00 00       	mov    $0x0,%esi
   40c2c:	e8 7c 17 00 00       	callq  423ad <init_process(proc*, int)>
    //The process_setup function should allocate a new, initially empty page 
    //table for the process. Do this by calling kalloc() (to allocate the 
    //level-4 page table page) 
    x86_64_pagetable* proc_pagetable = (x86_64_pagetable*) kalloc(PAGESIZE);
   40c31:	bf 00 10 00 00       	mov    $0x1000,%edi
   40c36:	e8 29 ff ff ff       	callq  40b64 <kalloc(unsigned long)>

    if((void*) proc_pagetable == (void*) nullptr) {
   40c3b:	48 85 c0             	test   %rax,%rax
   40c3e:	0f 84 4c 05 00 00    	je     41190 <process_setup(int, char const*)+0x5a3>
   40c44:	48 89 c7             	mov    %rax,%rdi
        return;
    }

    ptable[pid].pagetable = proc_pagetable;
   40c47:	4d 63 e6             	movslq %r14d,%r12
   40c4a:	4b 8d 1c 64          	lea    (%r12,%r12,2),%rbx
   40c4e:	48 c1 e3 02          	shl    $0x2,%rbx
   40c52:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   40c56:	48 c1 e0 04          	shl    $0x4,%rax
   40c5a:	48 89 b8 20 22 05 00 	mov    %rdi,0x52220(%rax)

    //Copy the mappings from kernel_pagetable into this new page table using 
    //vmiter::map

    //Then calling memset (to ensure the page table is empty).
    memset(ptable[pid].pagetable, 0, PAGESIZE);
   40c61:	ba 00 10 00 00       	mov    $0x1000,%edx
   40c66:	be 00 00 00 00       	mov    $0x0,%esi
   40c6b:	e8 cf 32 00 00       	callq  43f3f <memset>


    vmiter iterator(ptable[pid].pagetable);
   40c70:	4c 01 e3             	add    %r12,%rbx
   40c73:	48 c1 e3 04          	shl    $0x4,%rbx
   40c77:	48 8b 83 20 22 05 00 	mov    0x52220(%rbx),%rax
    void down(bool skip);
};


inline vmiter::vmiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40c7e:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   40c82:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   40c86:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   40c8d:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   40c94:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   40c9b:	00 
    real_find(va);
   40c9c:	be 00 00 00 00       	mov    $0x0,%esi
   40ca1:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   40ca5:	e8 ce 11 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40caa:	48 c7 85 38 ff ff ff 	movq   $0x54000,-0xc8(%rbp)
   40cb1:	00 40 05 00 
   40cb5:	48 c7 85 40 ff ff ff 	movq   $0x54000,-0xc0(%rbp)
   40cbc:	00 40 05 00 
   40cc0:	c7 85 48 ff ff ff 03 	movl   $0x3,-0xb8(%rbp)
   40cc7:	00 00 00 
   40cca:	c7 85 4c ff ff ff ff 	movl   $0xfff,-0xb4(%rbp)
   40cd1:	0f 00 00 
   40cd4:	48 c7 85 50 ff ff ff 	movq   $0x0,-0xb0(%rbp)
   40cdb:	00 00 00 00 
    real_find(va);
   40cdf:	be 00 00 00 00       	mov    $0x0,%esi
   40ce4:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
   40ceb:	e8 88 11 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
}
inline vmiter::vmiter(const proc* p, uintptr_t va)
    : vmiter(p->pagetable, va) {
}
inline uintptr_t vmiter::va() const {
    return va_;
   40cf0:	48 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%rsi
    for(vmiter it(kernel_pagetable); it.va() < PROC_START_ADDR; it += PAGESIZE) {
   40cf7:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   40cfe:	0f 87 0c 01 00 00    	ja     40e10 <process_setup(int, char const*)+0x223>
}
inline uint64_t vmiter::pa() const {
    if (*pep_ & PTE_P) {
        uintptr_t pa = *pep_ & PTE_PAMASK;
        if (level_ > 0) {
            pa &= ~0x1000UL;
   40d04:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   40d0b:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40d0e:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   40d15:	ff 0f 00 
        // Get the physical address and permissions of the mapping
        uint64_t pa = it.pa();
        uint64_t perm = it.perm();

        // Map the virtual address to the physical address with the same permissions in the destination page table
        vmiter(ptable[pid].pagetable, it.va()).map(pa, perm);
   40d18:	49 89 de             	mov    %rbx,%r14
   40d1b:	e9 b9 00 00 00       	jmpq   40dd9 <process_setup(int, char const*)+0x1ec>
        if (level_ > 0) {
   40d20:	8b 85 48 ff ff ff    	mov    -0xb8(%rbp),%eax
            pa &= ~0x1000UL;
   40d26:	48 89 d1             	mov    %rdx,%rcx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40d29:	4c 21 f9             	and    %r15,%rcx
   40d2c:	48 89 d3             	mov    %rdx,%rbx
   40d2f:	4c 21 eb             	and    %r13,%rbx
   40d32:	85 c0                	test   %eax,%eax
   40d34:	48 0f 4e d9          	cmovle %rcx,%rbx
// Parts of a paged address: page index, page offset
static inline int pageindex(uintptr_t addr, int level) {
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
}
static inline uintptr_t pageoffmask(int level) {
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   40d38:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        }
        return pa + (va_ & pageoffmask(level_));
   40d3c:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40d43:	48 d3 e0             	shl    %cl,%rax
   40d46:	48 f7 d0             	not    %rax
   40d49:	48 21 f0             	and    %rsi,%rax
   40d4c:	48 01 c3             	add    %rax,%rbx
inline T vmiter::kptr() const {
    return reinterpret_cast<T>(pa());
}
inline uint64_t vmiter::perm() const {
    if (*pep_ & PTE_P) {
        return *pep_ & perm_;
   40d4f:	4c 63 a5 4c ff ff ff 	movslq -0xb4(%rbp),%r12
   40d56:	49 21 d4             	and    %rdx,%r12
   40d59:	49 8b 86 20 22 05 00 	mov    0x52220(%r14),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40d60:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
   40d67:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
   40d6e:	c7 85 68 ff ff ff 03 	movl   $0x3,-0x98(%rbp)
   40d75:	00 00 00 
   40d78:	c7 85 6c ff ff ff ff 	movl   $0xfff,-0x94(%rbp)
   40d7f:	0f 00 00 
   40d82:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
   40d89:	00 00 00 00 
    real_find(va);
   40d8d:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   40d94:	e8 df 10 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
}
inline void vmiter::next_range() {
    real_find(last_va());
}
inline void vmiter::map(uintptr_t pa, int perm) {
    int r = try_map(pa, perm);
   40d99:	44 89 e2             	mov    %r12d,%edx
   40d9c:	48 89 de             	mov    %rbx,%rsi
   40d9f:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   40da6:	e8 d1 11 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   40dab:	85 c0                	test   %eax,%eax
   40dad:	75 4d                	jne    40dfc <process_setup(int, char const*)+0x20f>
    return find(va_ + delta);
   40daf:	48 8b 85 50 ff ff ff 	mov    -0xb0(%rbp),%rax
   40db6:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   40dbd:	48 8d bd 38 ff ff ff 	lea    -0xc8(%rbp),%rdi
   40dc4:	e8 af 10 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   40dc9:	48 8b b5 50 ff ff ff 	mov    -0xb0(%rbp),%rsi
    for(vmiter it(kernel_pagetable); it.va() < PROC_START_ADDR; it += PAGESIZE) {
   40dd0:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   40dd7:	77 37                	ja     40e10 <process_setup(int, char const*)+0x223>
    if (*pep_ & PTE_P) {
   40dd9:	48 8b 85 40 ff ff ff 	mov    -0xc0(%rbp),%rax
   40de0:	48 8b 10             	mov    (%rax),%rdx
        return -1;
   40de3:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
    if (*pep_ & PTE_P) {
   40dea:	49 89 d4             	mov    %rdx,%r12
   40ded:	41 83 e4 01          	and    $0x1,%r12d
   40df1:	0f 85 29 ff ff ff    	jne    40d20 <process_setup(int, char const*)+0x133>
   40df7:	e9 5d ff ff ff       	jmpq   40d59 <process_setup(int, char const*)+0x16c>
    assert(r == 0);
   40dfc:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   40e01:	be b1 00 00 00       	mov    $0xb1,%esi
   40e06:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   40e0b:	e8 ce 19 00 00       	callq  427de <assert_fail(char const*, int, char const*)>



    // Initialize `program_loader`.
    // The `program_loader` is an iterator that visits segments of executables.
    program_loader loader(program_name);
   40e10:	48 8b b5 20 ff ff ff 	mov    -0xe0(%rbp),%rsi
   40e17:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e1b:	e8 42 26 00 00       	callq  43462 <program_loader::program_loader(char const*)>

    // Using the loader, we're going to start loading segments of the program binary into memory
    // (recall that an executable has code/text segment, data segment, etc).

    // First, for each segment of the program, we allocate page(s) of memory.
    for (loader.reset(); loader.present(); ++loader) {
   40e20:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e24:	e8 a5 25 00 00       	callq  433ce <program_loader::reset()>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
             a < loader.va() + loader.size();
             a += PAGESIZE) {
            // `a` is the virtual address of the current segment's page.
            vmiter it(ptable[pid].pagetable, a);
   40e29:	4c 63 b5 2c ff ff ff 	movslq -0xd4(%rbp),%r14
   40e30:	4f 8d 2c 76          	lea    (%r14,%r14,2),%r13
   40e34:	49 c1 e5 02          	shl    $0x2,%r13
   40e38:	eb 09                	jmp    40e43 <process_setup(int, char const*)+0x256>
    for (loader.reset(); loader.present(); ++loader) {
   40e3a:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e3e:	e8 69 25 00 00       	callq  433ac <program_loader::operator++()>
   40e43:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e47:	e8 1e 25 00 00       	callq  4336a <program_loader::present() const>
   40e4c:	84 c0                	test   %al,%al
   40e4e:	0f 84 b4 00 00 00    	je     40f08 <process_setup(int, char const*)+0x31b>
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   40e54:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e58:	e8 a9 24 00 00       	callq  43306 <program_loader::va() const>
   40e5d:	48 25 00 f0 ff ff    	and    $0xfffffffffffff000,%rax
   40e63:	48 89 c3             	mov    %rax,%rbx
             a < loader.va() + loader.size();
   40e66:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e6a:	e8 97 24 00 00       	callq  43306 <program_loader::va() const>
   40e6f:	49 89 c4             	mov    %rax,%r12
   40e72:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40e76:	e8 a3 24 00 00       	callq  4331e <program_loader::size() const>
   40e7b:	49 01 c4             	add    %rax,%r12
   40e7e:	49 39 dc             	cmp    %rbx,%r12
   40e81:	76 b7                	jbe    40e3a <process_setup(int, char const*)+0x24d>
            vmiter it(ptable[pid].pagetable, a);
   40e83:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   40e88:	48 c1 e0 04          	shl    $0x4,%rax
   40e8c:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40e93:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
   40e9a:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
   40ea1:	c7 85 68 ff ff ff 03 	movl   $0x3,-0x98(%rbp)
   40ea8:	00 00 00 
   40eab:	c7 85 6c ff ff ff ff 	movl   $0xfff,-0x94(%rbp)
   40eb2:	0f 00 00 
   40eb5:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
   40ebc:	00 00 00 00 
    real_find(va);
   40ec0:	48 89 de             	mov    %rbx,%rsi
   40ec3:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   40eca:	e8 a9 0f 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
            // (you will have to change this later).
            
            

            // pages[alloc_pa / PAGESIZE].refcount = 1;
            uintptr_t alloc_pa = (uintptr_t)(kalloc(PAGESIZE));
   40ecf:	bf 00 10 00 00       	mov    $0x1000,%edi
   40ed4:	e8 8b fc ff ff       	callq  40b64 <kalloc(unsigned long)>
   40ed9:	49 89 c4             	mov    %rax,%r12
            
            it.try_map(alloc_pa, PTE_P | PTE_W * loader.writable() | PTE_U);
   40edc:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40ee0:	e8 95 24 00 00       	callq  4337a <program_loader::writable() const>
   40ee5:	0f b6 d0             	movzbl %al,%edx
   40ee8:	01 d2                	add    %edx,%edx
   40eea:	83 ca 05             	or     $0x5,%edx
   40eed:	4c 89 e6             	mov    %r12,%rsi
   40ef0:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   40ef7:	e8 80 10 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
             a += PAGESIZE) {
   40efc:	48 81 c3 00 10 00 00 	add    $0x1000,%rbx
        for (uintptr_t a = round_down(loader.va(), PAGESIZE);
   40f03:	e9 5e ff ff ff       	jmpq   40e66 <process_setup(int, char const*)+0x279>
        }
    }

    // We now copy instructions and data into memory that we just allocated.
    for (loader.reset(); loader.present(); ++loader) {
   40f08:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40f0c:	e8 bd 24 00 00       	callq  433ce <program_loader::reset()>
        memset((void*) vmiter(ptable[pid].pagetable, loader.va()).pa(), 0, loader.size());
   40f11:	4c 63 b5 2c ff ff ff 	movslq -0xd4(%rbp),%r14
   40f18:	4f 8d 2c 76          	lea    (%r14,%r14,2),%r13
   40f1c:	49 c1 e5 02          	shl    $0x2,%r13
   40f20:	eb 42                	jmp    40f64 <process_setup(int, char const*)+0x377>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   40f22:	48 8d bf 00 10 00 00 	lea    0x1000(%rdi),%rdi
   40f29:	48 21 f9             	and    %rdi,%rcx
   40f2c:	48 89 ca             	mov    %rcx,%rdx
   40f2f:	e9 d6 00 00 00       	jmpq   4100a <process_setup(int, char const*)+0x41d>
   40f34:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   40f38:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   40f3f:	48 d3 e0             	shl    %cl,%rax
   40f42:	48 f7 d0             	not    %rax
   40f45:	48 23 85 70 ff ff ff 	and    -0x90(%rbp),%rax
   40f4c:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
        memcpy((void*) vmiter(ptable[pid].pagetable, loader.va()).pa(), loader.data(), loader.data_size());
   40f50:	4c 89 e2             	mov    %r12,%rdx
   40f53:	48 89 de             	mov    %rbx,%rsi
   40f56:	e8 73 2f 00 00       	callq  43ece <memcpy>
    for (loader.reset(); loader.present(); ++loader) {
   40f5b:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40f5f:	e8 48 24 00 00       	callq  433ac <program_loader::operator++()>
   40f64:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40f68:	e8 fd 23 00 00       	callq  4336a <program_loader::present() const>
   40f6d:	84 c0                	test   %al,%al
   40f6f:	0f 84 75 01 00 00    	je     410ea <process_setup(int, char const*)+0x4fd>
        memset((void*) vmiter(ptable[pid].pagetable, loader.va()).pa(), 0, loader.size());
   40f75:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40f79:	e8 a0 23 00 00       	callq  4331e <program_loader::size() const>
   40f7e:	48 89 c3             	mov    %rax,%rbx
   40f81:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   40f85:	e8 7c 23 00 00       	callq  43306 <program_loader::va() const>
   40f8a:	48 89 c6             	mov    %rax,%rsi
   40f8d:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   40f92:	48 c1 e0 04          	shl    $0x4,%rax
   40f96:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   40f9d:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
   40fa4:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
   40fab:	c7 85 68 ff ff ff 03 	movl   $0x3,-0x98(%rbp)
   40fb2:	00 00 00 
   40fb5:	c7 85 6c ff ff ff ff 	movl   $0xfff,-0x94(%rbp)
   40fbc:	0f 00 00 
   40fbf:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
   40fc6:	00 00 00 00 
    real_find(va);
   40fca:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   40fd1:	e8 a2 0e 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   40fd6:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
   40fdd:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   40fe0:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    if (*pep_ & PTE_P) {
   40fe7:	f6 c1 01             	test   $0x1,%cl
   40fea:	74 3a                	je     41026 <process_setup(int, char const*)+0x439>
        if (level_ > 0) {
   40fec:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
            pa &= ~0x1000UL;
   40ff2:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   40ff9:	ff 0f 00 
   40ffc:	48 89 fa             	mov    %rdi,%rdx
   40fff:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   41002:	85 c0                	test   %eax,%eax
   41004:	0f 8e 18 ff ff ff    	jle    40f22 <process_setup(int, char const*)+0x335>
   4100a:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4100e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41015:	48 d3 e0             	shl    %cl,%rax
   41018:	48 f7 d0             	not    %rax
   4101b:	48 23 85 70 ff ff ff 	and    -0x90(%rbp),%rax
   41022:	48 8d 3c 10          	lea    (%rax,%rdx,1),%rdi
   41026:	48 89 da             	mov    %rbx,%rdx
   41029:	be 00 00 00 00       	mov    $0x0,%esi
   4102e:	e8 0c 2f 00 00       	callq  43f3f <memset>
        memcpy((void*) vmiter(ptable[pid].pagetable, loader.va()).pa(), loader.data(), loader.data_size());
   41033:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41037:	e8 16 23 00 00       	callq  43352 <program_loader::data_size() const>
   4103c:	49 89 c4             	mov    %rax,%r12
   4103f:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   41043:	e8 ee 22 00 00       	callq  43336 <program_loader::data() const>
   41048:	48 89 c3             	mov    %rax,%rbx
   4104b:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   4104f:	e8 b2 22 00 00       	callq  43306 <program_loader::va() const>
   41054:	48 89 c6             	mov    %rax,%rsi
   41057:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   4105c:	48 c1 e0 04          	shl    $0x4,%rax
   41060:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41067:	48 89 85 58 ff ff ff 	mov    %rax,-0xa8(%rbp)
   4106e:	48 89 85 60 ff ff ff 	mov    %rax,-0xa0(%rbp)
   41075:	c7 85 68 ff ff ff 03 	movl   $0x3,-0x98(%rbp)
   4107c:	00 00 00 
   4107f:	c7 85 6c ff ff ff ff 	movl   $0xfff,-0x94(%rbp)
   41086:	0f 00 00 
   41089:	48 c7 85 70 ff ff ff 	movq   $0x0,-0x90(%rbp)
   41090:	00 00 00 00 
    real_find(va);
   41094:	48 8d bd 58 ff ff ff 	lea    -0xa8(%rbp),%rdi
   4109b:	e8 d8 0d 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   410a0:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
   410a7:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   410aa:	48 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%rdi
    if (*pep_ & PTE_P) {
   410b1:	f6 c1 01             	test   $0x1,%cl
   410b4:	0f 84 96 fe ff ff    	je     40f50 <process_setup(int, char const*)+0x363>
        if (level_ > 0) {
   410ba:	8b 85 68 ff ff ff    	mov    -0x98(%rbp),%eax
            pa &= ~0x1000UL;
   410c0:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   410c7:	ff 0f 00 
   410ca:	48 89 fa             	mov    %rdi,%rdx
   410cd:	48 21 ca             	and    %rcx,%rdx
        if (level_ > 0) {
   410d0:	85 c0                	test   %eax,%eax
   410d2:	0f 8f 5c fe ff ff    	jg     40f34 <process_setup(int, char const*)+0x347>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   410d8:	48 8d bf 00 10 00 00 	lea    0x1000(%rdi),%rdi
   410df:	48 21 f9             	and    %rdi,%rcx
   410e2:	48 89 ca             	mov    %rcx,%rdx
   410e5:	e9 4a fe ff ff       	jmpq   40f34 <process_setup(int, char const*)+0x347>
    }

    // Set %rip and mark the entry point of the code.
    ptable[pid].regs.reg_rip = loader.entry();
   410ea:	48 8d 7d 98          	lea    -0x68(%rbp),%rdi
   410ee:	e8 a3 22 00 00       	callq  43396 <program_loader::entry() const>
   410f3:	48 89 c2             	mov    %rax,%rdx
   410f6:	4c 63 a5 2c ff ff ff 	movslq -0xd4(%rbp),%r12
   410fd:	4b 8d 1c 64          	lea    (%r12,%r12,2),%rbx
   41101:	48 c1 e3 02          	shl    $0x2,%rbx
   41105:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   41109:	48 c1 e0 04          	shl    $0x4,%rax
   4110d:	48 89 90 c8 22 05 00 	mov    %rdx,0x522c8(%rax)
    // maintain the one-to-one mapping between physical and virtual memory (you will have to change
    // this later).
    
    //pages[stack_addr / PAGESIZE].refcount = 1;

    vmiter stack_it(ptable[pid].pagetable, stack_addr);
   41114:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   41118:	48 c1 e0 04          	shl    $0x4,%rax
   4111c:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41123:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
   4112a:	48 89 45 80          	mov    %rax,-0x80(%rbp)
   4112e:	c7 45 88 03 00 00 00 	movl   $0x3,-0x78(%rbp)
   41135:	c7 45 8c ff 0f 00 00 	movl   $0xfff,-0x74(%rbp)
   4113c:	48 c7 45 90 00 00 00 	movq   $0x0,-0x70(%rbp)
   41143:	00 
    real_find(va);
   41144:	be 00 f0 2f 00       	mov    $0x2ff000,%esi
   41149:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
   41150:	e8 23 0d 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    stack_it.try_map(kalloc(PAGESIZE), PTE_P | PTE_W | PTE_U);
   41155:	bf 00 10 00 00       	mov    $0x1000,%edi
   4115a:	e8 05 fa ff ff       	callq  40b64 <kalloc(unsigned long)>
   4115f:	48 89 c6             	mov    %rax,%rsi
}
inline void vmiter::map(void* kp, int perm) {
    map((uintptr_t) kp, perm);
}
inline int vmiter::try_map(void* kp, int perm) {
    return try_map((uintptr_t) kp, perm);
   41162:	ba 07 00 00 00       	mov    $0x7,%edx
   41167:	48 8d bd 78 ff ff ff 	lea    -0x88(%rbp),%rdi
   4116e:	e8 09 0e 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>

    //You can map the stack when the kernel sets up the stack for the process.

    // Set %rsp to the start of the stack.
    ptable[pid].regs.reg_rsp = stack_addr + PAGESIZE;
   41173:	4a 8d 04 23          	lea    (%rbx,%r12,1),%rax
   41177:	48 c1 e0 04          	shl    $0x4,%rax
   4117b:	48 c7 80 e0 22 05 00 	movq   $0x300000,0x522e0(%rax)
   41182:	00 00 30 00 

    // Finally, mark the process as runnable.
    ptable[pid].state = P_RUNNABLE;
   41186:	c7 80 2c 22 05 00 01 	movl   $0x1,0x5222c(%rax)
   4118d:	00 00 00 
}
   41190:	48 81 c4 b8 00 00 00 	add    $0xb8,%rsp
   41197:	5b                   	pop    %rbx
   41198:	41 5c                	pop    %r12
   4119a:	41 5d                	pop    %r13
   4119c:	41 5e                	pop    %r14
   4119e:	41 5f                	pop    %r15
   411a0:	5d                   	pop    %rbp
   411a1:	c3                   	retq   

00000000000411a2 <kfree(void*)>:
void kfree(void* kptr) {
   411a2:	f3 0f 1e fa          	endbr64 
    if(kptr == (void*) nullptr) {
   411a6:	48 85 ff             	test   %rdi,%rdi
   411a9:	74 0b                	je     411b6 <kfree(void*)+0x14>
    pages[(uintptr_t)kptr / PAGESIZE].refcount--;
   411ab:	48 c1 ef 0c          	shr    $0xc,%rdi
   411af:	80 af 00 20 05 00 01 	subb   $0x1,0x52000(%rdi)
}
   411b6:	c3                   	retq   

00000000000411b7 <syscall_page_alloc(unsigned long)>:
//    Helper function that handles the SYSCALL_PAGE_ALLOC system call.
//    This function implement the specification for `sys_page_alloc`
//    in `u-lib.hh` (but in the stencil code, it does not - you will
//    have to change this).

int syscall_page_alloc(uintptr_t addr) {
   411b7:	f3 0f 1e fa          	endbr64 
    // Check if the address is within the range of the application region of memory.
    if (addr < PROC_START_ADDR || addr >= MEMSIZE_VIRTUAL) {
   411bb:	48 8d 87 00 00 f0 ff 	lea    -0x100000(%rdi),%rax
   411c2:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   411c8:	77 7e                	ja     41248 <syscall_page_alloc(unsigned long)+0x91>
int syscall_page_alloc(uintptr_t addr) {
   411ca:	55                   	push   %rbp
   411cb:	48 89 e5             	mov    %rsp,%rbp
   411ce:	53                   	push   %rbx
   411cf:	48 83 ec 28          	sub    $0x28,%rsp
   411d3:	48 89 fe             	mov    %rdi,%rsi
        return -1;
    }   

    //assert(!pages[addr / PAGESIZE].used());
    
    vmiter it(current->pagetable, addr);
   411d6:	48 8b 05 23 10 01 00 	mov    0x11023(%rip),%rax        # 52200 <current>
   411dd:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   411e0:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   411e4:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
   411e8:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   411ef:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   411f6:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   411fd:	00 
    real_find(va);
   411fe:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41202:	e8 71 0c 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>

    uintptr_t alloc_pa = (uintptr_t)(kalloc(PAGESIZE));
   41207:	bf 00 10 00 00       	mov    $0x1000,%edi
   4120c:	e8 53 f9 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41211:	48 89 c3             	mov    %rax,%rbx

    if ((void *) alloc_pa == nullptr) {
   41214:	48 85 c0             	test   %rax,%rax
   41217:	74 35                	je     4124e <syscall_page_alloc(unsigned long)+0x97>
        return -1;
    }

    //pages[addr / PAGESIZE].refcount = 1;

    memset((void*) alloc_pa, 0, PAGESIZE);
   41219:	ba 00 10 00 00       	mov    $0x1000,%edx
   4121e:	be 00 00 00 00       	mov    $0x0,%esi
   41223:	48 89 c7             	mov    %rax,%rdi
   41226:	e8 14 2d 00 00       	callq  43f3f <memset>

    it.try_map(alloc_pa, PTE_P | PTE_W | PTE_U);
   4122b:	ba 07 00 00 00       	mov    $0x7,%edx
   41230:	48 89 de             	mov    %rbx,%rsi
   41233:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   41237:	e8 40 0d 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>

    return 0;
   4123c:	b8 00 00 00 00       	mov    $0x0,%eax
}
   41241:	48 83 c4 28          	add    $0x28,%rsp
   41245:	5b                   	pop    %rbx
   41246:	5d                   	pop    %rbp
   41247:	c3                   	retq   
        return -1;
   41248:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   4124d:	c3                   	retq   
        return -1;
   4124e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   41253:	eb ec                	jmp    41241 <syscall_page_alloc(unsigned long)+0x8a>

0000000000041255 <syscall_exit_helper(int)>:

void syscall_exit_helper(pid_t pid) {
   41255:	f3 0f 1e fa          	endbr64 
   41259:	55                   	push   %rbp
   4125a:	48 89 e5             	mov    %rsp,%rbp
   4125d:	41 56                	push   %r14
   4125f:	41 55                	push   %r13
   41261:	41 54                	push   %r12
   41263:	53                   	push   %rbx
   41264:	48 83 ec 20          	sub    $0x20,%rsp
   41268:	89 fb                	mov    %edi,%ebx
        Iterate through pages of memory used with vmiter
    */


    // Only free memory that comes after PROC_START_ADDR
    for(vmiter it(ptable[pid].pagetable, PROC_START_ADDR); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   4126a:	48 63 c7             	movslq %edi,%rax
   4126d:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41271:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41275:	48 c1 e0 04          	shl    $0x4,%rax
   41279:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41280:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   41284:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   41288:	c7 45 d0 03 00 00 00 	movl   $0x3,-0x30(%rbp)
   4128f:	c7 45 d4 ff 0f 00 00 	movl   $0xfff,-0x2c(%rbp)
   41296:	48 c7 45 d8 00 00 00 	movq   $0x0,-0x28(%rbp)
   4129d:	00 
    real_find(va);
   4129e:	be 00 00 10 00       	mov    $0x100000,%esi
   412a3:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   412a7:	e8 cc 0b 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   412ac:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
   412b0:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   412b7:	0f 87 98 00 00 00    	ja     41355 <syscall_exit_helper(int)+0x100>
        return -1;
   412bd:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
            pa &= ~0x1000UL;
   412c4:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   412cb:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   412ce:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   412d5:	ff 0f 00 
   412d8:	eb 51                	jmp    4132b <syscall_exit_helper(int)+0xd6>
        if (level_ > 0) {
   412da:	8b 4d d0             	mov    -0x30(%rbp),%ecx
            pa &= ~0x1000UL;
   412dd:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   412e0:	4c 21 f0             	and    %r14,%rax
   412e3:	4c 21 ea             	and    %r13,%rdx
   412e6:	85 c9                	test   %ecx,%ecx
   412e8:	48 0f 4f c2          	cmovg  %rdx,%rax
   412ec:	48 89 c6             	mov    %rax,%rsi
   412ef:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   412f3:	4c 89 e0             	mov    %r12,%rax
   412f6:	48 d3 e0             	shl    %cl,%rax
   412f9:	48 f7 d0             	not    %rax
   412fc:	48 21 c7             	and    %rax,%rdi
   412ff:	48 01 fe             	add    %rdi,%rsi
        // All user accessible pages, except for the console
        if(it.user() && it.va() != CONSOLE_ADDR) {
            kfree((void*) it.pa());
   41302:	48 89 f7             	mov    %rsi,%rdi
   41305:	e8 98 fe ff ff       	callq  411a2 <kfree(void*)>
    return find(va_ + delta);
   4130a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   4130e:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41315:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41319:	e8 5a 0b 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   4131e:	48 8b 7d d8          	mov    -0x28(%rbp),%rdi
    for(vmiter it(ptable[pid].pagetable, PROC_START_ADDR); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   41322:	48 81 ff ff ff 2f 00 	cmp    $0x2fffff,%rdi
   41329:	77 2a                	ja     41355 <syscall_exit_helper(int)+0x100>
    return (*pep_ & perm_ & p) == p;
   4132b:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   4132f:	48 8b 10             	mov    (%rax),%rdx
   41332:	48 63 45 d4          	movslq -0x2c(%rbp),%rax
   41336:	48 21 d0             	and    %rdx,%rax
   41339:	83 e0 05             	and    $0x5,%eax
        if(it.user() && it.va() != CONSOLE_ADDR) {
   4133c:	48 83 f8 05          	cmp    $0x5,%rax
   41340:	75 c8                	jne    4130a <syscall_exit_helper(int)+0xb5>
   41342:	48 81 ff 00 80 0b 00 	cmp    $0xb8000,%rdi
   41349:	74 bf                	je     4130a <syscall_exit_helper(int)+0xb5>
        return -1;
   4134b:	4c 89 e6             	mov    %r12,%rsi
    if (*pep_ & PTE_P) {
   4134e:	f6 c2 01             	test   $0x1,%dl
   41351:	75 87                	jne    412da <syscall_exit_helper(int)+0x85>
   41353:	eb ad                	jmp    41302 <syscall_exit_helper(int)+0xad>

        Cleanup metadata in the ptable --> Find the process in ptable and
        set state to P_FREE
    */

    for (ptiter it(ptable[pid].pagetable); it.active(); it.next()) {
   41355:	48 63 c3             	movslq %ebx,%rax
   41358:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4135c:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41360:	48 c1 e0 04          	shl    $0x4,%rax
   41364:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
}

inline ptiter::ptiter(x86_64_pagetable* pt, uintptr_t va)
    : pt_(pt) {
   4136b:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
    go(va);
   4136f:	be 00 00 00 00       	mov    $0x0,%esi
   41374:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   41378:	e8 99 0e 00 00       	callq  42216 <ptiter::go(unsigned long)>
   4137d:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   41384:	ff 00 00 
   41387:	48 39 45 d8          	cmp    %rax,-0x28(%rbp)
   4138b:	77 30                	ja     413bd <syscall_exit_helper(int)+0x168>
}
inline void ptiter::next() {
    down(true);
}
inline uintptr_t ptiter::pa() const {
    return *pep_ & PTE_PAMASK;
   4138d:	49 bd 00 f0 ff ff ff 	movabs $0xffffffffff000,%r13
   41394:	ff 0f 00 
   41397:	49 89 c4             	mov    %rax,%r12
   4139a:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   4139e:	4c 89 ef             	mov    %r13,%rdi
   413a1:	48 23 38             	and    (%rax),%rdi
        kfree(it.kptr());
   413a4:	e8 f9 fd ff ff       	callq  411a2 <kfree(void*)>
    down(true);
   413a9:	be 01 00 00 00       	mov    $0x1,%esi
   413ae:	48 8d 7d c0          	lea    -0x40(%rbp),%rdi
   413b2:	e8 5d 0d 00 00       	callq  42114 <ptiter::down(bool)>
    for (ptiter it(ptable[pid].pagetable); it.active(); it.next()) {
   413b7:	4c 39 65 d8          	cmp    %r12,-0x28(%rbp)
   413bb:	76 dd                	jbe    4139a <syscall_exit_helper(int)+0x145>
    }
     kfree(ptable[pid].pagetable);
   413bd:	48 63 db             	movslq %ebx,%rbx
   413c0:	4c 8d 24 5b          	lea    (%rbx,%rbx,2),%r12
   413c4:	49 c1 e4 02          	shl    $0x2,%r12
   413c8:	49 8d 04 1c          	lea    (%r12,%rbx,1),%rax
   413cc:	48 c1 e0 04          	shl    $0x4,%rax
   413d0:	48 8b b8 20 22 05 00 	mov    0x52220(%rax),%rdi
   413d7:	e8 c6 fd ff ff       	callq  411a2 <kfree(void*)>

    ptable[pid].state = P_FREE;
   413dc:	49 01 dc             	add    %rbx,%r12
   413df:	49 c1 e4 04          	shl    $0x4,%r12
   413e3:	41 c7 84 24 2c 22 05 	movl   $0x0,0x5222c(%r12)
   413ea:	00 00 00 00 00 
}
   413ef:	48 83 c4 20          	add    $0x20,%rsp
   413f3:	5b                   	pop    %rbx
   413f4:	41 5c                	pop    %r12
   413f6:	41 5d                	pop    %r13
   413f8:	41 5e                	pop    %r14
   413fa:	5d                   	pop    %rbp
   413fb:	c3                   	retq   

00000000000413fc <syscall_fork()>:

// syscall_fork()
//    Handles the SYSCALL_FORK system call. This function
//    implements the specification for `sys_fork` in `u-lib.hh`.
pid_t syscall_fork() {
   413fc:	f3 0f 1e fa          	endbr64 
   41400:	55                   	push   %rbp
   41401:	48 89 e5             	mov    %rsp,%rbp
   41404:	41 57                	push   %r15
   41406:	41 56                	push   %r14
   41408:	41 55                	push   %r13
   4140a:	41 54                	push   %r12
   4140c:	53                   	push   %rbx
   4140d:	48 83 ec 48          	sub    $0x48,%rsp
    pid_t child_pid = -1;
    pid_t curr = 1;

    //First, look for a free process slot in the ptable[] array. 
    //Don’t use slot 0 - this slot is reserved for the kernel.
    while(child_pid == -1 && curr < NPROC) {
   41411:	ba fc 22 05 00       	mov    $0x522fc,%edx
    pid_t curr = 1;
   41416:	b8 01 00 00 00       	mov    $0x1,%eax
        if(ptable[curr].state == P_FREE) {
   4141b:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   41420:	83 3a 00             	cmpl   $0x0,(%rdx)
   41423:	41 89 cc             	mov    %ecx,%r12d
   41426:	44 0f 44 e0          	cmove  %eax,%r12d
            child_pid = curr;
        }
        curr++;
   4142a:	83 c0 01             	add    $0x1,%eax
    while(child_pid == -1 && curr < NPROC) {
   4142d:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   41434:	41 83 fc ff          	cmp    $0xffffffff,%r12d
   41438:	75 05                	jne    4143f <syscall_fork()+0x43>
   4143a:	83 f8 0f             	cmp    $0xf,%eax
   4143d:	7e e1                	jle    41420 <syscall_fork()+0x24>
    }

    if (child_pid == -1) {
   4143f:	41 83 fc ff          	cmp    $0xffffffff,%r12d
   41443:	0f 84 6f 03 00 00    	je     417b8 <syscall_fork()+0x3bc>
        return -1;
    }
    
    ptable[child_pid].pid = child_pid;        // process ID
   41449:	49 63 c4             	movslq %r12d,%rax
   4144c:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41450:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41454:	48 c1 e0 04          	shl    $0x4,%rax
   41458:	44 89 a0 28 22 05 00 	mov    %r12d,0x52228(%rax)

    //Next, if a free slot is found, make a copy of current->pagetable (the 
    //forking process’s page table) for the child.
    x86_64_pagetable* proc_pagetable = (x86_64_pagetable*) kalloc(PAGESIZE);
   4145f:	bf 00 10 00 00       	mov    $0x1000,%edi
   41464:	e8 fb f6 ff ff       	callq  40b64 <kalloc(unsigned long)>
   41469:	48 89 c7             	mov    %rax,%rdi

    if((void*) proc_pagetable == (void*) nullptr) {
   4146c:	48 85 c0             	test   %rax,%rax
   4146f:	0f 84 bd 03 00 00    	je     41832 <syscall_fork()+0x436>
        return -1;
    }

    ptable[child_pid].pagetable = proc_pagetable;
   41475:	49 63 c4             	movslq %r12d,%rax
   41478:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   4147c:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41480:	48 c1 e0 04          	shl    $0x4,%rax
   41484:	48 89 b8 20 22 05 00 	mov    %rdi,0x52220(%rax)

    
    memset(ptable[child_pid].pagetable, 0, PAGESIZE);
   4148b:	ba 00 10 00 00       	mov    $0x1000,%edx
   41490:	be 00 00 00 00       	mov    $0x0,%esi
   41495:	e8 a5 2a 00 00       	callq  43f3f <memset>

    //You must also copy the process data in every application page shared by 
    //the two processes.
    for(vmiter it(current->pagetable); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   4149a:	48 8b 05 5f 0d 01 00 	mov    0x10d5f(%rip),%rax        # 52200 <current>
   414a1:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   414a4:	48 89 45 90          	mov    %rax,-0x70(%rbp)
   414a8:	48 89 45 98          	mov    %rax,-0x68(%rbp)
   414ac:	c7 45 a0 03 00 00 00 	movl   $0x3,-0x60(%rbp)
   414b3:	c7 45 a4 ff 0f 00 00 	movl   $0xfff,-0x5c(%rbp)
   414ba:	48 c7 45 a8 00 00 00 	movq   $0x0,-0x58(%rbp)
   414c1:	00 
    real_find(va);
   414c2:	be 00 00 00 00       	mov    $0x0,%esi
   414c7:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   414cb:	e8 a8 09 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   414d0:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   414d4:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   414db:	0f 87 e9 02 00 00    	ja     417ca <syscall_fork()+0x3ce>
                    return -1;
                }
        } else {
            // Map the virtual address to the physical address with the same 
            //permissions in the destination page table
            if (vmiter(ptable[child_pid].pagetable, it.va()).try_map(pa, perm) == -1) {
   414e1:	4d 63 f4             	movslq %r12d,%r14
   414e4:	4f 8d 2c 76          	lea    (%r14,%r14,2),%r13
   414e8:	49 c1 e5 02          	shl    $0x2,%r13
   414ec:	e9 4e 01 00 00       	jmpq   4163f <syscall_fork()+0x243>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   414f1:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   414f8:	ff 0f 00 
   414fb:	48 21 d3             	and    %rdx,%rbx
   414fe:	e9 68 01 00 00       	jmpq   4166b <syscall_fork()+0x26f>
            if (vmiter(ptable[child_pid].pagetable, it.va()).try_map(pa, perm) == -1) {
   41503:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   41508:	48 c1 e0 04          	shl    $0x4,%rax
   4150c:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41513:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   41517:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   4151b:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   41522:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   41529:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   41530:	00 
    real_find(va);
   41531:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41535:	e8 3e 09 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
   4153a:	44 89 fa             	mov    %r15d,%edx
   4153d:	48 89 de             	mov    %rbx,%rsi
   41540:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   41544:	e8 33 0a 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
   41549:	83 f8 ff             	cmp    $0xffffffff,%eax
   4154c:	74 5e                	je     415ac <syscall_fork()+0x1b0>
    if (*pep_ & PTE_P) {
   4154e:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   41552:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   41555:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    if (*pep_ & PTE_P) {
   4155c:	f6 c1 01             	test   $0x1,%cl
   4155f:	74 32                	je     41593 <syscall_fork()+0x197>
        if (level_ > 0) {
   41561:	8b 55 a0             	mov    -0x60(%rbp),%edx
            pa &= ~0x1000UL;
   41564:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   4156b:	ff 0f 00 
   4156e:	48 21 c8             	and    %rcx,%rax
   41571:	48 89 c6             	mov    %rax,%rsi
        if (level_ > 0) {
   41574:	85 d2                	test   %edx,%edx
   41576:	7e 41                	jle    415b9 <syscall_fork()+0x1bd>
   41578:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4157c:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   41583:	48 89 d0             	mov    %rdx,%rax
   41586:	48 d3 e0             	shl    %cl,%rax
   41589:	48 f7 d0             	not    %rax
   4158c:	48 23 45 a8          	and    -0x58(%rbp),%rax
   41590:	48 01 f0             	add    %rsi,%rax
            pages[(uintptr_t)it.pa() / PAGESIZE].refcount += 1;
   41593:	48 c1 e8 0c          	shr    $0xc,%rax
   41597:	80 80 00 20 05 00 01 	addb   $0x1,0x52000(%rax)
   4159e:	eb 7a                	jmp    4161a <syscall_fork()+0x21e>
        return -1;
   415a0:	48 c7 c3 ff ff ff ff 	mov    $0xffffffffffffffff,%rbx
   415a7:	e9 ed 00 00 00       	jmpq   41699 <syscall_fork()+0x29d>
                syscall_exit_helper(child_pid);
   415ac:	44 89 e7             	mov    %r12d,%edi
   415af:	e8 a1 fc ff ff       	callq  41255 <syscall_exit_helper(int)>
                return -1;
   415b4:	e9 f9 01 00 00       	jmpq   417b2 <syscall_fork()+0x3b6>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   415b9:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   415c0:	ff 0f 00 
   415c3:	48 21 c1             	and    %rax,%rcx
   415c6:	48 89 ce             	mov    %rcx,%rsi
   415c9:	eb ad                	jmp    41578 <syscall_fork()+0x17c>
            if (vmiter(ptable[child_pid].pagetable, it.va()).try_map(pa, perm) == -1) {
   415cb:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   415d0:	48 c1 e0 04          	shl    $0x4,%rax
   415d4:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   415db:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   415df:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   415e3:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   415ea:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   415f1:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   415f8:	00 
    real_find(va);
   415f9:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   415fd:	e8 76 08 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
   41602:	44 89 fa             	mov    %r15d,%edx
   41605:	48 89 de             	mov    %rbx,%rsi
   41608:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4160c:	e8 6b 09 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
   41611:	83 f8 ff             	cmp    $0xffffffff,%eax
   41614:	0f 84 90 01 00 00    	je     417aa <syscall_fork()+0x3ae>
    return find(va_ + delta);
   4161a:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   4161e:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41625:	48 8d 7d 90          	lea    -0x70(%rbp),%rdi
   41629:	e8 4a 08 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   4162e:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
    for(vmiter it(current->pagetable); it.va() < MEMSIZE_VIRTUAL; it += PAGESIZE) {
   41632:	48 81 fe ff ff 2f 00 	cmp    $0x2fffff,%rsi
   41639:	0f 87 8b 01 00 00    	ja     417ca <syscall_fork()+0x3ce>
    if (*pep_ & PTE_P) {
   4163f:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   41643:	48 8b 10             	mov    (%rax),%rdx
   41646:	49 89 d7             	mov    %rdx,%r15
   41649:	41 83 e7 01          	and    $0x1,%r15d
   4164d:	0f 84 4d ff ff ff    	je     415a0 <syscall_fork()+0x1a4>
        if (level_ > 0) {
   41653:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   41656:	48 bb 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rbx
   4165d:	ff 0f 00 
   41660:	48 21 d3             	and    %rdx,%rbx
        if (level_ > 0) {
   41663:	85 c0                	test   %eax,%eax
   41665:	0f 8e 86 fe ff ff    	jle    414f1 <syscall_fork()+0xf5>
   4166b:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   4166f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41676:	48 d3 e0             	shl    %cl,%rax
   41679:	48 f7 d0             	not    %rax
   4167c:	48 21 f0             	and    %rsi,%rax
   4167f:	48 01 c3             	add    %rax,%rbx
        return *pep_ & perm_;
   41682:	4c 63 7d a4          	movslq -0x5c(%rbp),%r15
   41686:	49 21 d7             	and    %rdx,%r15
    return (*pep_ & perm_ & p) == p;
   41689:	4c 89 f8             	mov    %r15,%rax
   4168c:	83 e0 03             	and    $0x3,%eax
        if(it.present() && !it.writable()) {
   4168f:	48 83 f8 03          	cmp    $0x3,%rax
   41693:	0f 85 6a fe ff ff    	jne    41503 <syscall_fork()+0x107>
   41699:	48 63 45 a4          	movslq -0x5c(%rbp),%rax
   4169d:	48 21 c2             	and    %rax,%rdx
   416a0:	83 e2 05             	and    $0x5,%edx
        } else if(it.user() && it.va() != CONSOLE_ADDR) {
   416a3:	48 83 fa 05          	cmp    $0x5,%rdx
   416a7:	0f 85 1e ff ff ff    	jne    415cb <syscall_fork()+0x1cf>
   416ad:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   416b4:	0f 84 11 ff ff ff    	je     415cb <syscall_fork()+0x1cf>
                uintptr_t child_pa = (uintptr_t)(kalloc(PAGESIZE));
   416ba:	bf 00 10 00 00       	mov    $0x1000,%edi
   416bf:	e8 a0 f4 ff ff       	callq  40b64 <kalloc(unsigned long)>
   416c4:	48 89 c3             	mov    %rax,%rbx
                if ((void*) child_pa == (void*) nullptr) {
   416c7:	48 85 c0             	test   %rax,%rax
   416ca:	0f 84 bb 00 00 00    	je     4178b <syscall_fork()+0x38f>
    if (*pep_ & PTE_P) {
   416d0:	48 8b 45 98          	mov    -0x68(%rbp),%rax
   416d4:	48 8b 08             	mov    (%rax),%rcx
        return -1;
   416d7:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
    if (*pep_ & PTE_P) {
   416de:	f6 c1 01             	test   $0x1,%cl
   416e1:	74 34                	je     41717 <syscall_fork()+0x31b>
        if (level_ > 0) {
   416e3:	8b 45 a0             	mov    -0x60(%rbp),%eax
            pa &= ~0x1000UL;
   416e6:	48 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rsi
   416ed:	ff 0f 00 
   416f0:	48 21 ce             	and    %rcx,%rsi
   416f3:	48 89 f2             	mov    %rsi,%rdx
        if (level_ > 0) {
   416f6:	85 c0                	test   %eax,%eax
   416f8:	0f 8e 97 00 00 00    	jle    41795 <syscall_fork()+0x399>
   416fe:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   41702:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41709:	48 d3 e0             	shl    %cl,%rax
   4170c:	48 f7 d0             	not    %rax
   4170f:	48 23 45 a8          	and    -0x58(%rbp),%rax
   41713:	48 8d 34 10          	lea    (%rax,%rdx,1),%rsi
                memcpy((void*) child_pa, (void*) it.pa(), PAGESIZE);
   41717:	ba 00 10 00 00       	mov    $0x1000,%edx
   4171c:	48 89 df             	mov    %rbx,%rdi
   4171f:	e8 aa 27 00 00       	callq  43ece <memcpy>
                if (vmiter(ptable[child_pid].pagetable, it.va()).try_map(child_pa, PTE_P | PTE_W | PTE_U) == -1) {
   41724:	4b 8d 44 35 00       	lea    0x0(%r13,%r14,1),%rax
   41729:	48 c1 e0 04          	shl    $0x4,%rax
   4172d:	48 8b 80 20 22 05 00 	mov    0x52220(%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   41734:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   41738:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   4173c:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   41743:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4174a:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   41751:	00 
    real_find(va);
   41752:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   41756:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4175a:	e8 19 07 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
   4175f:	ba 07 00 00 00       	mov    $0x7,%edx
   41764:	48 89 de             	mov    %rbx,%rsi
   41767:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4176b:	e8 0c 08 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
   41770:	83 f8 ff             	cmp    $0xffffffff,%eax
   41773:	0f 85 a1 fe ff ff    	jne    4161a <syscall_fork()+0x21e>
                    kfree((void*) child_pa);
   41779:	48 89 df             	mov    %rbx,%rdi
   4177c:	e8 21 fa ff ff       	callq  411a2 <kfree(void*)>
                    syscall_exit_helper(child_pid);
   41781:	44 89 e7             	mov    %r12d,%edi
   41784:	e8 cc fa ff ff       	callq  41255 <syscall_exit_helper(int)>
                    return -1;
   41789:	eb 27                	jmp    417b2 <syscall_fork()+0x3b6>
                    syscall_exit_helper(child_pid);
   4178b:	44 89 e7             	mov    %r12d,%edi
   4178e:	e8 c2 fa ff ff       	callq  41255 <syscall_exit_helper(int)>
                    return -1;
   41793:	eb 1d                	jmp    417b2 <syscall_fork()+0x3b6>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41795:	48 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%rsi
   4179c:	ff 0f 00 
   4179f:	48 21 f1             	and    %rsi,%rcx
   417a2:	48 89 ca             	mov    %rcx,%rdx
   417a5:	e9 54 ff ff ff       	jmpq   416fe <syscall_fork()+0x302>
                syscall_exit_helper(child_pid);
   417aa:	44 89 e7             	mov    %r12d,%edi
   417ad:	e8 a3 fa ff ff       	callq  41255 <syscall_exit_helper(int)>
                return -1;
   417b2:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d

    ptable[child_pid].regs.reg_rax = 0;
    ptable[current->pid].regs.reg_rax = child_pid;
    
    return child_pid;
}
   417b8:	44 89 e0             	mov    %r12d,%eax
   417bb:	48 83 c4 48          	add    $0x48,%rsp
   417bf:	5b                   	pop    %rbx
   417c0:	41 5c                	pop    %r12
   417c2:	41 5d                	pop    %r13
   417c4:	41 5e                	pop    %r14
   417c6:	41 5f                	pop    %r15
   417c8:	5d                   	pop    %rbp
   417c9:	c3                   	retq   
    ptable[child_pid].state = P_RUNNABLE;        // process state (see above)
   417ca:	49 63 d4             	movslq %r12d,%rdx
   417cd:	48 8d 04 52          	lea    (%rdx,%rdx,2),%rax
   417d1:	48 c1 e0 02          	shl    $0x2,%rax
   417d5:	48 8d 0c 10          	lea    (%rax,%rdx,1),%rcx
   417d9:	48 c1 e1 04          	shl    $0x4,%rcx
   417dd:	c7 81 2c 22 05 00 01 	movl   $0x1,0x5222c(%rcx)
   417e4:	00 00 00 
    ptable[child_pid].regs = current->regs;      // process's current registers
   417e7:	4c 8b 0d 12 0a 01 00 	mov    0x10a12(%rip),%r9        # 52200 <current>
   417ee:	49 89 c8             	mov    %rcx,%r8
   417f1:	49 81 c0 30 22 05 00 	add    $0x52230,%r8
   417f8:	49 8d 71 10          	lea    0x10(%r9),%rsi
   417fc:	b9 18 00 00 00       	mov    $0x18,%ecx
   41801:	4c 89 c7             	mov    %r8,%rdi
   41804:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    ptable[child_pid].regs.reg_rax = 0;
   41807:	48 01 d0             	add    %rdx,%rax
   4180a:	48 c1 e0 04          	shl    $0x4,%rax
   4180e:	48 c7 80 30 22 05 00 	movq   $0x0,0x52230(%rax)
   41815:	00 00 00 00 
    ptable[current->pid].regs.reg_rax = child_pid;
   41819:	49 63 41 08          	movslq 0x8(%r9),%rax
   4181d:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   41821:	48 8d 04 88          	lea    (%rax,%rcx,4),%rax
   41825:	48 c1 e0 04          	shl    $0x4,%rax
   41829:	48 89 90 30 22 05 00 	mov    %rdx,0x52230(%rax)
    return child_pid;
   41830:	eb 86                	jmp    417b8 <syscall_fork()+0x3bc>
        return -1;
   41832:	41 bc ff ff ff ff    	mov    $0xffffffff,%r12d
   41838:	e9 7b ff ff ff       	jmpq   417b8 <syscall_fork()+0x3bc>

000000000004183d <syscall_exit()>:

// syscall_exit()
//    Handles the SYSCALL_EXIT system call. This function
//    implements the specification for `sys_exit` in `u-lib.hh`.
void syscall_exit() {
   4183d:	f3 0f 1e fa          	endbr64 
   41841:	55                   	push   %rbp
   41842:	48 89 e5             	mov    %rsp,%rbp
    // Implement for Step 7!
    syscall_exit_helper(current->pid);
   41845:	48 8b 05 b4 09 01 00 	mov    0x109b4(%rip),%rax        # 52200 <current>
   4184c:	8b 78 08             	mov    0x8(%rax),%edi
   4184f:	e8 01 fa ff ff       	callq  41255 <syscall_exit_helper(int)>
}
   41854:	5d                   	pop    %rbp
   41855:	c3                   	retq   

0000000000041856 <run(proc*)>:
// run(p)
//    Runs process `p`. This involves setting `current = p` and calling
//    `exception_return` to restore its page table and registers.
//    You should *not* have to edit this function.

void run(proc* p) {
   41856:	f3 0f 1e fa          	endbr64 
   4185a:	55                   	push   %rbp
   4185b:	48 89 e5             	mov    %rsp,%rbp
   4185e:	53                   	push   %rbx
   4185f:	48 83 ec 08          	sub    $0x8,%rsp
    assert(p->state == P_RUNNABLE);
   41863:	83 7f 0c 01          	cmpl   $0x1,0xc(%rdi)
   41867:	75 1a                	jne    41883 <run(proc*)+0x2d>
   41869:	48 89 fb             	mov    %rdi,%rbx
    current = p;
   4186c:	48 89 3d 8d 09 01 00 	mov    %rdi,0x1098d(%rip)        # 52200 <current>

    // Check the process's current pagetable.
    check_pagetable(p->pagetable);
   41873:	48 8b 3f             	mov    (%rdi),%rdi
   41876:	e8 4b 14 00 00       	callq  42cc6 <check_pagetable(x86_64_pagetable*)>

    // This function is defined in k-exception.S. It restores the process's
    // registers then jumps back to user mode.
    exception_return(p);
   4187b:	48 89 df             	mov    %rbx,%rdi
   4187e:	e8 1c f2 ff ff       	callq  40a9f <exception_return(proc*)>
    assert(p->state == P_RUNNABLE);
   41883:	ba be 4a 04 00       	mov    $0x44abe,%edx
   41888:	be 7c 02 00 00       	mov    $0x27c,%esi
   4188d:	bf d5 4a 04 00       	mov    $0x44ad5,%edi
   41892:	e8 47 0f 00 00       	callq  427de <assert_fail(char const*, int, char const*)>

0000000000041897 <kernel(char const*)>:
void kernel(const char* command) {
   41897:	f3 0f 1e fa          	endbr64 
   4189b:	55                   	push   %rbp
   4189c:	48 89 e5             	mov    %rsp,%rbp
   4189f:	53                   	push   %rbx
   418a0:	48 83 ec 48          	sub    $0x48,%rsp
   418a4:	48 89 fb             	mov    %rdi,%rbx
    init_hardware();
   418a7:	e8 f1 0f 00 00       	callq  4289d <init_hardware()>
    log_printf("Starting WeensyOS\n");
   418ac:	bf df 4a 04 00       	mov    $0x44adf,%edi
   418b1:	b8 00 00 00 00       	mov    $0x0,%eax
   418b6:	e8 f8 0d 00 00       	callq  426b3 <log_printf(char const*, ...)>
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_acquire);
	__glibcxx_assert(__b != memory_order_acq_rel);
	__glibcxx_assert(__b != memory_order_consume);

	__atomic_store_n(&_M_i, __i, int(__m));
   418bb:	48 c7 05 6a 16 01 00 	movq   $0x1,0x1166a(%rip)        # 52f30 <ticks>
   418c2:	01 00 00 00 
   418c6:	0f ae f0             	mfence 
    init_timer(HZ);
   418c9:	bf 64 00 00 00       	mov    $0x64,%edi
   418ce:	e8 36 0a 00 00       	callq  42309 <init_timer(int)>
    console_clear();
   418d3:	e8 3d 2f 00 00       	callq  44815 <console_clear()>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   418d8:	48 c7 45 b8 00 40 05 	movq   $0x54000,-0x48(%rbp)
   418df:	00 
   418e0:	48 c7 45 c0 00 40 05 	movq   $0x54000,-0x40(%rbp)
   418e7:	00 
   418e8:	c7 45 c8 03 00 00 00 	movl   $0x3,-0x38(%rbp)
   418ef:	c7 45 cc ff 0f 00 00 	movl   $0xfff,-0x34(%rbp)
   418f6:	48 c7 45 d0 00 00 00 	movq   $0x0,-0x30(%rbp)
   418fd:	00 
    real_find(va);
   418fe:	be 00 00 00 00       	mov    $0x0,%esi
   41903:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41907:	e8 6c 05 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   4190c:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41910:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   41917:	0f 86 12 01 00 00    	jbe    41a2f <kernel(char const*)+0x198>
    for (pid_t i = 0; i < NPROC; i++) {
   4191d:	ba 28 22 05 00       	mov    $0x52228,%edx
   41922:	b8 00 00 00 00       	mov    $0x0,%eax
        ptable[i].pid = i;
   41927:	89 02                	mov    %eax,(%rdx)
        ptable[i].state = P_FREE;
   41929:	c7 42 04 00 00 00 00 	movl   $0x0,0x4(%rdx)
    for (pid_t i = 0; i < NPROC; i++) {
   41930:	83 c0 01             	add    $0x1,%eax
   41933:	48 81 c2 d0 00 00 00 	add    $0xd0,%rdx
   4193a:	83 f8 10             	cmp    $0x10,%eax
   4193d:	75 e8                	jne    41927 <kernel(char const*)+0x90>
    if (command && program_loader(command).present()) {
   4193f:	48 85 db             	test   %rbx,%rbx
   41942:	74 1d                	je     41961 <kernel(char const*)+0xca>
   41944:	48 89 de             	mov    %rbx,%rsi
   41947:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   4194b:	e8 12 1b 00 00       	callq  43462 <program_loader::program_loader(char const*)>
   41950:	48 8d 7d d8          	lea    -0x28(%rbp),%rdi
   41954:	e8 11 1a 00 00       	callq  4336a <program_loader::present() const>
   41959:	84 c0                	test   %al,%al
   4195b:	0f 85 23 01 00 00    	jne    41a84 <kernel(char const*)+0x1ed>
        process_setup(1, "allocator");
   41961:	be f2 4a 04 00       	mov    $0x44af2,%esi
   41966:	bf 01 00 00 00       	mov    $0x1,%edi
   4196b:	e8 7d f2 ff ff       	callq  40bed <process_setup(int, char const*)>
        process_setup(2, "allocator2");
   41970:	be fc 4a 04 00       	mov    $0x44afc,%esi
   41975:	bf 02 00 00 00       	mov    $0x2,%edi
   4197a:	e8 6e f2 ff ff       	callq  40bed <process_setup(int, char const*)>
        process_setup(3, "allocator3");
   4197f:	be 07 4b 04 00       	mov    $0x44b07,%esi
   41984:	bf 03 00 00 00       	mov    $0x3,%edi
   41989:	e8 5f f2 ff ff       	callq  40bed <process_setup(int, char const*)>
        process_setup(4, "allocator4");
   4198e:	be 12 4b 04 00       	mov    $0x44b12,%esi
   41993:	bf 04 00 00 00       	mov    $0x4,%edi
   41998:	e8 50 f2 ff ff       	callq  40bed <process_setup(int, char const*)>
    run(&ptable[1]);
   4199d:	bf f0 22 05 00       	mov    $0x522f0,%edi
   419a2:	e8 af fe ff ff       	callq  41856 <run(proc*)>
    int r = try_map(pa, perm);
   419a7:	ba 07 00 00 00       	mov    $0x7,%edx
   419ac:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   419b0:	e8 c7 05 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   419b5:	85 c0                	test   %eax,%eax
   419b7:	74 51                	je     41a0a <kernel(char const*)+0x173>
   419b9:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   419be:	be b1 00 00 00       	mov    $0xb1,%esi
   419c3:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   419c8:	e8 11 0e 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
    int r = try_map(pa, perm);
   419cd:	ba 07 00 00 00       	mov    $0x7,%edx
   419d2:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   419d6:	e8 a1 05 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   419db:	85 c0                	test   %eax,%eax
   419dd:	74 2b                	je     41a0a <kernel(char const*)+0x173>
   419df:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   419e4:	be b1 00 00 00       	mov    $0xb1,%esi
   419e9:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   419ee:	e8 eb 0d 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
    int r = try_map(pa, perm);
   419f3:	ba 00 00 00 00       	mov    $0x0,%edx
   419f8:	be 00 00 00 00       	mov    $0x0,%esi
   419fd:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41a01:	e8 76 05 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41a06:	85 c0                	test   %eax,%eax
   41a08:	75 66                	jne    41a70 <kernel(char const*)+0x1d9>
    return find(va_ + delta);
   41a0a:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   41a0e:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   41a15:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41a19:	e8 5a 04 00 00       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   41a1e:	48 8b 75 d0          	mov    -0x30(%rbp),%rsi
    for (vmiter it(kernel_pagetable); it.va() < MEMSIZE_PHYSICAL; it += PAGESIZE) {
   41a22:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   41a29:	0f 87 ee fe ff ff    	ja     4191d <kernel(char const*)+0x86>
        if (it.va() != 0) {
   41a2f:	48 85 f6             	test   %rsi,%rsi
   41a32:	74 bf                	je     419f3 <kernel(char const*)+0x15c>
            if (it.va() < 0x100000) {
   41a34:	48 81 fe ff ff 0f 00 	cmp    $0xfffff,%rsi
   41a3b:	77 90                	ja     419cd <kernel(char const*)+0x136>
                if (it.va() == 0xB8000) {
   41a3d:	48 81 fe 00 80 0b 00 	cmp    $0xb8000,%rsi
   41a44:	0f 84 5d ff ff ff    	je     419a7 <kernel(char const*)+0x110>
    int r = try_map(pa, perm);
   41a4a:	ba 03 00 00 00       	mov    $0x3,%edx
   41a4f:	48 8d 7d b8          	lea    -0x48(%rbp),%rdi
   41a53:	e8 24 05 00 00       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   41a58:	85 c0                	test   %eax,%eax
   41a5a:	74 ae                	je     41a0a <kernel(char const*)+0x173>
   41a5c:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   41a61:	be b1 00 00 00       	mov    $0xb1,%esi
   41a66:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   41a6b:	e8 6e 0d 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
   41a70:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   41a75:	be b1 00 00 00       	mov    $0xb1,%esi
   41a7a:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   41a7f:	e8 5a 0d 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
        process_setup(1, command);
   41a84:	48 89 de             	mov    %rbx,%rsi
   41a87:	bf 01 00 00 00       	mov    $0x1,%edi
   41a8c:	e8 5c f1 ff ff       	callq  40bed <process_setup(int, char const*)>
   41a91:	e9 07 ff ff ff       	jmpq   4199d <kernel(char const*)+0x106>

0000000000041a96 <memshow()>:
//    Draws a picture of memory (physical and virtual) on the CGA console.
//    Switches to a new process's virtual memory map every 0.25 sec.
//    Uses `console_memviewer()`, a function defined in `k-memviewer.cc`.
//    You should *not* have to edit this function.

void memshow() {
   41a96:	f3 0f 1e fa          	endbr64 
   41a9a:	55                   	push   %rbp
   41a9b:	48 89 e5             	mov    %rsp,%rbp
    static unsigned last_ticks = 0;
    static int showing = 0;

    // switch to a new process every 0.25 sec
    if (last_ticks == 0 || ticks - last_ticks >= HZ / 2) {
   41a9e:	83 3d 7f 14 01 00 00 	cmpl   $0x0,0x1147f(%rip)        # 52f24 <memshow()::last_ticks>
   41aa5:	74 16                	je     41abd <memshow()+0x27>
      {
	memory_order __b = __m & __memory_order_mask;
	__glibcxx_assert(__b != memory_order_release);
	__glibcxx_assert(__b != memory_order_acq_rel);

	return __atomic_load_n(&_M_i, int(__m));
   41aa7:	48 8b 05 82 14 01 00 	mov    0x11482(%rip),%rax        # 52f30 <ticks>
   41aae:	8b 15 70 14 01 00    	mov    0x11470(%rip),%edx        # 52f24 <memshow()::last_ticks>
   41ab4:	48 29 d0             	sub    %rdx,%rax
   41ab7:	48 83 f8 31          	cmp    $0x31,%rax
   41abb:	76 27                	jbe    41ae4 <memshow()+0x4e>
   41abd:	48 8b 05 6c 14 01 00 	mov    0x1146c(%rip),%rax        # 52f30 <ticks>
        last_ticks = ticks;
   41ac4:	89 05 5a 14 01 00    	mov    %eax,0x1145a(%rip)        # 52f24 <memshow()::last_ticks>
        showing = (showing + 1) % NPROC;
   41aca:	8b 05 50 14 01 00    	mov    0x11450(%rip),%eax        # 52f20 <memshow()::showing>
   41ad0:	83 c0 01             	add    $0x1,%eax
   41ad3:	99                   	cltd   
   41ad4:	c1 ea 1c             	shr    $0x1c,%edx
   41ad7:	01 d0                	add    %edx,%eax
   41ad9:	83 e0 0f             	and    $0xf,%eax
   41adc:	29 d0                	sub    %edx,%eax
   41ade:	89 05 3c 14 01 00    	mov    %eax,0x1143c(%rip)        # 52f20 <memshow()::showing>
    }

    proc* p = nullptr;
    for (int search = 0; !p && search < NPROC; ++search) {
   41ae4:	8b 05 36 14 01 00    	mov    0x11436(%rip),%eax        # 52f20 <memshow()::showing>
void memshow() {
   41aea:	b9 10 00 00 00       	mov    $0x10,%ecx
   41aef:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   41af5:	be 01 00 00 00       	mov    $0x1,%esi
   41afa:	eb 16                	jmp    41b12 <memshow()+0x7c>
        if (ptable[showing].state != P_FREE
            && ptable[showing].pagetable) {
            p = &ptable[showing];
        } else {
            showing = (showing + 1) % NPROC;
   41afc:	83 c0 01             	add    $0x1,%eax
   41aff:	99                   	cltd   
   41b00:	c1 ea 1c             	shr    $0x1c,%edx
   41b03:	01 d0                	add    %edx,%eax
   41b05:	83 e0 0f             	and    $0xf,%eax
   41b08:	29 d0                	sub    %edx,%eax
    for (int search = 0; !p && search < NPROC; ++search) {
   41b0a:	41 89 f0             	mov    %esi,%r8d
   41b0d:	83 e9 01             	sub    $0x1,%ecx
   41b10:	74 54                	je     41b66 <memshow()+0xd0>
        if (ptable[showing].state != P_FREE
   41b12:	48 63 d0             	movslq %eax,%rdx
   41b15:	48 8d 3c 52          	lea    (%rdx,%rdx,2),%rdi
   41b19:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   41b1d:	48 c1 e2 04          	shl    $0x4,%rdx
   41b21:	83 ba 2c 22 05 00 00 	cmpl   $0x0,0x5222c(%rdx)
   41b28:	74 d2                	je     41afc <memshow()+0x66>
            && ptable[showing].pagetable) {
   41b2a:	48 63 d0             	movslq %eax,%rdx
   41b2d:	48 8d 14 ba          	lea    (%rdx,%rdi,4),%rdx
   41b31:	48 c1 e2 04          	shl    $0x4,%rdx
   41b35:	48 83 ba 20 22 05 00 	cmpq   $0x0,0x52220(%rdx)
   41b3c:	00 
   41b3d:	74 bd                	je     41afc <memshow()+0x66>
   41b3f:	45 84 c0             	test   %r8b,%r8b
   41b42:	74 06                	je     41b4a <memshow()+0xb4>
   41b44:	89 05 d6 13 01 00    	mov    %eax,0x113d6(%rip)        # 52f20 <memshow()::showing>
            p = &ptable[showing];
   41b4a:	48 98                	cltq   
   41b4c:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41b50:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41b54:	48 c1 e7 04          	shl    $0x4,%rdi
   41b58:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
        }
    }

    extern void console_memviewer(proc* vmp);
    console_memviewer(p);
   41b5f:	e8 95 20 00 00       	callq  43bf9 <console_memviewer(proc*)>
}
   41b64:	5d                   	pop    %rbp
   41b65:	c3                   	retq   
   41b66:	89 05 b4 13 01 00    	mov    %eax,0x113b4(%rip)        # 52f20 <memshow()::showing>
    for (int search = 0; !p && search < NPROC; ++search) {
   41b6c:	bf 00 00 00 00       	mov    $0x0,%edi
   41b71:	eb ec                	jmp    41b5f <memshow()+0xc9>

0000000000041b73 <schedule()>:
void schedule() {
   41b73:	f3 0f 1e fa          	endbr64 
   41b77:	55                   	push   %rbp
   41b78:	48 89 e5             	mov    %rsp,%rbp
   41b7b:	41 54                	push   %r12
   41b7d:	53                   	push   %rbx
    pid_t pid = current->pid;
   41b7e:	48 8b 05 7b 06 01 00 	mov    0x1067b(%rip),%rax        # 52200 <current>
        pid = (pid + 1) % NPROC;
   41b85:	8b 40 08             	mov    0x8(%rax),%eax
   41b88:	83 c0 01             	add    $0x1,%eax
   41b8b:	99                   	cltd   
   41b8c:	c1 ea 1c             	shr    $0x1c,%edx
   41b8f:	01 d0                	add    %edx,%eax
   41b91:	83 e0 0f             	and    $0xf,%eax
   41b94:	29 d0                	sub    %edx,%eax
   41b96:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41b99:	48 98                	cltq   
   41b9b:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41b9f:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41ba3:	48 c1 e0 04          	shl    $0x4,%rax
   41ba7:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   41bae:	74 5c                	je     41c0c <schedule()+0x99>
        check_keyboard();
   41bb0:	e8 f2 14 00 00       	callq  430a7 <check_keyboard()>
    for (unsigned spins = 1; true; ++spins) {
   41bb5:	bb 01 00 00 00       	mov    $0x1,%ebx
   41bba:	83 c3 01             	add    $0x1,%ebx
        pid = (pid + 1) % NPROC;
   41bbd:	41 8d 44 24 01       	lea    0x1(%r12),%eax
   41bc2:	99                   	cltd   
   41bc3:	c1 ea 1c             	shr    $0x1c,%edx
   41bc6:	01 d0                	add    %edx,%eax
   41bc8:	83 e0 0f             	and    $0xf,%eax
   41bcb:	29 d0                	sub    %edx,%eax
   41bcd:	41 89 c4             	mov    %eax,%r12d
        if (ptable[pid].state == P_RUNNABLE) {
   41bd0:	48 98                	cltq   
   41bd2:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41bd6:	48 8d 04 90          	lea    (%rax,%rdx,4),%rax
   41bda:	48 c1 e0 04          	shl    $0x4,%rax
   41bde:	83 b8 2c 22 05 00 01 	cmpl   $0x1,0x5222c(%rax)
   41be5:	74 25                	je     41c0c <schedule()+0x99>
        check_keyboard();
   41be7:	e8 bb 14 00 00       	callq  430a7 <check_keyboard()>
        if (spins % (1 << 12) == 0) {
   41bec:	f7 c3 ff 0f 00 00    	test   $0xfff,%ebx
   41bf2:	75 c6                	jne    41bba <schedule()+0x47>
            memshow();
   41bf4:	e8 9d fe ff ff       	callq  41a96 <memshow()>
            log_printf("%u\n", spins);
   41bf9:	89 de                	mov    %ebx,%esi
   41bfb:	bf 1d 4b 04 00       	mov    $0x44b1d,%edi
   41c00:	b8 00 00 00 00       	mov    $0x0,%eax
   41c05:	e8 a9 0a 00 00       	callq  426b3 <log_printf(char const*, ...)>
   41c0a:	eb ae                	jmp    41bba <schedule()+0x47>
            run(&ptable[pid]);
   41c0c:	49 63 c4             	movslq %r12d,%rax
   41c0f:	48 8d 14 40          	lea    (%rax,%rax,2),%rdx
   41c13:	48 8d 3c 90          	lea    (%rax,%rdx,4),%rdi
   41c17:	48 c1 e7 04          	shl    $0x4,%rdi
   41c1b:	48 81 c7 20 22 05 00 	add    $0x52220,%rdi
   41c22:	e8 2f fc ff ff       	callq  41856 <run(proc*)>

0000000000041c27 <exception(regstate*)>:
void exception(regstate* regs) {
   41c27:	f3 0f 1e fa          	endbr64 
   41c2b:	55                   	push   %rbp
   41c2c:	48 89 e5             	mov    %rsp,%rbp
   41c2f:	53                   	push   %rbx
   41c30:	48 83 ec 08          	sub    $0x8,%rsp
   41c34:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41c37:	48 8b 1d c2 05 01 00 	mov    0x105c2(%rip),%rbx        # 52200 <current>
   41c3e:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41c42:	b9 18 00 00 00       	mov    $0x18,%ecx
   41c47:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41c4a:	8b 3d ac 73 07 00    	mov    0x773ac(%rip),%edi        # b8ffc <cursorpos>
   41c50:	e8 dd 07 00 00       	callq  42432 <console_show_cursor(int)>
    if (regs->reg_intno != INT_PF || (regs->reg_errcode & PFERR_USER)) {
   41c55:	83 bb 98 00 00 00 0e 	cmpl   $0xe,0x98(%rbx)
   41c5c:	75 09                	jne    41c67 <exception(regstate*)+0x40>
   41c5e:	f6 83 a0 00 00 00 04 	testb  $0x4,0xa0(%rbx)
   41c65:	74 05                	je     41c6c <exception(regstate*)+0x45>
        memshow();
   41c67:	e8 2a fe ff ff       	callq  41a96 <memshow()>
    check_keyboard();
   41c6c:	e8 36 14 00 00       	callq  430a7 <check_keyboard()>
    switch (regs->reg_intno) {
   41c71:	8b b3 98 00 00 00    	mov    0x98(%rbx),%esi
   41c77:	83 fe 0e             	cmp    $0xe,%esi
   41c7a:	74 22                	je     41c9e <exception(regstate*)+0x77>
   41c7c:	83 fe 20             	cmp    $0x20,%esi
   41c7f:	0f 85 a3 00 00 00    	jne    41d28 <exception(regstate*)+0x101>
      { return __atomic_add_fetch(&_M_i, 1, int(memory_order_seq_cst)); }
   41c85:	f0 48 83 05 a2 12 01 	lock addq $0x1,0x112a2(%rip)        # 52f30 <ticks>
   41c8c:	00 01 
}
inline uint32_t lapicstate::read(int reg) const {
    return reg_[reg].v;
}
inline void lapicstate::write(int reg, uint32_t v) {
    reg_[reg].v = v;
   41c8e:	b8 b0 00 e0 fe       	mov    $0xfee000b0,%eax
   41c93:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        schedule();
   41c99:	e8 d5 fe ff ff       	callq  41b73 <schedule()>
    asm volatile("movq %0, %%cr0" : : "r" (x));
}

__always_inline uintptr_t rdcr2() {
    uintptr_t x;
    asm volatile("movq %%cr2, %0" : "=r" (x));
   41c9e:	0f 20 d6             	mov    %cr2,%rsi
        const char* operation = regs->reg_errcode & PFERR_WRITE
   41ca1:	48 8b 83 a0 00 00 00 	mov    0xa0(%rbx),%rax
                ? "write" : "read";
   41ca8:	a8 02                	test   $0x2,%al
   41caa:	41 b9 21 4b 04 00    	mov    $0x44b21,%r9d
   41cb0:	ba 27 4b 04 00       	mov    $0x44b27,%edx
   41cb5:	4c 0f 44 ca          	cmove  %rdx,%r9
                ? "protection problem" : "missing page";
   41cb9:	a8 01                	test   $0x1,%al
   41cbb:	b9 2c 4b 04 00       	mov    $0x44b2c,%ecx
   41cc0:	ba 3f 4b 04 00       	mov    $0x44b3f,%edx
   41cc5:	48 0f 44 ca          	cmove  %rdx,%rcx
        if (!(regs->reg_errcode & PFERR_USER)) {
   41cc9:	a8 04                	test   $0x4,%al
   41ccb:	74 42                	je     41d0f <exception(regstate*)+0xe8>
        console_printf(CPOS(24, 0), 0x0C00,
   41ccd:	48 8b 05 2c 05 01 00 	mov    0x1052c(%rip),%rax        # 52200 <current>
   41cd4:	8b 40 08             	mov    0x8(%rax),%eax
   41cd7:	ff b3 a8 00 00 00    	pushq  0xa8(%rbx)
   41cdd:	51                   	push   %rcx
   41cde:	49 89 f0             	mov    %rsi,%r8
   41ce1:	89 c1                	mov    %eax,%ecx
   41ce3:	ba b8 4b 04 00       	mov    $0x44bb8,%edx
   41ce8:	be 00 0c 00 00       	mov    $0xc00,%esi
   41ced:	bf 80 07 00 00       	mov    $0x780,%edi
   41cf2:	b8 00 00 00 00       	mov    $0x0,%eax
   41cf7:	e8 47 2d 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
        current->state = P_BROKEN;
   41cfc:	48 8b 05 fd 04 01 00 	mov    0x104fd(%rip),%rax        # 52200 <current>
   41d03:	c7 40 0c 03 00 00 00 	movl   $0x3,0xc(%rax)
        schedule();
   41d0a:	e8 64 fe ff ff       	callq  41b73 <schedule()>
            panic("Kernel page fault for %p (%s %s, rip=%p)!\n",
   41d0f:	4c 8b 83 a8 00 00 00 	mov    0xa8(%rbx),%r8
   41d16:	4c 89 ca             	mov    %r9,%rdx
   41d19:	bf 88 4b 04 00       	mov    $0x44b88,%edi
   41d1e:	b8 00 00 00 00       	mov    $0x0,%eax
   41d23:	e8 a1 14 00 00       	callq  431c9 <panic(char const*, ...)>
        panic("Unexpected exception %d!\n", regs->reg_intno);
   41d28:	bf 4c 4b 04 00       	mov    $0x44b4c,%edi
   41d2d:	b8 00 00 00 00       	mov    $0x0,%eax
   41d32:	e8 92 14 00 00       	callq  431c9 <panic(char const*, ...)>

0000000000041d37 <syscall(regstate*)>:
uintptr_t syscall(regstate* regs) {
   41d37:	f3 0f 1e fa          	endbr64 
   41d3b:	55                   	push   %rbp
   41d3c:	48 89 e5             	mov    %rsp,%rbp
   41d3f:	53                   	push   %rbx
   41d40:	48 83 ec 08          	sub    $0x8,%rsp
   41d44:	48 89 fe             	mov    %rdi,%rsi
    current->regs = *regs;
   41d47:	48 8b 1d b2 04 01 00 	mov    0x104b2(%rip),%rbx        # 52200 <current>
   41d4e:	48 8d 7b 10          	lea    0x10(%rbx),%rdi
   41d52:	b9 18 00 00 00       	mov    $0x18,%ecx
   41d57:	f3 48 a5             	rep movsq %ds:(%rsi),%es:(%rdi)
    console_show_cursor(cursorpos);
   41d5a:	8b 3d 9c 72 07 00    	mov    0x7729c(%rip),%edi        # b8ffc <cursorpos>
   41d60:	e8 cd 06 00 00       	callq  42432 <console_show_cursor(int)>
    memshow();
   41d65:	e8 2c fd ff ff       	callq  41a96 <memshow()>
    check_keyboard();
   41d6a:	e8 38 13 00 00       	callq  430a7 <check_keyboard()>
    switch (regs->reg_rax) {
   41d6f:	48 8b 73 10          	mov    0x10(%rbx),%rsi
   41d73:	48 83 fe 06          	cmp    $0x6,%rsi
   41d77:	77 64                	ja     41ddd <syscall(regstate*)+0xa6>
   41d79:	3e ff 24 f5 e8 4b 04 	notrack jmpq *0x44be8(,%rsi,8)
   41d80:	00 
        panic(nullptr); // does not return
   41d81:	bf 00 00 00 00       	mov    $0x0,%edi
   41d86:	b8 00 00 00 00       	mov    $0x0,%eax
   41d8b:	e8 39 14 00 00       	callq  431c9 <panic(char const*, ...)>
        return current->pid;
   41d90:	48 8b 05 69 04 01 00 	mov    0x10469(%rip),%rax        # 52200 <current>
   41d97:	48 63 40 08          	movslq 0x8(%rax),%rax
}
   41d9b:	48 83 c4 08          	add    $0x8,%rsp
   41d9f:	5b                   	pop    %rbx
   41da0:	5d                   	pop    %rbp
   41da1:	c3                   	retq   
        current->regs.reg_rax = 0;
   41da2:	48 8b 05 57 04 01 00 	mov    0x10457(%rip),%rax        # 52200 <current>
   41da9:	48 c7 40 10 00 00 00 	movq   $0x0,0x10(%rax)
   41db0:	00 
        schedule(); // does not return
   41db1:	e8 bd fd ff ff       	callq  41b73 <schedule()>
        return syscall_page_alloc(current->regs.reg_rdi);
   41db6:	48 8b 05 43 04 01 00 	mov    0x10443(%rip),%rax        # 52200 <current>
   41dbd:	48 8b 78 40          	mov    0x40(%rax),%rdi
   41dc1:	e8 f1 f3 ff ff       	callq  411b7 <syscall_page_alloc(unsigned long)>
   41dc6:	48 98                	cltq   
   41dc8:	eb d1                	jmp    41d9b <syscall(regstate*)+0x64>
        return syscall_fork();
   41dca:	e8 2d f6 ff ff       	callq  413fc <syscall_fork()>
   41dcf:	48 98                	cltq   
   41dd1:	eb c8                	jmp    41d9b <syscall(regstate*)+0x64>
        syscall_exit();
   41dd3:	e8 65 fa ff ff       	callq  4183d <syscall_exit()>
        schedule(); // does not return
   41dd8:	e8 96 fd ff ff       	callq  41b73 <schedule()>
        panic("Unexpected system call %ld!\n", regs->reg_rax);
   41ddd:	bf 66 4b 04 00       	mov    $0x44b66,%edi
   41de2:	b8 00 00 00 00       	mov    $0x0,%eax
   41de7:	e8 dd 13 00 00       	callq  431c9 <panic(char const*, ...)>

0000000000041dec <vmiter::down()>:
#include "k-vmiter.hh"

const x86_64_pageentry_t vmiter::zero_pe = 0;

void vmiter::down() {
   41dec:	f3 0f 1e fa          	endbr64 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41df0:	8b 47 10             	mov    0x10(%rdi),%eax
   41df3:	85 c0                	test   %eax,%eax
   41df5:	7e 4c                	jle    41e43 <vmiter::down()+0x57>
        perm_ &= *pep_;
        --level_;
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41df7:	49 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%r8
   41dfe:	ff 0f 00 
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41e01:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   41e05:	48 8b 0a             	mov    (%rdx),%rcx
   41e08:	48 89 ce             	mov    %rcx,%rsi
   41e0b:	81 e6 81 00 00 00    	and    $0x81,%esi
   41e11:	48 83 fe 01          	cmp    $0x1,%rsi
   41e15:	75 2c                	jne    41e43 <vmiter::down()+0x57>
        perm_ &= *pep_;
   41e17:	21 4f 14             	and    %ecx,0x14(%rdi)
        --level_;
   41e1a:	83 e8 01             	sub    $0x1,%eax
   41e1d:	89 47 10             	mov    %eax,0x10(%rdi)
        uintptr_t pa = *pep_ & PTE_PAMASK;
   41e20:	4c 89 c6             	mov    %r8,%rsi
   41e23:	48 23 32             	and    (%rdx),%rsi
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41e26:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41e2a:	48 8b 57 18          	mov    0x18(%rdi),%rdx
   41e2e:	48 d3 ea             	shr    %cl,%rdx
        x86_64_pagetable* pt = reinterpret_cast<x86_64_pagetable*>(pa);
        pep_ = &pt->entry[pageindex(va_, level_)];
   41e31:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
   41e37:	48 8d 14 d6          	lea    (%rsi,%rdx,8),%rdx
   41e3b:	48 89 57 08          	mov    %rdx,0x8(%rdi)
    while (level_ > 0 && (*pep_ & (PTE_P | PTE_PS)) == PTE_P) {
   41e3f:	85 c0                	test   %eax,%eax
   41e41:	75 be                	jne    41e01 <vmiter::down()+0x15>
    }
    if ((*pep_ & PTE_PAMASK) >= 0x100000000UL) {
   41e43:	48 8b 47 08          	mov    0x8(%rdi),%rax
   41e47:	48 8b 10             	mov    (%rax),%rdx
   41e4a:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41e51:	ff 0f 00 
   41e54:	48 21 d0             	and    %rdx,%rax
   41e57:	b9 ff ff ff ff       	mov    $0xffffffff,%ecx
   41e5c:	48 39 c8             	cmp    %rcx,%rax
   41e5f:	77 01                	ja     41e62 <vmiter::down()+0x76>
   41e61:	c3                   	retq   
void vmiter::down() {
   41e62:	55                   	push   %rbp
   41e63:	48 89 e5             	mov    %rsp,%rbp
        panic("Page table %p may contain uninitialized memory!\n"
   41e66:	48 8b 37             	mov    (%rdi),%rsi
   41e69:	bf 20 4c 04 00       	mov    $0x44c20,%edi
   41e6e:	b8 00 00 00 00       	mov    $0x0,%eax
   41e73:	e8 51 13 00 00       	callq  431c9 <panic(char const*, ...)>

0000000000041e78 <vmiter::real_find(unsigned long)>:
              "(Page table contents: %p)\n", pt_, *pep_);
    }
}

void vmiter::real_find(uintptr_t va) {
   41e78:	f3 0f 1e fa          	endbr64 
   41e7c:	55                   	push   %rbp
   41e7d:	48 89 e5             	mov    %rsp,%rbp
    if (level_ == 3 || ((va_ ^ va) & ~pageoffmask(level_ + 1)) != 0) {
   41e80:	8b 47 10             	mov    0x10(%rdi),%eax
   41e83:	83 f8 03             	cmp    $0x3,%eax
   41e86:	74 1d                	je     41ea5 <vmiter::real_find(unsigned long)+0x2d>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41e88:	8d 54 c0 09          	lea    0x9(%rax,%rax,8),%edx
   41e8c:	8d 4a 0c             	lea    0xc(%rdx),%ecx
   41e8f:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   41e96:	48 d3 e0             	shl    %cl,%rax
   41e99:	48 89 f1             	mov    %rsi,%rcx
   41e9c:	48 33 4f 18          	xor    0x18(%rdi),%rcx
   41ea0:	48 85 c8             	test   %rcx,%rax
   41ea3:	74 34                	je     41ed9 <vmiter::real_find(unsigned long)+0x61>
        level_ = 3;
   41ea5:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    return va <= VA_LOWMAX || va >= VA_HIGHMIN;
   41eac:	48 b8 00 00 00 00 00 	movabs $0xffff800000000000,%rax
   41eb3:	80 ff ff 
   41eb6:	48 01 f0             	add    %rsi,%rax
        if (va_is_canonical(va)) {
   41eb9:	48 ba ff ff ff ff ff 	movabs $0xfffeffffffffffff,%rdx
   41ec0:	ff fe ff 
   41ec3:	48 39 d0             	cmp    %rdx,%rax
   41ec6:	77 3e                	ja     41f06 <vmiter::real_find(unsigned long)+0x8e>
            perm_ = initial_perm;
            pep_ = &pt_->entry[pageindex(va, level_)];
        } else {
            perm_ = 0;
   41ec8:	c7 47 14 00 00 00 00 	movl   $0x0,0x14(%rdi)
            pep_ = const_cast<x86_64_pageentry_t*>(&zero_pe);
   41ecf:	48 c7 47 08 08 4d 04 	movq   $0x44d08,0x8(%rdi)
   41ed6:	00 
   41ed7:	eb 47                	jmp    41f20 <vmiter::real_find(unsigned long)+0xa8>
        }
    } else {
        int curidx = (reinterpret_cast<uintptr_t>(pep_) & PAGEOFFMASK) >> 3;
   41ed9:	4c 8b 47 08          	mov    0x8(%rdi),%r8
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   41edd:	8d 4a 03             	lea    0x3(%rdx),%ecx
   41ee0:	48 89 f0             	mov    %rsi,%rax
   41ee3:	48 d3 e8             	shr    %cl,%rax
   41ee6:	25 ff 01 00 00       	and    $0x1ff,%eax
   41eeb:	4c 89 c2             	mov    %r8,%rdx
   41eee:	48 c1 ea 03          	shr    $0x3,%rdx
   41ef2:	81 e2 ff 01 00 00    	and    $0x1ff,%edx
        pep_ += pageindex(va, level_) - curidx;
   41ef8:	29 d0                	sub    %edx,%eax
   41efa:	48 98                	cltq   
   41efc:	49 8d 04 c0          	lea    (%r8,%rax,8),%rax
   41f00:	48 89 47 08          	mov    %rax,0x8(%rdi)
   41f04:	eb 1a                	jmp    41f20 <vmiter::real_find(unsigned long)+0xa8>
            perm_ = initial_perm;
   41f06:	c7 47 14 ff 0f 00 00 	movl   $0xfff,0x14(%rdi)
            pep_ = &pt_->entry[pageindex(va, level_)];
   41f0d:	48 89 f0             	mov    %rsi,%rax
   41f10:	48 c1 e8 24          	shr    $0x24,%rax
   41f14:	25 f8 0f 00 00       	and    $0xff8,%eax
   41f19:	48 03 07             	add    (%rdi),%rax
   41f1c:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
    va_ = va;
   41f20:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down();
   41f24:	e8 c3 fe ff ff       	callq  41dec <vmiter::down()>
}
   41f29:	5d                   	pop    %rbp
   41f2a:	c3                   	retq   
   41f2b:	90                   	nop

0000000000041f2c <vmiter::next()>:

void vmiter::next() {
   41f2c:	f3 0f 1e fa          	endbr64 
   41f30:	55                   	push   %rbp
   41f31:	48 89 e5             	mov    %rsp,%rbp
    int level = 0;
    if (level_ > 0 && !perm()) {
   41f34:	8b 47 10             	mov    0x10(%rdi),%eax
   41f37:	85 c0                	test   %eax,%eax
   41f39:	7e 1d                	jle    41f58 <vmiter::next()+0x2c>
    if (*pep_ & PTE_P) {
   41f3b:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   41f3f:	48 8b 12             	mov    (%rdx),%rdx
   41f42:	f6 c2 01             	test   $0x1,%dl
   41f45:	74 16                	je     41f5d <vmiter::next()+0x31>
        return *pep_ & perm_;
   41f47:	48 63 4f 14          	movslq 0x14(%rdi),%rcx
    int level = 0;
   41f4b:	48 85 d1             	test   %rdx,%rcx
   41f4e:	ba 00 00 00 00       	mov    $0x0,%edx
   41f53:	0f 45 c2             	cmovne %edx,%eax
   41f56:	eb 05                	jmp    41f5d <vmiter::next()+0x31>
   41f58:	b8 00 00 00 00       	mov    $0x0,%eax
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   41f5d:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   41f61:	be 01 00 00 00       	mov    $0x1,%esi
   41f66:	48 d3 e6             	shl    %cl,%rsi
   41f69:	48 83 ee 01          	sub    $0x1,%rsi
        level = level_;
    }
    real_find((va_ | pageoffmask(level)) + 1);
   41f6d:	48 0b 77 18          	or     0x18(%rdi),%rsi
   41f71:	48 83 c6 01          	add    $0x1,%rsi
   41f75:	e8 fe fe ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
}
   41f7a:	5d                   	pop    %rbp
   41f7b:	c3                   	retq   

0000000000041f7c <vmiter::try_map(unsigned long, int)>:

int vmiter::try_map(uintptr_t pa, int perm) {
   41f7c:	f3 0f 1e fa          	endbr64 
   41f80:	55                   	push   %rbp
   41f81:	48 89 e5             	mov    %rsp,%rbp
   41f84:	41 57                	push   %r15
   41f86:	41 56                	push   %r14
   41f88:	41 55                	push   %r13
   41f8a:	41 54                	push   %r12
   41f8c:	53                   	push   %rbx
   41f8d:	48 83 ec 08          	sub    $0x8,%rsp
   41f91:	49 89 fc             	mov    %rdi,%r12
   41f94:	49 89 f6             	mov    %rsi,%r14
   41f97:	41 89 d7             	mov    %edx,%r15d
    if (pa == (uintptr_t) -1 && perm == 0) {
   41f9a:	85 d2                	test   %edx,%edx
   41f9c:	0f 94 c2             	sete   %dl
   41f9f:	48 83 fe ff          	cmp    $0xffffffffffffffff,%rsi
   41fa3:	75 25                	jne    41fca <vmiter::try_map(unsigned long, int)+0x4e>
   41fa5:	84 d2                	test   %dl,%dl
   41fa7:	74 21                	je     41fca <vmiter::try_map(unsigned long, int)+0x4e>
        pa = 0;
    }
    assert(!(va_ & PAGEOFFMASK));
   41fa9:	4c 8b 77 18          	mov    0x18(%rdi),%r14
   41fad:	41 81 e6 ff 0f 00 00 	and    $0xfff,%r14d
   41fb4:	74 48                	je     41ffe <vmiter::try_map(unsigned long, int)+0x82>
   41fb6:	ba 9b 4c 04 00       	mov    $0x44c9b,%edx
   41fbb:	be 31 00 00 00       	mov    $0x31,%esi
   41fc0:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   41fc5:	e8 14 08 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
   41fca:	66 41 f7 44 24 18 ff 	testw  $0xfff,0x18(%r12)
   41fd1:	0f 
   41fd2:	75 e2                	jne    41fb6 <vmiter::try_map(unsigned long, int)+0x3a>
    if (perm & PTE_P) {
   41fd4:	41 f6 c7 01          	test   $0x1,%r15b
   41fd8:	0f 84 e4 00 00 00    	je     420c2 <vmiter::try_map(unsigned long, int)+0x146>
        assert(pa != (uintptr_t) -1);
   41fde:	49 83 fe ff          	cmp    $0xffffffffffffffff,%r14
   41fe2:	0f 84 b2 00 00 00    	je     4209a <vmiter::try_map(unsigned long, int)+0x11e>
        assert((pa & PTE_PAMASK) == pa);
   41fe8:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   41fef:	ff 0f 00 
   41ff2:	4c 21 f0             	and    %r14,%rax
   41ff5:	4c 39 f0             	cmp    %r14,%rax
   41ff8:	0f 85 b0 00 00 00    	jne    420ae <vmiter::try_map(unsigned long, int)+0x132>
    } else {
        assert(!(pa & PTE_P));
    }
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   41ffe:	45 8b 6c 24 14       	mov    0x14(%r12),%r13d
   42003:	41 f7 d5             	not    %r13d
   42006:	45 21 fd             	and    %r15d,%r13d
   42009:	41 83 e5 07          	and    $0x7,%r13d
   4200d:	0f 85 cd 00 00 00    	jne    420e0 <vmiter::try_map(unsigned long, int)+0x164>

    while (level_ > 0 && perm) {
   42013:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   42018:	85 c0                	test   %eax,%eax
   4201a:	7e 57                	jle    42073 <vmiter::try_map(unsigned long, int)+0xf7>
   4201c:	84 d2                	test   %dl,%dl
   4201e:	75 53                	jne    42073 <vmiter::try_map(unsigned long, int)+0xf7>
        assert(!(*pep_ & PTE_P));
   42020:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   42025:	f6 00 01             	testb  $0x1,(%rax)
   42028:	0f 85 c6 00 00 00    	jne    420f4 <vmiter::try_map(unsigned long, int)+0x178>
        x86_64_pagetable* pt = (x86_64_pagetable*) kalloc(PAGESIZE);
   4202e:	bf 00 10 00 00       	mov    $0x1000,%edi
   42033:	e8 2c eb ff ff       	callq  40b64 <kalloc(unsigned long)>
   42038:	48 89 c3             	mov    %rax,%rbx
        if (!pt) {
   4203b:	48 85 c0             	test   %rax,%rax
   4203e:	0f 84 c4 00 00 00    	je     42108 <vmiter::try_map(unsigned long, int)+0x18c>
            return -1;
        }
        memset(pt, 0, PAGESIZE);
   42044:	ba 00 10 00 00       	mov    $0x1000,%edx
   42049:	be 00 00 00 00       	mov    $0x0,%esi
   4204e:	48 89 c7             	mov    %rax,%rdi
   42051:	e8 e9 1e 00 00       	callq  43f3f <memset>
        *pep_ = (uintptr_t) pt | PTE_P | PTE_W | PTE_U;
   42056:	49 8b 44 24 08       	mov    0x8(%r12),%rax
   4205b:	48 83 cb 07          	or     $0x7,%rbx
   4205f:	48 89 18             	mov    %rbx,(%rax)
        down();
   42062:	4c 89 e7             	mov    %r12,%rdi
   42065:	e8 82 fd ff ff       	callq  41dec <vmiter::down()>
    while (level_ > 0 && perm) {
   4206a:	41 8b 44 24 10       	mov    0x10(%r12),%eax
   4206f:	85 c0                	test   %eax,%eax
   42071:	7f ad                	jg     42020 <vmiter::try_map(unsigned long, int)+0xa4>
    }

    if (level_ == 0) {
   42073:	85 c0                	test   %eax,%eax
   42075:	75 11                	jne    42088 <vmiter::try_map(unsigned long, int)+0x10c>
        *pep_ = pa | perm;
   42077:	49 8b 54 24 08       	mov    0x8(%r12),%rdx
   4207c:	4d 63 ff             	movslq %r15d,%r15
   4207f:	4d 09 fe             	or     %r15,%r14
   42082:	4c 89 32             	mov    %r14,(%rdx)
    }
    return 0;
   42085:	41 89 c5             	mov    %eax,%r13d
}
   42088:	44 89 e8             	mov    %r13d,%eax
   4208b:	48 83 c4 08          	add    $0x8,%rsp
   4208f:	5b                   	pop    %rbx
   42090:	41 5c                	pop    %r12
   42092:	41 5d                	pop    %r13
   42094:	41 5e                	pop    %r14
   42096:	41 5f                	pop    %r15
   42098:	5d                   	pop    %rbp
   42099:	c3                   	retq   
        assert(pa != (uintptr_t) -1);
   4209a:	ba bc 4c 04 00       	mov    $0x44cbc,%edx
   4209f:	be 33 00 00 00       	mov    $0x33,%esi
   420a4:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   420a9:	e8 30 07 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
        assert((pa & PTE_PAMASK) == pa);
   420ae:	ba d1 4c 04 00       	mov    $0x44cd1,%edx
   420b3:	be 34 00 00 00       	mov    $0x34,%esi
   420b8:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   420bd:	e8 1c 07 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
        assert(!(pa & PTE_P));
   420c2:	41 f6 c6 01          	test   $0x1,%r14b
   420c6:	0f 84 32 ff ff ff    	je     41ffe <vmiter::try_map(unsigned long, int)+0x82>
   420cc:	ba e9 4c 04 00       	mov    $0x44ce9,%edx
   420d1:	be 36 00 00 00       	mov    $0x36,%esi
   420d6:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   420db:	e8 fe 06 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
    assert(!(perm & ~perm_ & (PTE_P | PTE_W | PTE_U)));
   420e0:	ba 70 4c 04 00       	mov    $0x44c70,%edx
   420e5:	be 38 00 00 00       	mov    $0x38,%esi
   420ea:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   420ef:	e8 ea 06 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
        assert(!(*pep_ & PTE_P));
   420f4:	ba f7 4c 04 00       	mov    $0x44cf7,%edx
   420f9:	be 3b 00 00 00       	mov    $0x3b,%esi
   420fe:	bf b0 4c 04 00       	mov    $0x44cb0,%edi
   42103:	e8 d6 06 00 00       	callq  427de <assert_fail(char const*, int, char const*)>
            return -1;
   42108:	41 bd ff ff ff ff    	mov    $0xffffffff,%r13d
   4210e:	e9 75 ff ff ff       	jmpq   42088 <vmiter::try_map(unsigned long, int)+0x10c>
   42113:	90                   	nop

0000000000042114 <ptiter::down(bool)>:
    pep_ = &pt_->entry[pageindex(va, level_)];
    va_ = va;
    down(false);
}

void ptiter::down(bool skip) {
   42114:	f3 0f 1e fa          	endbr64 
   42118:	55                   	push   %rbp
   42119:	48 89 e5             	mov    %rsp,%rbp
   4211c:	41 55                	push   %r13
   4211e:	41 54                	push   %r12
   42120:	53                   	push   %rbx
    int stop_level = 1;
   42121:	41 bd 01 00 00 00    	mov    $0x1,%r13d
   42127:	41 ba 01 00 00 00    	mov    $0x1,%r10d
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
            if (level_ == stop_level) {
                break;
            } else {
                --level_;
                uintptr_t pa = *pep_ & PTE_PAMASK;
   4212d:	48 bb 00 f0 ff ff ff 	movabs $0xffffffffff000,%rbx
   42134:	ff 0f 00 
                // up one level
                if (level_ == 3) {
                    va_ = VA_NONCANONMAX + 1;
                    return;
                }
                stop_level = level_ + 1;
   42137:	41 bb 00 00 00 00    	mov    $0x0,%r11d
   4213d:	eb 53                	jmp    42192 <ptiter::down(bool)+0x7e>
            if (level_ == stop_level) {
   4213f:	8b 47 10             	mov    0x10(%rdi),%eax
   42142:	44 39 e8             	cmp    %r13d,%eax
   42145:	74 35                	je     4217c <ptiter::down(bool)+0x68>
                --level_;
   42147:	83 e8 01             	sub    $0x1,%eax
   4214a:	89 47 10             	mov    %eax,0x10(%rdi)
                uintptr_t pa = *pep_ & PTE_PAMASK;
   4214d:	48 89 da             	mov    %rbx,%rdx
   42150:	49 23 14 24          	and    (%r12),%rdx
    return (int) (addr >> (PAGEOFFBITS + level * PAGEINDEXBITS)) & 0x1FF;
   42154:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   42158:	48 8b 47 18          	mov    0x18(%rdi),%rax
   4215c:	48 d3 e8             	shr    %cl,%rax
                pep_ = &pt->entry[pageindex(va_, level_)];
   4215f:	25 ff 01 00 00       	and    $0x1ff,%eax
   42164:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   42168:	48 89 47 08          	mov    %rax,0x8(%rdi)
            }
   4216c:	eb 21                	jmp    4218f <ptiter::down(bool)+0x7b>
                    va_ = VA_NONCANONMAX + 1;
   4216e:	48 b8 00 00 00 00 00 	movabs $0x1000000000000,%rax
   42175:	00 01 00 
   42178:	48 89 47 18          	mov    %rax,0x18(%rdi)
                va_ = va;
            }
            skip = false;
        }
    }
}
   4217c:	5b                   	pop    %rbx
   4217d:	41 5c                	pop    %r12
   4217f:	41 5d                	pop    %r13
   42181:	5d                   	pop    %rbp
   42182:	c3                   	retq   
                ++pep_;
   42183:	49 83 c4 08          	add    $0x8,%r12
   42187:	4c 89 67 08          	mov    %r12,0x8(%rdi)
                va_ = va;
   4218b:	48 89 47 18          	mov    %rax,0x18(%rdi)
                stop_level = level_ + 1;
   4218f:	44 89 de             	mov    %r11d,%esi
        if ((*pep_ & (PTE_P | PTE_PS)) == PTE_P && !skip) {
   42192:	4c 8b 67 08          	mov    0x8(%rdi),%r12
   42196:	49 8b 04 24          	mov    (%r12),%rax
   4219a:	25 81 00 00 00       	and    $0x81,%eax
   4219f:	48 83 f8 01          	cmp    $0x1,%rax
   421a3:	75 05                	jne    421aa <ptiter::down(bool)+0x96>
   421a5:	40 84 f6             	test   %sil,%sil
   421a8:	74 95                	je     4213f <ptiter::down(bool)+0x2b>
            uintptr_t va = (va_ | pageoffmask(level_)) + 1;
   421aa:	48 8b 77 18          	mov    0x18(%rdi),%rsi
   421ae:	44 8b 4f 10          	mov    0x10(%rdi),%r9d
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   421b2:	47 8d 04 c9          	lea    (%r9,%r9,8),%r8d
   421b6:	41 8d 48 0c          	lea    0xc(%r8),%ecx
   421ba:	4c 89 d2             	mov    %r10,%rdx
   421bd:	48 d3 e2             	shl    %cl,%rdx
   421c0:	48 83 ea 01          	sub    $0x1,%rdx
   421c4:	48 09 f2             	or     %rsi,%rdx
   421c7:	48 8d 42 01          	lea    0x1(%rdx),%rax
            if ((va ^ va_) & ~pageoffmask(level_ + 1)) {
   421cb:	41 8d 51 01          	lea    0x1(%r9),%edx
   421cf:	41 8d 48 15          	lea    0x15(%r8),%ecx
   421d3:	4d 89 d0             	mov    %r10,%r8
   421d6:	49 d3 e0             	shl    %cl,%r8
   421d9:	4c 89 c1             	mov    %r8,%rcx
   421dc:	48 f7 d9             	neg    %rcx
   421df:	49 89 f0             	mov    %rsi,%r8
   421e2:	49 31 c0             	xor    %rax,%r8
   421e5:	4c 85 c1             	test   %r8,%rcx
   421e8:	74 99                	je     42183 <ptiter::down(bool)+0x6f>
                if (level_ == 3) {
   421ea:	41 83 f9 03          	cmp    $0x3,%r9d
   421ee:	0f 84 7a ff ff ff    	je     4216e <ptiter::down(bool)+0x5a>
                level_ = 3;
   421f4:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
                pep_ = &pt_->entry[pageindex(va_, level_)];
   421fb:	48 89 f0             	mov    %rsi,%rax
   421fe:	48 c1 e8 24          	shr    $0x24,%rax
   42202:	25 f8 0f 00 00       	and    $0xff8,%eax
   42207:	48 03 07             	add    (%rdi),%rax
   4220a:	48 89 47 08          	mov    %rax,0x8(%rdi)
                stop_level = level_ + 1;
   4220e:	41 89 d5             	mov    %edx,%r13d
   42211:	e9 79 ff ff ff       	jmpq   4218f <ptiter::down(bool)+0x7b>

0000000000042216 <ptiter::go(unsigned long)>:
void ptiter::go(uintptr_t va) {
   42216:	f3 0f 1e fa          	endbr64 
   4221a:	55                   	push   %rbp
   4221b:	48 89 e5             	mov    %rsp,%rbp
    level_ = 3;
   4221e:	c7 47 10 03 00 00 00 	movl   $0x3,0x10(%rdi)
    pep_ = &pt_->entry[pageindex(va, level_)];
   42225:	48 89 f0             	mov    %rsi,%rax
   42228:	48 c1 e8 24          	shr    $0x24,%rax
   4222c:	25 f8 0f 00 00       	and    $0xff8,%eax
   42231:	48 03 07             	add    (%rdi),%rax
   42234:	48 89 47 08          	mov    %rax,0x8(%rdi)
    va_ = va;
   42238:	48 89 77 18          	mov    %rsi,0x18(%rdi)
    down(false);
   4223c:	be 00 00 00 00       	mov    $0x0,%esi
   42241:	e8 ce fe ff ff       	callq  42114 <ptiter::down(bool)>
}
   42246:	5d                   	pop    %rbp
   42247:	c3                   	retq   

0000000000042248 <(anonymous namespace)::log_printer::putc(unsigned char, int)>:
         | IO_PARALLEL_CONTROL_INIT);
}

namespace {
struct log_printer : public printer {
    void putc(unsigned char c, int) override {
   42248:	f3 0f 1e fa          	endbr64 
    if (!initialized) {
   4224c:	83 3d b1 6d 01 00 00 	cmpl   $0x0,0x16db1(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   42253:	75 15                	jne    4226a <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x22>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42255:	b8 00 00 00 00       	mov    $0x0,%eax
   4225a:	ba 7a 03 00 00       	mov    $0x37a,%edx
   4225f:	ee                   	out    %al,(%dx)
        initialized = 1;
   42260:	c7 05 9a 6d 01 00 01 	movl   $0x1,0x16d9a(%rip)        # 59004 <parallel_port_putc(unsigned char)::initialized>
   42267:	00 00 00 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   4226a:	ba 79 03 00 00       	mov    $0x379,%edx
   4226f:	ec                   	in     (%dx),%al
         i < 12800 && (inb(IO_PARALLEL1_STATUS) & IO_PARALLEL_STATUS_BUSY) == 0;
   42270:	bf 00 32 00 00       	mov    $0x3200,%edi
   42275:	b9 84 00 00 00       	mov    $0x84,%ecx
   4227a:	41 b8 79 03 00 00    	mov    $0x379,%r8d
   42280:	84 c0                	test   %al,%al
   42282:	78 13                	js     42297 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   42284:	89 ca                	mov    %ecx,%edx
   42286:	ec                   	in     (%dx),%al
   42287:	ec                   	in     (%dx),%al
   42288:	ec                   	in     (%dx),%al
   42289:	ec                   	in     (%dx),%al
   4228a:	83 ef 01             	sub    $0x1,%edi
   4228d:	74 08                	je     42297 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x4f>
   4228f:	44 89 c2             	mov    %r8d,%edx
   42292:	ec                   	in     (%dx),%al
   42293:	84 c0                	test   %al,%al
   42295:	79 ed                	jns    42284 <(anonymous namespace)::log_printer::putc(unsigned char, int)+0x3c>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42297:	ba 78 03 00 00       	mov    $0x378,%edx
   4229c:	89 f0                	mov    %esi,%eax
   4229e:	ee                   	out    %al,(%dx)
   4229f:	ba 7a 03 00 00       	mov    $0x37a,%edx
   422a4:	b8 0d 00 00 00       	mov    $0xd,%eax
   422a9:	ee                   	out    %al,(%dx)
   422aa:	b8 0c 00 00 00       	mov    $0xc,%eax
   422af:	ee                   	out    %al,(%dx)
        parallel_port_putc(c);
    }
   422b0:	c3                   	retq   

00000000000422b1 <stash_kernel_data(bool)>:

// stash_kernel_data
//    Soft reboot requires that we restore kernel data memory to
//    its initial state, so we store its initial state in unused
//    physical memory.
static void stash_kernel_data(bool reboot) {
   422b1:	55                   	push   %rbp
   422b2:	48 89 e5             	mov    %rsp,%rbp
   422b5:	89 f8                	mov    %edi,%eax
    // stash initial value of data segment for soft-reboot support
    extern uint8_t _data_start, _edata, _kernel_end;
    uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   422b7:	ba 70 1b 05 00       	mov    $0x51b70,%edx
   422bc:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
    uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   422c3:	bf 00 60 04 01       	mov    $0x1046000,%edi
   422c8:	48 81 ef 70 1b 05 00 	sub    $0x51b70,%rdi
    if (reboot) {
   422cf:	84 c0                	test   %al,%al
   422d1:	74 2a                	je     422fd <stash_kernel_data(bool)+0x4c>
        memcpy(&_data_start, data_stash, data_size);
   422d3:	48 89 fe             	mov    %rdi,%rsi
   422d6:	bf 00 60 04 00       	mov    $0x46000,%edi
   422db:	e8 ee 1b 00 00       	callq  43ece <memcpy>
        memset(&_edata, 0, &_kernel_end - &_edata);
   422e0:	ba 98 90 05 00       	mov    $0x59098,%edx
   422e5:	48 81 ea 70 1b 05 00 	sub    $0x51b70,%rdx
   422ec:	be 00 00 00 00       	mov    $0x0,%esi
   422f1:	bf 70 1b 05 00       	mov    $0x51b70,%edi
   422f6:	e8 44 1c 00 00       	callq  43f3f <memset>
    } else {
        memcpy(data_stash, &_data_start, data_size);
    }
}
   422fb:	5d                   	pop    %rbp
   422fc:	c3                   	retq   
        memcpy(data_stash, &_data_start, data_size);
   422fd:	be 00 60 04 00       	mov    $0x46000,%esi
   42302:	e8 c7 1b 00 00       	callq  43ece <memcpy>
}
   42307:	eb f2                	jmp    422fb <stash_kernel_data(bool)+0x4a>

0000000000042309 <init_timer(int)>:
void init_timer(int rate) {
   42309:	f3 0f 1e fa          	endbr64 
    if (rate > 0) {
   4230d:	85 ff                	test   %edi,%edi
   4230f:	7e 12                	jle    42323 <init_timer(int)+0x1a>
        lapic.write(lapic.reg_timer_initial_count, 1000000000 / rate);
   42311:	b8 00 ca 9a 3b       	mov    $0x3b9aca00,%eax
   42316:	99                   	cltd   
   42317:	f7 ff                	idiv   %edi
   42319:	a3 80 03 e0 fe 00 00 	movabs %eax,0xfee00380
   42320:	00 00 
}
   42322:	c3                   	retq   
    reg_[reg].v = v;
   42323:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   42328:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
}
   4232e:	c3                   	retq   

000000000004232f <reserved_physical_address(unsigned long)>:
bool reserved_physical_address(uintptr_t pa) {
   4232f:	f3 0f 1e fa          	endbr64 
    return pa < PAGESIZE || (pa >= IOPHYSMEM && pa < EXTPHYSMEM);
   42333:	48 8d 87 00 00 f6 ff 	lea    -0xa0000(%rdi),%rax
   4233a:	48 3d ff ff 05 00    	cmp    $0x5ffff,%rax
   42340:	0f 96 c0             	setbe  %al
   42343:	48 81 ff ff 0f 00 00 	cmp    $0xfff,%rdi
   4234a:	0f 96 c2             	setbe  %dl
   4234d:	09 d0                	or     %edx,%eax
}
   4234f:	c3                   	retq   

0000000000042350 <allocatable_physical_address(unsigned long)>:
bool allocatable_physical_address(uintptr_t pa) {
   42350:	f3 0f 1e fa          	endbr64 
   42354:	55                   	push   %rbp
   42355:	48 89 e5             	mov    %rsp,%rbp
   42358:	53                   	push   %rbx
   42359:	48 83 ec 08          	sub    $0x8,%rsp
   4235d:	48 89 fb             	mov    %rdi,%rbx
    return !reserved_physical_address(pa)
   42360:	e8 ca ff ff ff       	callq  4232f <reserved_physical_address(unsigned long)>
        && pa < MEMSIZE_PHYSICAL;
   42365:	84 c0                	test   %al,%al
   42367:	75 38                	jne    423a1 <allocatable_physical_address(unsigned long)+0x51>
        && (pa < KERNEL_START_ADDR
   42369:	48 81 fb ff ff 03 00 	cmp    $0x3ffff,%rbx
   42370:	76 11                	jbe    42383 <allocatable_physical_address(unsigned long)+0x33>
    return x - (x % multiple);
}
template <typename T>
inline constexpr T round_up(T x, unsigned multiple) {
    static_assert(std::is_unsigned<T>::value, "T must be unsigned");
    return round_down(x + multiple - 1, multiple);
   42372:	ba 97 a0 05 00       	mov    $0x5a097,%edx
            || pa >= round_up((uintptr_t) _kernel_end, PAGESIZE))
   42377:	48 81 e2 00 f0 ff ff 	and    $0xfffffffffffff000,%rdx
   4237e:	48 39 d3             	cmp    %rdx,%rbx
   42381:	72 23                	jb     423a6 <allocatable_physical_address(unsigned long)+0x56>
            || pa >= KERNEL_STACK_TOP)
   42383:	48 8d 83 00 10 f8 ff 	lea    -0x7f000(%rbx),%rax
        && (pa < KERNEL_STACK_TOP - PAGESIZE
   4238a:	48 3d ff 0f 00 00    	cmp    $0xfff,%rax
   42390:	0f 97 c0             	seta   %al
        && pa < MEMSIZE_PHYSICAL;
   42393:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   4239a:	0f 96 c2             	setbe  %dl
   4239d:	21 d0                	and    %edx,%eax
   4239f:	eb 05                	jmp    423a6 <allocatable_physical_address(unsigned long)+0x56>
   423a1:	b8 00 00 00 00       	mov    $0x0,%eax
}
   423a6:	48 83 c4 08          	add    $0x8,%rsp
   423aa:	5b                   	pop    %rbx
   423ab:	5d                   	pop    %rbp
   423ac:	c3                   	retq   

00000000000423ad <init_process(proc*, int)>:
void init_process(proc* p, int flags) {
   423ad:	f3 0f 1e fa          	endbr64 
   423b1:	55                   	push   %rbp
   423b2:	48 89 e5             	mov    %rsp,%rbp
   423b5:	41 54                	push   %r12
   423b7:	53                   	push   %rbx
   423b8:	48 89 fb             	mov    %rdi,%rbx
   423bb:	41 89 f4             	mov    %esi,%r12d
    memset(&p->regs, 0, sizeof(p->regs));
   423be:	48 8d 7f 10          	lea    0x10(%rdi),%rdi
   423c2:	ba c0 00 00 00       	mov    $0xc0,%edx
   423c7:	be 00 00 00 00       	mov    $0x0,%esi
   423cc:	e8 6e 1b 00 00       	callq  43f3f <memset>
    p->regs.reg_cs = SEGSEL_APP_CODE | 3;
   423d1:	48 c7 83 b0 00 00 00 	movq   $0x1b,0xb0(%rbx)
   423d8:	1b 00 00 00 
    p->regs.reg_fs = SEGSEL_APP_DATA | 3;
   423dc:	48 c7 83 88 00 00 00 	movq   $0x23,0x88(%rbx)
   423e3:	23 00 00 00 
    p->regs.reg_gs = SEGSEL_APP_DATA | 3;
   423e7:	48 c7 83 90 00 00 00 	movq   $0x23,0x90(%rbx)
   423ee:	23 00 00 00 
    p->regs.reg_ss = SEGSEL_APP_DATA | 3;
   423f2:	48 c7 83 c8 00 00 00 	movq   $0x23,0xc8(%rbx)
   423f9:	23 00 00 00 
    if (flags & PROCINIT_ALLOW_PROGRAMMED_IO) {
   423fd:	44 89 e0             	mov    %r12d,%eax
   42400:	83 e0 01             	and    $0x1,%eax
    p->regs.reg_rflags = EFLAGS_IF;
   42403:	83 f8 01             	cmp    $0x1,%eax
   42406:	48 19 c0             	sbb    %rax,%rax
   42409:	48 25 00 d0 ff ff    	and    $0xffffffffffffd000,%rax
   4240f:	48 05 00 32 00 00    	add    $0x3200,%rax
   42415:	48 89 83 b8 00 00 00 	mov    %rax,0xb8(%rbx)
    if (flags & PROCINIT_DISABLE_INTERRUPTS) {
   4241c:	41 f6 c4 02          	test   $0x2,%r12b
   42420:	74 0b                	je     4242d <init_process(proc*, int)+0x80>
        p->regs.reg_rflags &= ~EFLAGS_IF;
   42422:	48 81 a3 b8 00 00 00 	andq   $0xfffffffffffffdff,0xb8(%rbx)
   42429:	ff fd ff ff 
}
   4242d:	5b                   	pop    %rbx
   4242e:	41 5c                	pop    %r12
   42430:	5d                   	pop    %rbp
   42431:	c3                   	retq   

0000000000042432 <console_show_cursor(int)>:
void console_show_cursor(int cpos) {
   42432:	f3 0f 1e fa          	endbr64 
        cpos = 0;
   42436:	81 ff d1 07 00 00    	cmp    $0x7d1,%edi
   4243c:	b8 00 00 00 00       	mov    $0x0,%eax
   42441:	0f 43 f8             	cmovae %eax,%edi
   42444:	be d4 03 00 00       	mov    $0x3d4,%esi
   42449:	b8 0e 00 00 00       	mov    $0xe,%eax
   4244e:	89 f2                	mov    %esi,%edx
   42450:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos / 256);
   42451:	8d 87 ff 00 00 00    	lea    0xff(%rdi),%eax
   42457:	85 ff                	test   %edi,%edi
   42459:	0f 49 c7             	cmovns %edi,%eax
   4245c:	c1 f8 08             	sar    $0x8,%eax
   4245f:	b9 d5 03 00 00       	mov    $0x3d5,%ecx
   42464:	89 ca                	mov    %ecx,%edx
   42466:	ee                   	out    %al,(%dx)
   42467:	b8 0f 00 00 00       	mov    $0xf,%eax
   4246c:	89 f2                	mov    %esi,%edx
   4246e:	ee                   	out    %al,(%dx)
    outb(0x3D5, cpos % 256);
   4246f:	89 fa                	mov    %edi,%edx
   42471:	c1 fa 1f             	sar    $0x1f,%edx
   42474:	c1 ea 18             	shr    $0x18,%edx
   42477:	8d 04 17             	lea    (%rdi,%rdx,1),%eax
   4247a:	0f b6 c0             	movzbl %al,%eax
   4247d:	29 d0                	sub    %edx,%eax
   4247f:	89 ca                	mov    %ecx,%edx
   42481:	ee                   	out    %al,(%dx)
}
   42482:	c3                   	retq   

0000000000042483 <keyboard_readc()>:
int keyboard_readc() {
   42483:	f3 0f 1e fa          	endbr64 
    asm volatile("inb %w1, %0" : "=a" (data) : "d" (port));
   42487:	ba 64 00 00 00       	mov    $0x64,%edx
   4248c:	ec                   	in     (%dx),%al
    if ((inb(KEYBOARD_STATUSREG) & KEYBOARD_STATUS_READY) == 0) {
   4248d:	a8 01                	test   $0x1,%al
   4248f:	0f 84 1d 01 00 00    	je     425b2 <keyboard_readc()+0x12f>
   42495:	ba 60 00 00 00       	mov    $0x60,%edx
   4249a:	ec                   	in     (%dx),%al
    uint8_t escape = last_escape;
   4249b:	0f b6 15 66 6b 01 00 	movzbl 0x16b66(%rip),%edx        # 59008 <keyboard_readc()::last_escape>
    last_escape = 0;
   424a2:	c6 05 5f 6b 01 00 00 	movb   $0x0,0x16b5f(%rip)        # 59008 <keyboard_readc()::last_escape>
    if (data == 0xE0) {         // mode shift
   424a9:	3c e0                	cmp    $0xe0,%al
   424ab:	74 2a                	je     424d7 <keyboard_readc()+0x54>
    } else if (data & 0x80) {   // key release: matters only for modifier keys
   424ad:	84 c0                	test   %al,%al
   424af:	78 33                	js     424e4 <keyboard_readc()+0x61>
    int ch = (unsigned char) keymap[data | escape];
   424b1:	09 d0                	or     %edx,%eax
   424b3:	0f b6 c0             	movzbl %al,%eax
   424b6:	0f b6 80 c0 50 04 00 	movzbl 0x450c0(%rax),%eax
    if (ch >= 'a' && ch <= 'z') {
   424bd:	89 c1                	mov    %eax,%ecx
   424bf:	8d 50 9f             	lea    -0x61(%rax),%edx
   424c2:	83 fa 19             	cmp    $0x19,%edx
   424c5:	77 73                	ja     4253a <keyboard_readc()+0xb7>
        if (modifiers & MOD_CONTROL) {
   424c7:	0f b6 15 3b 6b 01 00 	movzbl 0x16b3b(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   424ce:	f6 c2 02             	test   $0x2,%dl
   424d1:	74 4d                	je     42520 <keyboard_readc()+0x9d>
            ch -= 0x60;
   424d3:	83 e8 60             	sub    $0x60,%eax
   424d6:	c3                   	retq   
        last_escape = 0x80;
   424d7:	c6 05 2a 6b 01 00 80 	movb   $0x80,0x16b2a(%rip)        # 59008 <keyboard_readc()::last_escape>
        return 0;
   424de:	b8 00 00 00 00       	mov    $0x0,%eax
   424e3:	c3                   	retq   
        int ch = keymap[(data & 0x7F) | escape];
   424e4:	83 e0 7f             	and    $0x7f,%eax
   424e7:	09 d0                	or     %edx,%eax
   424e9:	0f b6 c0             	movzbl %al,%eax
   424ec:	0f b6 88 c0 50 04 00 	movzbl 0x450c0(%rax),%ecx
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   424f3:	0f b6 d1             	movzbl %cl,%edx
   424f6:	81 ea fa 00 00 00    	sub    $0xfa,%edx
        return 0;
   424fc:	b8 00 00 00 00       	mov    $0x0,%eax
        if (ch >= KEY_SHIFT && ch < KEY_CAPSLOCK) {
   42501:	83 fa 02             	cmp    $0x2,%edx
   42504:	0f 87 ad 00 00 00    	ja     425b7 <keyboard_readc()+0x134>
            modifiers &= ~(1 << (ch - KEY_SHIFT));
   4250a:	83 c1 06             	add    $0x6,%ecx
   4250d:	b8 fe ff ff ff       	mov    $0xfffffffe,%eax
   42512:	d3 c0                	rol    %cl,%eax
   42514:	20 05 ef 6a 01 00    	and    %al,0x16aef(%rip)        # 59009 <keyboard_readc()::modifiers>
        return 0;
   4251a:	b8 00 00 00 00       	mov    $0x0,%eax
   4251f:	c3                   	retq   
        } else if (!(modifiers & MOD_SHIFT) != !(modifiers & MOD_CAPSLOCK)) {
   42520:	89 d1                	mov    %edx,%ecx
   42522:	83 f1 01             	xor    $0x1,%ecx
   42525:	83 e1 01             	and    $0x1,%ecx
   42528:	c0 ea 03             	shr    $0x3,%dl
   4252b:	83 f2 01             	xor    $0x1,%edx
   4252e:	83 e2 01             	and    $0x1,%edx
            ch -= 0x20;
   42531:	8d 70 e0             	lea    -0x20(%rax),%esi
   42534:	38 d1                	cmp    %dl,%cl
   42536:	0f 45 c6             	cmovne %esi,%eax
   42539:	c3                   	retq   
    } else if (ch >= KEY_CAPSLOCK) {
   4253a:	3d fc 00 00 00       	cmp    $0xfc,%eax
   4253f:	7e 19                	jle    4255a <keyboard_readc()+0xd7>
        modifiers ^= 1 << (ch - KEY_SHIFT);
   42541:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   42547:	ba 01 00 00 00       	mov    $0x1,%edx
   4254c:	d3 e2                	shl    %cl,%edx
   4254e:	30 15 b5 6a 01 00    	xor    %dl,0x16ab5(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   42554:	b8 00 00 00 00       	mov    $0x0,%eax
   42559:	c3                   	retq   
    } else if (ch >= KEY_SHIFT) {
   4255a:	3d f9 00 00 00       	cmp    $0xf9,%eax
   4255f:	7e 19                	jle    4257a <keyboard_readc()+0xf7>
        modifiers |= 1 << (ch - KEY_SHIFT);
   42561:	8d 88 06 ff ff ff    	lea    -0xfa(%rax),%ecx
   42567:	ba 01 00 00 00       	mov    $0x1,%edx
   4256c:	d3 e2                	shl    %cl,%edx
   4256e:	08 15 95 6a 01 00    	or     %dl,0x16a95(%rip)        # 59009 <keyboard_readc()::modifiers>
        ch = 0;
   42574:	b8 00 00 00 00       	mov    $0x0,%eax
   42579:	c3                   	retq   
    } else if (ch >= CKEY(0) && ch <= CKEY(21)) {
   4257a:	83 c1 80             	add    $0xffffff80,%ecx
   4257d:	83 f9 15             	cmp    $0x15,%ecx
   42580:	77 18                	ja     4259a <keyboard_readc()+0x117>
        ch = complex_keymap[ch - CKEY(0)].map[modifiers & 3];
   42582:	0f b6 15 80 6a 01 00 	movzbl 0x16a80(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   42589:	83 e2 03             	and    $0x3,%edx
   4258c:	83 c0 80             	add    $0xffffff80,%eax
   4258f:	48 98                	cltq   
   42591:	0f b6 84 82 60 50 04 	movzbl 0x45060(%rdx,%rax,4),%eax
   42598:	00 
   42599:	c3                   	retq   
    } else if (ch < 0x80 && (modifiers & MOD_CONTROL)) {
   4259a:	83 f8 7f             	cmp    $0x7f,%eax
   4259d:	7f 18                	jg     425b7 <keyboard_readc()+0x134>
   4259f:	0f b6 15 63 6a 01 00 	movzbl 0x16a63(%rip),%edx        # 59009 <keyboard_readc()::modifiers>
   425a6:	83 e2 02             	and    $0x2,%edx
        ch = 0;
   425a9:	ba 00 00 00 00       	mov    $0x0,%edx
   425ae:	0f 45 c2             	cmovne %edx,%eax
   425b1:	c3                   	retq   
        return -1;
   425b2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   425b7:	c3                   	retq   

00000000000425b8 <lookup_symbol(unsigned long, char const**, unsigned long*)>:
bool lookup_symbol(uintptr_t addr, const char** name, uintptr_t* start) {
   425b8:	f3 0f 1e fa          	endbr64 
   425bc:	55                   	push   %rbp
   425bd:	48 89 e5             	mov    %rsp,%rbp
   425c0:	41 55                	push   %r13
   425c2:	41 54                	push   %r12
   425c4:	53                   	push   %rbx
   425c5:	48 89 d3             	mov    %rdx,%rbx
    if (!kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000]) {
   425c8:	48 83 3d 70 3a 01 00 	cmpq   $0x0,0x13a70(%rip)        # 56040 <kernel_pagetable+0x2040>
   425cf:	00 
   425d0:	75 0b                	jne    425dd <lookup_symbol(unsigned long, char const**, unsigned long*)+0x25>
        kernel_pagetable[2].entry[SYMTAB_ADDR / 0x200000] =
   425d2:	48 c7 05 63 3a 01 00 	movq   $0x1000083,0x13a63(%rip)        # 56040 <kernel_pagetable+0x2040>
   425d9:	83 00 00 01 
    size_t r = symtab.nsym;
   425dd:	48 8b 15 c4 3a 00 00 	mov    0x3ac4(%rip),%rdx        # 460a8 <symtab+0x8>
        auto& sym = symtab.sym[m];
   425e4:	4c 8b 1d b5 3a 00 00 	mov    0x3ab5(%rip),%r11        # 460a0 <symtab>
    size_t r = symtab.nsym;
   425eb:	49 89 d2             	mov    %rdx,%r10
    size_t l = 0;
   425ee:	41 b9 00 00 00 00    	mov    $0x0,%r9d
   425f4:	eb 17                	jmp    4260d <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   425f6:	4c 8d 60 01          	lea    0x1(%rax),%r12
                ? addr < sym.st_value + sym.st_size
   425fa:	49 39 d4             	cmp    %rdx,%r12
   425fd:	74 47                	je     42646 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
                : m + 1 == symtab.nsym || addr < (&sym)[1].st_value)) {
   425ff:	48 39 79 20          	cmp    %rdi,0x20(%rcx)
   42603:	77 41                	ja     42646 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x8e>
        } else if (symtab.sym[m].st_value < addr) {
   42605:	49 39 f8             	cmp    %rdi,%r8
   42608:	72 6d                	jb     42677 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xbf>
        size_t m = l + ((r - l) >> 1);
   4260a:	49 89 c2             	mov    %rax,%r10
    while (l < r) {
   4260d:	4d 39 d1             	cmp    %r10,%r9
   42610:	73 6b                	jae    4267d <lookup_symbol(unsigned long, char const**, unsigned long*)+0xc5>
        size_t m = l + ((r - l) >> 1);
   42612:	4c 89 d0             	mov    %r10,%rax
   42615:	4c 29 c8             	sub    %r9,%rax
   42618:	48 d1 e8             	shr    %rax
   4261b:	4c 01 c8             	add    %r9,%rax
        auto& sym = symtab.sym[m];
   4261e:	48 8d 0c 40          	lea    (%rax,%rax,2),%rcx
   42622:	48 c1 e1 03          	shl    $0x3,%rcx
   42626:	49 89 cd             	mov    %rcx,%r13
   42629:	4c 01 d9             	add    %r11,%rcx
        if (sym.st_value <= addr
   4262c:	4c 8b 41 08          	mov    0x8(%rcx),%r8
   42630:	49 39 f8             	cmp    %rdi,%r8
   42633:	77 d0                	ja     42605 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            && (sym.st_size != 0
   42635:	4c 8b 61 10          	mov    0x10(%rcx),%r12
        if (sym.st_value <= addr
   42639:	4d 85 e4             	test   %r12,%r12
   4263c:	74 b8                	je     425f6 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x3e>
                ? addr < sym.st_value + sym.st_size
   4263e:	4d 01 c4             	add    %r8,%r12
            && (sym.st_size != 0
   42641:	49 39 fc             	cmp    %rdi,%r12
   42644:	76 bf                	jbe    42605 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x4d>
            if (name) {
   42646:	48 85 f6             	test   %rsi,%rsi
   42649:	74 0c                	je     42657 <lookup_symbol(unsigned long, char const**, unsigned long*)+0x9f>
                *name = symtab.strtab + symtab.sym[m].st_name;
   4264b:	8b 01                	mov    (%rcx),%eax
   4264d:	48 03 05 5c 3a 00 00 	add    0x3a5c(%rip),%rax        # 460b0 <symtab+0x10>
   42654:	48 89 06             	mov    %rax,(%rsi)
            return true;
   42657:	b8 01 00 00 00       	mov    $0x1,%eax
            if (start) {
   4265c:	48 85 db             	test   %rbx,%rbx
   4265f:	74 21                	je     42682 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
                *start = symtab.sym[m].st_value;
   42661:	48 8b 05 38 3a 00 00 	mov    0x3a38(%rip),%rax        # 460a0 <symtab>
   42668:	4a 8b 44 28 08       	mov    0x8(%rax,%r13,1),%rax
   4266d:	48 89 03             	mov    %rax,(%rbx)
            return true;
   42670:	b8 01 00 00 00       	mov    $0x1,%eax
   42675:	eb 0b                	jmp    42682 <lookup_symbol(unsigned long, char const**, unsigned long*)+0xca>
            l = m + 1;
   42677:	4c 8d 48 01          	lea    0x1(%rax),%r9
   4267b:	eb 90                	jmp    4260d <lookup_symbol(unsigned long, char const**, unsigned long*)+0x55>
    return false;
   4267d:	b8 00 00 00 00       	mov    $0x0,%eax
}
   42682:	5b                   	pop    %rbx
   42683:	41 5c                	pop    %r12
   42685:	41 5d                	pop    %r13
   42687:	5d                   	pop    %rbp
   42688:	c3                   	retq   

0000000000042689 <log_vprintf(char const*, __va_list_tag*)>:
void log_vprintf(const char* format, va_list val) {
   42689:	f3 0f 1e fa          	endbr64 
   4268d:	55                   	push   %rbp
   4268e:	48 89 e5             	mov    %rsp,%rbp
   42691:	48 83 ec 10          	sub    $0x10,%rsp
   42695:	48 89 fa             	mov    %rdi,%rdx
   42698:	48 89 f1             	mov    %rsi,%rcx
    log_printer p;
   4269b:	48 c7 45 f8 50 50 04 	movq   $0x45050,-0x8(%rbp)
   426a2:	00 
    p.vprintf(0, format, val);
   426a3:	be 00 00 00 00       	mov    $0x0,%esi
   426a8:	48 8d 7d f8          	lea    -0x8(%rbp),%rdi
   426ac:	e8 6b 19 00 00       	callq  4401c <printer::vprintf(int, char const*, __va_list_tag*)>
}
   426b1:	c9                   	leaveq 
   426b2:	c3                   	retq   

00000000000426b3 <log_printf(char const*, ...)>:
void log_printf(const char* format, ...) {
   426b3:	f3 0f 1e fa          	endbr64 
   426b7:	55                   	push   %rbp
   426b8:	48 89 e5             	mov    %rsp,%rbp
   426bb:	48 83 ec 50          	sub    $0x50,%rsp
   426bf:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   426c3:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   426c7:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   426cb:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   426cf:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   426d3:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   426da:	48 8d 45 10          	lea    0x10(%rbp),%rax
   426de:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   426e2:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   426e6:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    log_vprintf(format, val);
   426ea:	48 8d 75 b8          	lea    -0x48(%rbp),%rsi
   426ee:	e8 96 ff ff ff       	callq  42689 <log_vprintf(char const*, __va_list_tag*)>
}
   426f3:	c9                   	leaveq 
   426f4:	c3                   	retq   

00000000000426f5 <error_vprintf(int, int, char const*, __va_list_tag*)>:
int error_vprintf(int cpos, int color, const char* format, va_list val) {
   426f5:	f3 0f 1e fa          	endbr64 
   426f9:	55                   	push   %rbp
   426fa:	48 89 e5             	mov    %rsp,%rbp
   426fd:	41 56                	push   %r14
   426ff:	41 55                	push   %r13
   42701:	41 54                	push   %r12
   42703:	53                   	push   %rbx
   42704:	48 83 ec 20          	sub    $0x20,%rsp
   42708:	41 89 fd             	mov    %edi,%r13d
   4270b:	41 89 f6             	mov    %esi,%r14d
   4270e:	49 89 d4             	mov    %rdx,%r12
   42711:	48 89 cb             	mov    %rcx,%rbx
    __builtin_va_copy(val2, val);
   42714:	48 8b 01             	mov    (%rcx),%rax
   42717:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
   4271b:	48 8b 41 08          	mov    0x8(%rcx),%rax
   4271f:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
   42723:	48 8b 41 10          	mov    0x10(%rcx),%rax
   42727:	48 89 45 d8          	mov    %rax,-0x28(%rbp)
    log_vprintf(format, val2);
   4272b:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   4272f:	48 89 d7             	mov    %rdx,%rdi
   42732:	e8 52 ff ff ff       	callq  42689 <log_vprintf(char const*, __va_list_tag*)>
    return console_vprintf(cpos, color, format, val);
   42737:	48 89 d9             	mov    %rbx,%rcx
   4273a:	4c 89 e2             	mov    %r12,%rdx
   4273d:	44 89 f6             	mov    %r14d,%esi
   42740:	44 89 ef             	mov    %r13d,%edi
   42743:	e8 92 22 00 00       	callq  449da <console_vprintf(int, int, char const*, __va_list_tag*)>
}
   42748:	48 83 c4 20          	add    $0x20,%rsp
   4274c:	5b                   	pop    %rbx
   4274d:	41 5c                	pop    %r12
   4274f:	41 5d                	pop    %r13
   42751:	41 5e                	pop    %r14
   42753:	5d                   	pop    %rbp
   42754:	c3                   	retq   

0000000000042755 <error_printf(int, int, char const*, ...)>:
int error_printf(int cpos, int color, const char* format, ...) {
   42755:	f3 0f 1e fa          	endbr64 
   42759:	55                   	push   %rbp
   4275a:	48 89 e5             	mov    %rsp,%rbp
   4275d:	48 83 ec 50          	sub    $0x50,%rsp
   42761:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   42765:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   42769:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   4276d:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   42774:	48 8d 45 10          	lea    0x10(%rbp),%rax
   42778:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   4277c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   42780:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = error_vprintf(cpos, color, format, val);
   42784:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   42788:	e8 68 ff ff ff       	callq  426f5 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   4278d:	c9                   	leaveq 
   4278e:	c3                   	retq   

000000000004278f <error_printf(char const*, ...)>:
void error_printf(const char* format, ...) {
   4278f:	f3 0f 1e fa          	endbr64 
   42793:	55                   	push   %rbp
   42794:	48 89 e5             	mov    %rsp,%rbp
   42797:	48 83 ec 50          	sub    $0x50,%rsp
   4279b:	48 89 75 d8          	mov    %rsi,-0x28(%rbp)
   4279f:	48 89 55 e0          	mov    %rdx,-0x20(%rbp)
   427a3:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   427a7:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   427ab:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_start(val, format);
   427af:	c7 45 b8 08 00 00 00 	movl   $0x8,-0x48(%rbp)
   427b6:	48 8d 45 10          	lea    0x10(%rbp),%rax
   427ba:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   427be:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   427c2:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    error_vprintf(-1, COLOR_ERROR, format, val);
   427c6:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   427ca:	48 89 fa             	mov    %rdi,%rdx
   427cd:	be 00 c0 00 00       	mov    $0xc000,%esi
   427d2:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   427d7:	e8 19 ff ff ff       	callq  426f5 <error_vprintf(int, int, char const*, __va_list_tag*)>
}
   427dc:	c9                   	leaveq 
   427dd:	c3                   	retq   

00000000000427de <assert_fail(char const*, int, char const*)>:
void assert_fail(const char* file, int line, const char* msg) {
   427de:	f3 0f 1e fa          	endbr64 
   427e2:	55                   	push   %rbp
   427e3:	48 89 e5             	mov    %rsp,%rbp
   427e6:	41 57                	push   %r15
   427e8:	41 56                	push   %r14
   427ea:	41 55                	push   %r13
   427ec:	41 54                	push   %r12
   427ee:	53                   	push   %rbx
   427ef:	48 83 ec 18          	sub    $0x18,%rsp
   427f3:	48 89 d1             	mov    %rdx,%rcx
    cursorpos = CPOS(23, 0);
   427f6:	c7 05 fc 67 07 00 30 	movl   $0x730,0x767fc(%rip)        # b8ffc <cursorpos>
   427fd:	07 00 00 
    error_printf("%s:%d: kernel assertion '%s' failed\n", file, line, msg);
   42800:	89 f2                	mov    %esi,%edx
   42802:	48 89 fe             	mov    %rdi,%rsi
   42805:	bf 48 4d 04 00       	mov    $0x44d48,%edi
   4280a:	b0 00                	mov    $0x0,%al
   4280c:	e8 7e ff ff ff       	callq  4278f <error_printf(char const*, ...)>
    return x;
}

__always_inline uintptr_t rdrsp() {
    uintptr_t x;
    asm volatile("movq %%rsp, %0" : "=r" (x));
   42811:	48 89 e0             	mov    %rsp,%rax
   42814:	48 89 c2             	mov    %rax,%rdx
   42817:	4c 8d a8 ff 0f 00 00 	lea    0xfff(%rax),%r13
   4281e:	49 81 e5 00 f0 ff ff 	and    $0xfffffffffffff000,%r13
    asm volatile("movq %%rbp, %0" : "=r" (x));
   42825:	48 89 eb             	mov    %rbp,%rbx
    int frame = 1;
   42828:	41 bc 01 00 00 00    	mov    $0x1,%r12d
        return rbp_ >= rsp_ && stack_top_ - rbp_ >= 16;
   4282e:	48 39 da             	cmp    %rbx,%rdx
   42831:	77 4a                	ja     4287d <assert_fail(char const*, int, char const*)+0x9f>
   42833:	4c 89 e8             	mov    %r13,%rax
   42836:	48 29 d8             	sub    %rbx,%rax
   42839:	48 83 f8 0f          	cmp    $0xf,%rax
   4283d:	76 3e                	jbe    4287d <assert_fail(char const*, int, char const*)+0x9f>
        uintptr_t* rbpx = reinterpret_cast<uintptr_t*>(rbp_);
   4283f:	49 89 df             	mov    %rbx,%r15
        return rbpx[1];
   42842:	4c 8b 73 08          	mov    0x8(%rbx),%r14
        if (lookup_symbol(ret_rip, &name, nullptr)) {
   42846:	ba 00 00 00 00       	mov    $0x0,%edx
   4284b:	48 8d 75 c8          	lea    -0x38(%rbp),%rsi
   4284f:	4c 89 f7             	mov    %r14,%rdi
   42852:	e8 61 fd ff ff       	callq  425b8 <lookup_symbol(unsigned long, char const**, unsigned long*)>
   42857:	84 c0                	test   %al,%al
   42859:	74 29                	je     42884 <assert_fail(char const*, int, char const*)+0xa6>
            error_printf("  #%d  %p  <%s>\n", frame, ret_rip, name);
   4285b:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
   4285f:	4c 89 f2             	mov    %r14,%rdx
   42862:	44 89 e6             	mov    %r12d,%esi
   42865:	bf 2b 4f 04 00       	mov    $0x44f2b,%edi
   4286a:	b0 00                	mov    $0x0,%al
   4286c:	e8 1e ff ff ff       	callq  4278f <error_printf(char const*, ...)>
        rsp_ = rbp_ + 16;
   42871:	48 8d 53 10          	lea    0x10(%rbx),%rdx
        rbp_ = rbpx[0];
   42875:	49 8b 1f             	mov    (%r15),%rbx
    for (backtracer bt(rdrbp(), rsp, round_up(rsp, PAGESIZE));
   42878:	41 ff c4             	inc    %r12d
   4287b:	eb b1                	jmp    4282e <assert_fail(char const*, int, char const*)+0x50>
        check_keyboard();
   4287d:	e8 25 08 00 00       	callq  430a7 <check_keyboard()>
    while (true) {
   42882:	eb f9                	jmp    4287d <assert_fail(char const*, int, char const*)+0x9f>
        } else if (ret_rip) {
   42884:	4d 85 f6             	test   %r14,%r14
   42887:	74 e8                	je     42871 <assert_fail(char const*, int, char const*)+0x93>
            error_printf("  #%d  %p\n", frame, ret_rip);
   42889:	4c 89 f2             	mov    %r14,%rdx
   4288c:	44 89 e6             	mov    %r12d,%esi
   4288f:	bf 3e 4f 04 00       	mov    $0x44f3e,%edi
   42894:	b0 00                	mov    $0x0,%al
   42896:	e8 f4 fe ff ff       	callq  4278f <error_printf(char const*, ...)>
   4289b:	eb d4                	jmp    42871 <assert_fail(char const*, int, char const*)+0x93>

000000000004289d <init_hardware()>:
void init_hardware() {
   4289d:	f3 0f 1e fa          	endbr64 
   428a1:	55                   	push   %rbp
   428a2:	48 89 e5             	mov    %rsp,%rbp
   428a5:	53                   	push   %rbx
   428a6:	48 83 ec 38          	sub    $0x38,%rsp
    stash_kernel_data(false);
   428aa:	bf 00 00 00 00       	mov    $0x0,%edi
   428af:	e8 fd f9 ff ff       	callq  422b1 <stash_kernel_data(bool)>
    kernel_gdt_segments[0] = 0;
   428b4:	48 c7 05 61 07 01 00 	movq   $0x0,0x10761(%rip)        # 53020 <kernel_gdt_segments>
   428bb:	00 00 00 00 
    *segment = type
   428bf:	48 b8 00 00 00 00 00 	movabs $0x20980000000000,%rax
   428c6:	98 20 00 
   428c9:	48 89 05 58 07 01 00 	mov    %rax,0x10758(%rip)        # 53028 <kernel_gdt_segments+0x8>
   428d0:	48 b8 00 00 00 00 00 	movabs $0x920000000000,%rax
   428d7:	92 00 00 
   428da:	48 89 05 4f 07 01 00 	mov    %rax,0x1074f(%rip)        # 53030 <kernel_gdt_segments+0x10>
   428e1:	48 b8 00 00 00 00 00 	movabs $0x20f80000000000,%rax
   428e8:	f8 20 00 
   428eb:	48 89 05 46 07 01 00 	mov    %rax,0x10746(%rip)        # 53038 <kernel_gdt_segments+0x18>
   428f2:	48 b8 00 00 00 00 00 	movabs $0xf20000000000,%rax
   428f9:	f2 00 00 
   428fc:	48 89 05 3d 07 01 00 	mov    %rax,0x1073d(%rip)        # 53040 <kernel_gdt_segments+0x20>
    set_sys_segment(&kernel_gdt_segments[SEGSEL_TASKSTATE >> 3],
   42903:	ba 20 90 05 00       	mov    $0x59020,%edx
    segment[0] = ((addr & 0x0000000000FFFFFFUL) << 16)
   42908:	48 89 d0             	mov    %rdx,%rax
   4290b:	48 c1 e0 10          	shl    $0x10,%rax
   4290f:	48 b9 00 00 ff ff ff 	movabs $0xffffff0000,%rcx
   42916:	00 00 00 
   42919:	48 21 c8             	and    %rcx,%rax
        | ((addr & 0x00000000FF000000UL) << 32)
   4291c:	48 89 d1             	mov    %rdx,%rcx
   4291f:	48 c1 e1 20          	shl    $0x20,%rcx
   42923:	48 be 00 00 00 00 00 	movabs $0xff00000000000000,%rsi
   4292a:	00 00 ff 
   4292d:	48 21 f1             	and    %rsi,%rcx
   42930:	48 09 c8             	or     %rcx,%rax
        | X86SEG_P;                   // segment present
   42933:	48 b9 67 00 00 00 00 	movabs $0x890000000067,%rcx
   4293a:	89 00 00 
   4293d:	48 09 c8             	or     %rcx,%rax
   42940:	48 89 05 01 07 01 00 	mov    %rax,0x10701(%rip)        # 53048 <kernel_gdt_segments+0x28>
    segment[1] = addr >> 32;
   42947:	48 c1 ea 20          	shr    $0x20,%rdx
   4294b:	48 89 15 fe 06 01 00 	mov    %rdx,0x106fe(%rip)        # 53050 <kernel_gdt_segments+0x30>
    gdt.limit = (sizeof(uint64_t) * 3) - 1;
   42952:	66 c7 45 c6 17 00    	movw   $0x17,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42958:	48 c7 45 c8 20 30 05 	movq   $0x53020,-0x38(%rbp)
   4295f:	00 
    asm volatile("lgdt %0" : : "m" (gdt.limit));
   42960:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
    memset(kernel_pagetable, 0, sizeof(kernel_pagetable));
   42964:	ba 00 50 00 00       	mov    $0x5000,%edx
   42969:	be 00 00 00 00       	mov    $0x0,%esi
   4296e:	bf 00 40 05 00       	mov    $0x54000,%edi
   42973:	e8 c7 15 00 00       	callq  43f3f <memset>
        (x86_64_pageentry_t) &kernel_pagetable[1] | PTE_P | PTE_W | PTE_U;
   42978:	b8 00 50 05 00       	mov    $0x55000,%eax
   4297d:	48 83 c8 07          	or     $0x7,%rax
   42981:	48 89 05 78 16 01 00 	mov    %rax,0x11678(%rip)        # 54000 <kernel_pagetable>
        (x86_64_pageentry_t) &kernel_pagetable[2] | PTE_P | PTE_W | PTE_U;
   42988:	b8 00 60 05 00       	mov    $0x56000,%eax
   4298d:	48 83 c8 07          	or     $0x7,%rax
   42991:	48 89 05 68 26 01 00 	mov    %rax,0x12668(%rip)        # 55000 <kernel_pagetable+0x1000>
        (x86_64_pageentry_t) &kernel_pagetable[3] | PTE_P | PTE_W | PTE_U;
   42998:	b8 00 70 05 00       	mov    $0x57000,%eax
   4299d:	48 83 c8 07          	or     $0x7,%rax
   429a1:	48 89 05 58 36 01 00 	mov    %rax,0x13658(%rip)        # 56000 <kernel_pagetable+0x2000>
        (x86_64_pageentry_t) &kernel_pagetable[4] | PTE_P | PTE_W | PTE_U;
   429a8:	b8 00 80 05 00       	mov    $0x58000,%eax
   429ad:	48 83 c8 07          	or     $0x7,%rax
   429b1:	48 89 05 50 36 01 00 	mov    %rax,0x13650(%rip)        # 56008 <kernel_pagetable+0x2008>
    kernel_pagetable[1].entry[1] =
   429b8:	48 c7 05 45 26 01 00 	movq   $0x40000083,0x12645(%rip)        # 55008 <kernel_pagetable+0x1008>
   429bf:	83 00 00 40 
    kernel_pagetable[1].entry[2] =
   429c3:	b8 83 00 00 80       	mov    $0x80000083,%eax
   429c8:	48 89 05 41 26 01 00 	mov    %rax,0x12641(%rip)        # 55010 <kernel_pagetable+0x1010>
    kernel_pagetable[1].entry[3] =
   429cf:	48 8d 80 00 00 00 40 	lea    0x40000000(%rax),%rax
   429d6:	48 89 05 3b 26 01 00 	mov    %rax,0x1263b(%rip)        # 55018 <kernel_pagetable+0x1018>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   429dd:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   429e4:	00 
   429e5:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   429ec:	00 
   429ed:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   429f4:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   429fb:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42a02:	00 
    real_find(va);
   42a03:	be 00 00 00 00       	mov    $0x0,%esi
   42a08:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42a0c:	e8 67 f4 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   42a11:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42a15:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42a1c:	76 72                	jbe    42a90 <init_hardware()+0x1f3>
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   42a1e:	b8 00 40 05 00       	mov    $0x54000,%eax
   42a23:	0f 22 d8             	mov    %rax,%cr3
    cursorpos = 3 * CONSOLE_COLUMNS;
   42a26:	c7 05 cc 65 07 00 f0 	movl   $0xf0,0x765cc(%rip)        # b8ffc <cursorpos>
   42a2d:	00 00 00 
   42a30:	ba 70 0b 05 00       	mov    $0x50b70,%edx
    for (int i = 0; i < 256; ++i) {
   42a35:	be 00 00 00 00       	mov    $0x0,%esi
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42a3a:	49 b8 00 00 00 00 00 	movabs $0xffff000000000000,%r8
   42a41:	00 ff ff 
   42a44:	49 b9 00 00 00 00 00 	movabs $0x600000000000,%r9
   42a4b:	60 00 00 
   42a4e:	48 bf 00 00 08 00 00 	movabs $0x8e0000080000,%rdi
   42a55:	8e 00 00 
   42a58:	e9 b3 00 00 00       	jmpq   42b10 <init_hardware()+0x273>
    int r = try_map(pa, perm);
   42a5d:	ba 07 00 00 00       	mov    $0x7,%edx
   42a62:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42a66:	e8 11 f5 ff ff       	callq  41f7c <vmiter::try_map(unsigned long, int)>
    assert(r == 0);
   42a6b:	85 c0                	test   %eax,%eax
   42a6d:	75 28                	jne    42a97 <init_hardware()+0x1fa>
    return find(va_ + delta);
   42a6f:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
   42a73:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   42a7a:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42a7e:	e8 f5 f3 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   42a83:	48 8b 75 e8          	mov    -0x18(%rbp),%rsi
         it.va() < MEMSIZE_PHYSICAL;
   42a87:	48 81 fe ff ff 1f 00 	cmp    $0x1fffff,%rsi
   42a8e:	77 8e                	ja     42a1e <init_hardware()+0x181>
        if (it.va() != 0) {
   42a90:	48 85 f6             	test   %rsi,%rsi
   42a93:	74 da                	je     42a6f <init_hardware()+0x1d2>
   42a95:	eb c6                	jmp    42a5d <init_hardware()+0x1c0>
    assert(r == 0);
   42a97:	ba ab 4a 04 00       	mov    $0x44aab,%edx
   42a9c:	be b1 00 00 00       	mov    $0xb1,%esi
   42aa1:	bf b2 4a 04 00       	mov    $0x44ab2,%edi
   42aa6:	e8 33 fd ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    assert(cpuid(1).edx & (1 << 9));
   42aab:	ba 49 4f 04 00       	mov    $0x44f49,%edx
   42ab0:	be b7 00 00 00       	mov    $0xb7,%esi
   42ab5:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42aba:	e8 1f fd ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42abf:	ba 70 4d 04 00       	mov    $0x44d70,%edx
   42ac4:	be b9 00 00 00       	mov    $0xb9,%esi
   42ac9:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42ace:	e8 0b fd ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42ad3:	ba 98 4d 04 00       	mov    $0x44d98,%edx
   42ad8:	be ba 00 00 00       	mov    $0xba,%esi
   42add:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42ae2:	e8 f7 fc ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42ae7:	48 89 c1             	mov    %rax,%rcx
   42aea:	48 c1 e1 20          	shl    $0x20,%rcx
   42aee:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42af1:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42af5:	4d 09 ca             	or     %r9,%r10
   42af8:	4c 09 d1             	or     %r10,%rcx
   42afb:	48 09 f9             	or     %rdi,%rcx
   42afe:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   42b01:	48 c1 e8 20          	shr    $0x20,%rax
   42b05:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   42b09:	83 c6 01             	add    $0x1,%esi
   42b0c:	48 83 c2 10          	add    $0x10,%rdx
        uintptr_t addr = interrupt_descriptors[i].gd_low;
   42b10:	48 8b 02             	mov    (%rdx),%rax
        set_gate(&interrupt_descriptors[i], addr,
   42b13:	83 fe 03             	cmp    $0x3,%esi
   42b16:	74 cf                	je     42ae7 <init_hardware()+0x24a>
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42b18:	48 89 c1             	mov    %rax,%rcx
   42b1b:	48 c1 e1 20          	shl    $0x20,%rcx
   42b1f:	4c 21 c1             	and    %r8,%rcx
    gate->gd_low = (addr & 0x000000000000FFFFUL)
   42b22:	44 0f b7 d0          	movzwl %ax,%r10d
        | ((addr & 0x00000000FFFF0000UL) << 32);
   42b26:	4c 09 d1             	or     %r10,%rcx
   42b29:	48 09 f9             	or     %rdi,%rcx
   42b2c:	48 89 0a             	mov    %rcx,(%rdx)
    gate->gd_high = addr >> 32;
   42b2f:	48 c1 e8 20          	shr    $0x20,%rax
   42b33:	48 89 42 08          	mov    %rax,0x8(%rdx)
    for (int i = 0; i < 256; ++i) {
   42b37:	83 c6 01             	add    $0x1,%esi
   42b3a:	48 83 c2 10          	add    $0x10,%rdx
   42b3e:	81 fe 00 01 00 00    	cmp    $0x100,%esi
   42b44:	75 ca                	jne    42b10 <init_hardware()+0x273>
__always_inline x86_64_cpuid_t cpuid(uint32_t leaf) {
    x86_64_cpuid_t ret;
    asm volatile("cpuid"
                 : "=a" (ret.eax), "=b" (ret.ebx),
                   "=c" (ret.ecx), "=d" (ret.edx)
                 : "a" (leaf));
   42b46:	b8 01 00 00 00       	mov    $0x1,%eax
   42b4b:	0f a2                	cpuid  
    assert(cpuid(1).edx & (1 << 9));
   42b4d:	f6 c6 02             	test   $0x2,%dh
   42b50:	0f 84 55 ff ff ff    	je     42aab <init_hardware()+0x20e>
    return ret;
}

__always_inline uint64_t rdmsr(uint32_t msr) {
    uint64_t low, high;
    asm volatile("rdmsr" : "=a" (low), "=d" (high) : "c" (msr));
   42b56:	b9 1b 00 00 00       	mov    $0x1b,%ecx
   42b5b:	0f 32                	rdmsr  
    return low | (high << 32);
   42b5d:	48 c1 e2 20          	shl    $0x20,%rdx
   42b61:	48 09 c2             	or     %rax,%rdx
    assert(apic_base & IA32_APIC_BASE_ENABLED);
   42b64:	f6 c4 08             	test   $0x8,%ah
   42b67:	0f 84 52 ff ff ff    	je     42abf <init_hardware()+0x222>
    assert((apic_base & 0xFFFFFFFFF000) == lapicstate::lapic_pa);
   42b6d:	48 b9 00 f0 ff ff ff 	movabs $0xfffffffff000,%rcx
   42b74:	ff 00 00 
   42b77:	48 21 ca             	and    %rcx,%rdx
   42b7a:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42b7f:	48 39 c2             	cmp    %rax,%rdx
   42b82:	0f 85 4b ff ff ff    	jne    42ad3 <init_hardware()+0x236>
    asm volatile("outb %0, %w1" : : "a" (data), "d" (port));
   42b88:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   42b8d:	ba 21 00 00 00       	mov    $0x21,%edx
   42b92:	ee                   	out    %al,(%dx)
   42b93:	ba a1 00 00 00       	mov    $0xa1,%edx
   42b98:	ee                   	out    %al,(%dx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42b99:	b8 d0 5a 04 00       	mov    $0x45ad0,%eax
   42b9e:	48 3d d0 5a 04 00    	cmp    $0x45ad0,%rax
   42ba4:	74 12                	je     42bb8 <init_hardware()+0x31b>
   42ba6:	48 89 c3             	mov    %rax,%rbx
        (*fp)();
   42ba9:	ff 13                	callq  *(%rbx)
    for (auto fp = __init_array_start; fp != __init_array_end; ++fp) {
   42bab:	48 83 c3 08          	add    $0x8,%rbx
   42baf:	48 81 fb d0 5a 04 00 	cmp    $0x45ad0,%rbx
   42bb6:	75 f1                	jne    42ba9 <init_hardware()+0x30c>
    memset(&kernel_taskstate, 0, sizeof(kernel_taskstate));
   42bb8:	ba 68 00 00 00       	mov    $0x68,%edx
   42bbd:	be 00 00 00 00       	mov    $0x0,%esi
   42bc2:	bf 20 90 05 00       	mov    $0x59020,%edi
   42bc7:	e8 73 13 00 00       	callq  43f3f <memset>
    kernel_taskstate.ts_rsp[0] = KERNEL_STACK_TOP;
   42bcc:	48 c7 05 4d 64 01 00 	movq   $0x80000,0x1644d(%rip)        # 59024 <kernel_taskstate+0x4>
   42bd3:	00 00 08 00 
    gdt.limit = sizeof(kernel_gdt_segments) - 1;
   42bd7:	66 c7 45 c6 37 00    	movw   $0x37,-0x3a(%rbp)
    gdt.base = (uint64_t) kernel_gdt_segments;
   42bdd:	48 c7 45 c8 20 30 05 	movq   $0x53020,-0x38(%rbp)
   42be4:	00 
    idt.limit = sizeof(interrupt_descriptors) - 1;
   42be5:	66 c7 45 d6 ff 0f    	movw   $0xfff,-0x2a(%rbp)
    idt.base = (uint64_t) interrupt_descriptors;
   42beb:	48 c7 45 d8 70 0b 05 	movq   $0x50b70,-0x28(%rbp)
   42bf2:	00 
                 : "memory", "cc");
   42bf3:	b8 28 00 00 00       	mov    $0x28,%eax
   42bf8:	0f 01 55 c6          	lgdt   -0x3a(%rbp)
   42bfc:	0f 00 d8             	ltr    %ax
   42bff:	0f 01 5d d6          	lidt   -0x2a(%rbp)
                 : : "a" ((uint16_t) SEGSEL_KERN_DATA));
   42c03:	b8 10 00 00 00       	mov    $0x10,%eax
   42c08:	8e e0                	mov    %eax,%fs
   42c0a:	8e e8                	mov    %eax,%gs
    asm volatile("movq %%cr0, %0" : "=r" (x));
   42c0c:	0f 20 c0             	mov    %cr0,%rax
    wrcr0(cr0);
   42c0f:	0d 23 00 05 80       	or     $0x80050023,%eax
    asm volatile("movq %0, %%cr0" : : "r" (x));
   42c14:	0f 22 c0             	mov    %rax,%cr0
}
__always_inline void wrmsr(uint32_t msr, uint64_t x) {
    asm volatile("wrmsr" : : "c" (msr), "a" ((uint32_t) x), "d" (x >> 32));
   42c17:	b9 81 00 00 c0       	mov    $0xc0000081,%ecx
   42c1c:	b8 00 00 00 00       	mov    $0x0,%eax
   42c21:	ba 08 00 18 00       	mov    $0x180008,%edx
   42c26:	0f 30                	wrmsr  
    wrmsr(MSR_IA32_LSTAR, reinterpret_cast<uint64_t>(syscall_entry));
   42c28:	b8 d6 0a 04 00       	mov    $0x40ad6,%eax
   42c2d:	48 89 c2             	mov    %rax,%rdx
   42c30:	48 c1 ea 20          	shr    $0x20,%rdx
   42c34:	b9 82 00 00 c0       	mov    $0xc0000082,%ecx
   42c39:	0f 30                	wrmsr  
   42c3b:	b9 84 00 00 c0       	mov    $0xc0000084,%ecx
   42c40:	b8 00 77 04 00       	mov    $0x47700,%eax
   42c45:	ba 00 00 00 00       	mov    $0x0,%edx
   42c4a:	0f 30                	wrmsr  
    return reg_[reg].v;
   42c4c:	b8 00 00 e0 fe       	mov    $0xfee00000,%eax
   42c51:	8b 90 f0 00 00 00    	mov    0xf0(%rax),%edx
    write(reg_svr, (read(reg_svr) & ~0xFF) | 0x100 | vector);
   42c57:	81 e2 00 fe ff ff    	and    $0xfffffe00,%edx
   42c5d:	81 ca 3f 01 00 00    	or     $0x13f,%edx
    reg_[reg].v = v;
   42c63:	89 90 f0 00 00 00    	mov    %edx,0xf0(%rax)
   42c69:	c7 80 e0 03 00 00 0b 	movl   $0xb,0x3e0(%rax)
   42c70:	00 00 00 
   42c73:	c7 80 20 03 00 00 20 	movl   $0x20020,0x320(%rax)
   42c7a:	00 02 00 
   42c7d:	c7 80 80 03 00 00 00 	movl   $0x0,0x380(%rax)
   42c84:	00 00 00 
   42c87:	c7 80 50 03 00 00 00 	movl   $0x10000,0x350(%rax)
   42c8e:	00 01 00 
   42c91:	c7 80 60 03 00 00 00 	movl   $0x10000,0x360(%rax)
   42c98:	00 01 00 
   42c9b:	c7 80 70 03 00 00 33 	movl   $0x33,0x370(%rax)
   42ca2:	00 00 00 
   42ca5:	c7 80 80 02 00 00 00 	movl   $0x0,0x280(%rax)
   42cac:	00 00 00 
    return reg_[reg].v;
   42caf:	8b 90 80 02 00 00    	mov    0x280(%rax),%edx
    reg_[reg].v = v;
   42cb5:	c7 80 b0 00 00 00 00 	movl   $0x0,0xb0(%rax)
   42cbc:	00 00 00 
}
   42cbf:	48 83 c4 38          	add    $0x38,%rsp
   42cc3:	5b                   	pop    %rbx
   42cc4:	5d                   	pop    %rbp
   42cc5:	c3                   	retq   

0000000000042cc6 <check_pagetable(x86_64_pagetable*)>:
void check_pagetable(x86_64_pagetable* pagetable) {
   42cc6:	f3 0f 1e fa          	endbr64 
   42cca:	55                   	push   %rbp
   42ccb:	48 89 e5             	mov    %rsp,%rbp
   42cce:	53                   	push   %rbx
   42ccf:	48 83 ec 28          	sub    $0x28,%rsp
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42cd3:	f7 c7 ff 0f 00 00    	test   $0xfff,%edi
   42cd9:	0f 85 85 01 00 00    	jne    42e64 <check_pagetable(x86_64_pagetable*)+0x19e>
   42cdf:	48 89 fb             	mov    %rdi,%rbx
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42ce2:	48 89 7d d0          	mov    %rdi,-0x30(%rbp)
   42ce6:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
   42cea:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42cf1:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42cf8:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42cff:	00 
    real_find(va);
   42d00:	be 72 0a 04 00       	mov    $0x40a72,%esi
   42d05:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42d09:	e8 6a f1 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42d0e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42d12:	48 8b 30             	mov    (%rax),%rsi
   42d15:	40 f6 c6 01          	test   $0x1,%sil
   42d19:	0f 84 6e 01 00 00    	je     42e8d <check_pagetable(x86_64_pagetable*)+0x1c7>
        if (level_ > 0) {
   42d1f:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42d22:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42d29:	ff 0f 00 
   42d2c:	48 21 f0             	and    %rsi,%rax
   42d2f:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42d32:	85 c9                	test   %ecx,%ecx
   42d34:	0f 8e 3e 01 00 00    	jle    42e78 <check_pagetable(x86_64_pagetable*)+0x1b2>
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   42d3a:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42d3e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42d45:	48 d3 e0             	shl    %cl,%rax
   42d48:	48 f7 d0             	not    %rax
   42d4b:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42d4f:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   42d52:	ba 72 0a 04 00       	mov    $0x40a72,%edx
   42d57:	48 39 c2             	cmp    %rax,%rdx
   42d5a:	0f 85 2d 01 00 00    	jne    42e8d <check_pagetable(x86_64_pagetable*)+0x1c7>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42d60:	48 c7 45 d0 00 40 05 	movq   $0x54000,-0x30(%rbp)
   42d67:	00 
   42d68:	48 c7 45 d8 00 40 05 	movq   $0x54000,-0x28(%rbp)
   42d6f:	00 
   42d70:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42d77:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42d7e:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42d85:	00 
    real_find(va);
   42d86:	48 89 de             	mov    %rbx,%rsi
   42d89:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42d8d:	e8 e6 f0 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42d92:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42d96:	48 8b 30             	mov    (%rax),%rsi
   42d99:	40 f6 c6 01          	test   $0x1,%sil
   42d9d:	0f 84 13 01 00 00    	je     42eb6 <check_pagetable(x86_64_pagetable*)+0x1f0>
        if (level_ > 0) {
   42da3:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42da6:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42dad:	ff 0f 00 
   42db0:	48 21 f0             	and    %rsi,%rax
   42db3:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42db6:	85 c9                	test   %ecx,%ecx
   42db8:	0f 8e e3 00 00 00    	jle    42ea1 <check_pagetable(x86_64_pagetable*)+0x1db>
   42dbe:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42dc2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42dc9:	48 d3 e0             	shl    %cl,%rax
   42dcc:	48 f7 d0             	not    %rax
   42dcf:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42dd3:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42dd6:	48 39 c3             	cmp    %rax,%rbx
   42dd9:	0f 85 d7 00 00 00    	jne    42eb6 <check_pagetable(x86_64_pagetable*)+0x1f0>
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   42ddf:	48 89 5d d0          	mov    %rbx,-0x30(%rbp)
   42de3:	48 89 5d d8          	mov    %rbx,-0x28(%rbp)
   42de7:	c7 45 e0 03 00 00 00 	movl   $0x3,-0x20(%rbp)
   42dee:	c7 45 e4 ff 0f 00 00 	movl   $0xfff,-0x1c(%rbp)
   42df5:	48 c7 45 e8 00 00 00 	movq   $0x0,-0x18(%rbp)
   42dfc:	00 
    real_find(va);
   42dfd:	be 00 40 05 00       	mov    $0x54000,%esi
   42e02:	48 8d 7d d0          	lea    -0x30(%rbp),%rdi
   42e06:	e8 6d f0 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    if (*pep_ & PTE_P) {
   42e0b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
   42e0f:	48 8b 30             	mov    (%rax),%rsi
   42e12:	40 f6 c6 01          	test   $0x1,%sil
   42e16:	0f 84 c3 00 00 00    	je     42edf <check_pagetable(x86_64_pagetable*)+0x219>
        if (level_ > 0) {
   42e1c:	8b 4d e0             	mov    -0x20(%rbp),%ecx
            pa &= ~0x1000UL;
   42e1f:	48 b8 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rax
   42e26:	ff 0f 00 
   42e29:	48 21 f0             	and    %rsi,%rax
   42e2c:	48 89 c2             	mov    %rax,%rdx
        if (level_ > 0) {
   42e2f:	85 c9                	test   %ecx,%ecx
   42e31:	0f 8e 93 00 00 00    	jle    42eca <check_pagetable(x86_64_pagetable*)+0x204>
   42e37:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   42e3b:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   42e42:	48 d3 e0             	shl    %cl,%rax
   42e45:	48 f7 d0             	not    %rax
   42e48:	48 23 45 e8          	and    -0x18(%rbp),%rax
   42e4c:	48 01 d0             	add    %rdx,%rax
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   42e4f:	ba 00 40 05 00       	mov    $0x54000,%edx
   42e54:	48 39 c2             	cmp    %rax,%rdx
   42e57:	0f 85 82 00 00 00    	jne    42edf <check_pagetable(x86_64_pagetable*)+0x219>
}
   42e5d:	48 83 c4 28          	add    $0x28,%rsp
   42e61:	5b                   	pop    %rbx
   42e62:	5d                   	pop    %rbp
   42e63:	c3                   	retq   
    assert(((uintptr_t) pagetable & PAGEOFFMASK) == 0); // must be page aligned
   42e64:	ba d0 4d 04 00       	mov    $0x44dd0,%edx
   42e69:	be 17 01 00 00       	mov    $0x117,%esi
   42e6e:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42e73:	e8 66 f9 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
        uintptr_t pa = *pep_ & PTE_PAMASK;
   42e78:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42e7f:	ff 0f 00 
   42e82:	48 89 f2             	mov    %rsi,%rdx
   42e85:	48 21 c2             	and    %rax,%rdx
   42e88:	e9 ad fe ff ff       	jmpq   42d3a <check_pagetable(x86_64_pagetable*)+0x74>
    assert(vmiter(pagetable, (uintptr_t) exception_entry).pa()
   42e8d:	ba 00 4e 04 00       	mov    $0x44e00,%edx
   42e92:	be 18 01 00 00       	mov    $0x118,%esi
   42e97:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42e9c:	e8 3d f9 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
   42ea1:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42ea8:	ff 0f 00 
   42eab:	48 89 f2             	mov    %rsi,%rdx
   42eae:	48 21 c2             	and    %rax,%rdx
   42eb1:	e9 08 ff ff ff       	jmpq   42dbe <check_pagetable(x86_64_pagetable*)+0xf8>
    assert(vmiter(kernel_pagetable, (uintptr_t) pagetable).pa()
   42eb6:	ba 58 4e 04 00       	mov    $0x44e58,%edx
   42ebb:	be 1a 01 00 00       	mov    $0x11a,%esi
   42ec0:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42ec5:	e8 14 f9 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
   42eca:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   42ed1:	ff 0f 00 
   42ed4:	48 89 f2             	mov    %rsi,%rdx
   42ed7:	48 21 c2             	and    %rax,%rdx
   42eda:	e9 58 ff ff ff       	jmpq   42e37 <check_pagetable(x86_64_pagetable*)+0x171>
    assert(vmiter(pagetable, (uintptr_t) kernel_pagetable).pa()
   42edf:	ba a8 4e 04 00       	mov    $0x44ea8,%edx
   42ee4:	be 1c 01 00 00       	mov    $0x11c,%esi
   42ee9:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   42eee:	e8 eb f8 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
   42ef3:	90                   	nop

0000000000042ef4 <pcistate::next(int) const>:
int pcistate::next(int addr) const {
   42ef4:	f3 0f 1e fa          	endbr64 
   42ef8:	55                   	push   %rbp
   42ef9:	48 89 e5             	mov    %rsp,%rbp
    }
    return addr;
}

inline uint32_t pcistate::readl(int addr) const {
    assert(addr >= 0 && !(addr & 3));
   42efc:	89 f0                	mov    %esi,%eax
   42efe:	83 c0 0c             	add    $0xc,%eax
   42f01:	78 23                	js     42f26 <pcistate::next(int) const+0x32>
   42f03:	a8 03                	test   $0x3,%al
   42f05:	75 1f                	jne    42f26 <pcistate::next(int) const+0x32>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42f07:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42f0c:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42f11:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42f12:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   42f17:	ed                   	in     (%dx),%eax
   42f18:	89 c2                	mov    %eax,%edx
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42f1a:	bf f8 0c 00 00       	mov    $0xcf8,%edi
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42f1f:	b9 fc 0c 00 00       	mov    $0xcfc,%ecx
   42f24:	eb 51                	jmp    42f77 <pcistate::next(int) const+0x83>
    assert(addr >= 0 && !(addr & 3));
   42f26:	ba 91 4f 04 00       	mov    $0x44f91,%edx
   42f2b:	be 57 00 00 00       	mov    $0x57,%esi
   42f30:	bf 88 4f 04 00       	mov    $0x44f88,%edi
   42f35:	e8 a4 f8 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    assert(addr >= 0 && addr < 0x1000000);
   42f3a:	ba aa 4f 04 00       	mov    $0x44faa,%edx
   42f3f:	be 4a 00 00 00       	mov    $0x4a,%esi
   42f44:	bf 88 4f 04 00       	mov    $0x44f88,%edi
   42f49:	e8 90 f8 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
            addr += make_addr(0, 0, 1);
   42f4e:	81 c6 00 01 00 00    	add    $0x100,%esi
        if (addr >= addr_end) {
   42f54:	81 fe ff ff 07 00    	cmp    $0x7ffff,%esi
   42f5a:	7f 58                	jg     42fb4 <pcistate::next(int) const+0xc0>
        x = readl(addr + config_lthb);
   42f5c:	8d 46 0c             	lea    0xc(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   42f5f:	40 f6 c6 03          	test   $0x3,%sil
   42f63:	75 37                	jne    42f9c <pcistate::next(int) const+0xa8>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   42f65:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42f6a:	89 fa                	mov    %edi,%edx
   42f6c:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42f6d:	89 ca                	mov    %ecx,%edx
   42f6f:	ed                   	in     (%dx),%eax
   42f70:	89 c2                	mov    %eax,%edx
        if (x != uint32_t(-1)) {
   42f72:	83 f8 ff             	cmp    $0xffffffff,%eax
   42f75:	75 39                	jne    42fb0 <pcistate::next(int) const+0xbc>
    assert(addr >= 0 && addr < 0x1000000);
   42f77:	81 fe ff ff ff 00    	cmp    $0xffffff,%esi
   42f7d:	77 bb                	ja     42f3a <pcistate::next(int) const+0x46>
            && (x == uint32_t(-1) || !(x & 0x800000))) {
   42f7f:	f7 c6 00 07 00 00    	test   $0x700,%esi
   42f85:	75 c7                	jne    42f4e <pcistate::next(int) const+0x5a>
   42f87:	83 fa ff             	cmp    $0xffffffff,%edx
   42f8a:	74 08                	je     42f94 <pcistate::next(int) const+0xa0>
   42f8c:	f7 c2 00 00 80 00    	test   $0x800000,%edx
   42f92:	75 ba                	jne    42f4e <pcistate::next(int) const+0x5a>
            addr += make_addr(0, 1, 0);
   42f94:	81 c6 00 08 00 00    	add    $0x800,%esi
   42f9a:	eb b8                	jmp    42f54 <pcistate::next(int) const+0x60>
    assert(addr >= 0 && !(addr & 3));
   42f9c:	ba 91 4f 04 00       	mov    $0x44f91,%edx
   42fa1:	be 57 00 00 00       	mov    $0x57,%esi
   42fa6:	bf 88 4f 04 00       	mov    $0x44f88,%edi
   42fab:	e8 2e f8 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
   42fb0:	89 f0                	mov    %esi,%eax
   42fb2:	eb 05                	jmp    42fb9 <pcistate::next(int) const+0xc5>
            return -1;
   42fb4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   42fb9:	5d                   	pop    %rbp
   42fba:	c3                   	retq   

0000000000042fbb <poweroff()>:
void poweroff() {
   42fbb:	f3 0f 1e fa          	endbr64 
   42fbf:	55                   	push   %rbp
   42fc0:	48 89 e5             	mov    %rsp,%rbp
   42fc3:	53                   	push   %rbx
   42fc4:	48 83 ec 08          	sub    $0x8,%rsp
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42fc8:	b8 00 00 00 80       	mov    $0x80000000,%eax
   42fcd:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   42fd2:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   42fd3:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   42fd8:	89 c2                	mov    %eax,%edx
   42fda:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   42fdb:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   42fe0:	0f 84 ba 00 00 00    	je     430a0 <poweroff()+0xe5>
   42fe6:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   42feb:	0f 84 af 00 00 00    	je     430a0 <poweroff()+0xe5>
   42ff1:	be 00 00 00 00       	mov    $0x0,%esi
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   42ff6:	bb f8 0c 00 00       	mov    $0xcf8,%ebx
        addr = next(addr);
   42ffb:	bf 00 90 05 00       	mov    $0x59000,%edi
   43000:	e8 ef fe ff ff       	callq  42ef4 <pcistate::next(int) const>
   43005:	89 c6                	mov    %eax,%esi
    while (addr >= 0 && !predicate(addr)) {
   43007:	85 c0                	test   %eax,%eax
   43009:	78 52                	js     4305d <poweroff()+0xa2>
    assert(addr >= 0 && !(addr & 3));
   4300b:	40 f6 c6 03          	test   $0x3,%sil
   4300f:	75 67                	jne    43078 <poweroff()+0xbd>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   43011:	89 f0                	mov    %esi,%eax
   43013:	0d 00 00 00 80       	or     $0x80000000,%eax
   43018:	89 da                	mov    %ebx,%edx
   4301a:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   4301b:	b8 fc 0c 00 00       	mov    $0xcfc,%eax
   43020:	89 c2                	mov    %eax,%edx
   43022:	ed                   	in     (%dx),%eax
    while (addr >= 0 && !predicate(addr)) {
   43023:	3d 86 80 13 71       	cmp    $0x71138086,%eax
   43028:	74 07                	je     43031 <poweroff()+0x76>
   4302a:	3d 86 80 18 29       	cmp    $0x29188086,%eax
   4302f:	75 ca                	jne    42ffb <poweroff()+0x40>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   43031:	8d 46 40             	lea    0x40(%rsi),%eax
    assert(addr >= 0 && !(addr & 3));
   43034:	40 f6 c6 03          	test   $0x3,%sil
   43038:	75 52                	jne    4308c <poweroff()+0xd1>
    outl(reg_host_bridge_config_addr, 0x80000000U | addr);
   4303a:	0d 00 00 00 80       	or     $0x80000000,%eax
    asm volatile("outl %0, %w1" : : "a" (data), "d" (port));
   4303f:	ba f8 0c 00 00       	mov    $0xcf8,%edx
   43044:	ef                   	out    %eax,(%dx)
    asm volatile("inl %w1, %0" : "=a" (data) : "d" (port));
   43045:	ba fc 0c 00 00       	mov    $0xcfc,%edx
   4304a:	ed                   	in     (%dx),%eax
   4304b:	89 c2                	mov    %eax,%edx
   4304d:	81 e2 c0 ff 00 00    	and    $0xffc0,%edx
        outw(pm_io_base + 4, 0x2000);
   43053:	83 c2 04             	add    $0x4,%edx
    asm volatile("outw %0, %w1" : : "a" (data), "d" (port));
   43056:	b8 00 20 00 00       	mov    $0x2000,%eax
   4305b:	66 ef                	out    %ax,(%dx)
    console_printf(CPOS(24, 0), 0xC000, "Cannot power off!\n");
   4305d:	ba c8 4f 04 00       	mov    $0x44fc8,%edx
   43062:	be 00 c0 00 00       	mov    $0xc000,%esi
   43067:	bf 80 07 00 00       	mov    $0x780,%edi
   4306c:	b8 00 00 00 00       	mov    $0x0,%eax
   43071:	e8 cd 19 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
    while (true) {
   43076:	eb fe                	jmp    43076 <poweroff()+0xbb>
    assert(addr >= 0 && !(addr & 3));
   43078:	ba 91 4f 04 00       	mov    $0x44f91,%edx
   4307d:	be 57 00 00 00       	mov    $0x57,%esi
   43082:	bf 88 4f 04 00       	mov    $0x44f88,%edi
   43087:	e8 52 f7 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
   4308c:	ba 91 4f 04 00       	mov    $0x44f91,%edx
   43091:	be 57 00 00 00       	mov    $0x57,%esi
   43096:	bf 88 4f 04 00       	mov    $0x44f88,%edi
   4309b:	e8 3e f7 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
        int pm_io_base = pci.readl(addr + 0x40) & 0xFFC0;
   430a0:	b8 40 00 00 00       	mov    $0x40,%eax
   430a5:	eb 93                	jmp    4303a <poweroff()+0x7f>

00000000000430a7 <check_keyboard()>:
int check_keyboard() {
   430a7:	f3 0f 1e fa          	endbr64 
   430ab:	55                   	push   %rbp
   430ac:	48 89 e5             	mov    %rsp,%rbp
   430af:	41 54                	push   %r12
   430b1:	53                   	push   %rbx
   430b2:	48 83 ec 20          	sub    $0x20,%rsp
    int c = keyboard_readc();
   430b6:	e8 c8 f3 ff ff       	callq  42483 <keyboard_readc()>
   430bb:	41 89 c4             	mov    %eax,%r12d
    if (c == 'a' || c == 'f' || c == 'e') {
   430be:	8d 40 9b             	lea    -0x65(%rax),%eax
   430c1:	83 f8 01             	cmp    $0x1,%eax
   430c4:	76 1b                	jbe    430e1 <check_keyboard()+0x3a>
   430c6:	41 83 fc 61          	cmp    $0x61,%r12d
   430ca:	74 15                	je     430e1 <check_keyboard()+0x3a>
    } else if (c == 0x03 || c == 'q') {
   430cc:	41 83 fc 03          	cmp    $0x3,%r12d
   430d0:	74 0a                	je     430dc <check_keyboard()+0x35>
   430d2:	41 83 fc 71          	cmp    $0x71,%r12d
   430d6:	0f 85 cd 00 00 00    	jne    431a9 <check_keyboard()+0x102>
        poweroff();
   430dc:	e8 da fe ff ff       	callq  42fbb <poweroff()>
   430e1:	b8 80 03 e0 fe       	mov    $0xfee00380,%eax
   430e6:	c7 00 00 00 00 00    	movl   $0x0,(%rax)
        memset(pt, 0, PAGESIZE * 2);
   430ec:	ba 00 20 00 00       	mov    $0x2000,%edx
   430f1:	be 00 00 00 00       	mov    $0x0,%esi
   430f6:	bf 00 10 00 00       	mov    $0x1000,%edi
   430fb:	e8 3f 0e 00 00       	callq  43f3f <memset>
        pt[0].entry[0] = 0x2000 | PTE_P | PTE_W;
   43100:	48 c7 04 25 00 10 00 	movq   $0x2003,0x1000
   43107:	00 03 20 00 00 
        pt[1].entry[0] = PTE_P | PTE_W | PTE_PS;
   4310c:	48 c7 04 25 00 20 00 	movq   $0x83,0x2000
   43113:	00 83 00 00 00 
    asm volatile("movq %0, %%cr3" : : "r" (x) : "memory");
   43118:	b8 00 10 00 00       	mov    $0x1000,%eax
   4311d:	0f 22 d8             	mov    %rax,%cr3
        multiboot_info[0] = 4;
   43120:	c7 45 dc 04 00 00 00 	movl   $0x4,-0x24(%rbp)
            argument = "allocators";
   43127:	b8 db 4f 04 00       	mov    $0x44fdb,%eax
        if (c == 'a') {
   4312c:	41 83 fc 61          	cmp    $0x61,%r12d
   43130:	74 12                	je     43144 <check_keyboard()+0x9d>
            argument = "forkexit";
   43132:	41 83 fc 65          	cmp    $0x65,%r12d
   43136:	b8 e6 4f 04 00       	mov    $0x44fe6,%eax
   4313b:	ba eb 4f 04 00       	mov    $0x44feb,%edx
   43140:	48 0f 44 c2          	cmove  %rdx,%rax
        assert(argument_ptr < 0x100000000L);
   43144:	ba ff ff ff ff       	mov    $0xffffffff,%edx
   43149:	48 39 d0             	cmp    %rdx,%rax
   4314c:	77 67                	ja     431b5 <check_keyboard()+0x10e>
        multiboot_info[4] = (uint32_t) argument_ptr;
   4314e:	89 45 ec             	mov    %eax,-0x14(%rbp)
        stash_kernel_data(true);
   43151:	bf 01 00 00 00       	mov    $0x1,%edi
   43156:	e8 56 f1 ff ff       	callq  422b1 <stash_kernel_data(bool)>
        uintptr_t zero_size = (uintptr_t) &_kernel_end - (uintptr_t) &_edata;
   4315b:	bb 98 90 05 00       	mov    $0x59098,%ebx
   43160:	48 81 eb 70 1b 05 00 	sub    $0x51b70,%rbx
        uintptr_t data_size = (uintptr_t) &_edata - (uintptr_t) &_data_start;
   43167:	ba 70 1b 05 00       	mov    $0x51b70,%edx
   4316c:	48 81 ea 00 60 04 00 	sub    $0x46000,%rdx
        uint8_t* data_stash = (uint8_t*) (SYMTAB_ADDR - data_size);
   43173:	be 00 60 04 01       	mov    $0x1046000,%esi
   43178:	48 81 ee 70 1b 05 00 	sub    $0x51b70,%rsi
        memcpy(&_data_start, data_stash, data_size);
   4317f:	bf 00 60 04 00       	mov    $0x46000,%edi
   43184:	e8 45 0d 00 00       	callq  43ece <memcpy>
        memset(&_edata, 0, zero_size);
   43189:	48 89 da             	mov    %rbx,%rdx
   4318c:	be 00 00 00 00       	mov    $0x0,%esi
   43191:	bf 70 1b 05 00       	mov    $0x51b70,%edi
   43196:	e8 a4 0d 00 00       	callq  43f3f <memset>
                     : : "b" (multiboot_info) : "memory");
   4319b:	48 8d 5d dc          	lea    -0x24(%rbp),%rbx
   4319f:	b8 02 b0 ad 2b       	mov    $0x2badb002,%eax
   431a4:	e9 57 ce ff ff       	jmpq   40000 <_kernel_start>
}
   431a9:	44 89 e0             	mov    %r12d,%eax
   431ac:	48 83 c4 20          	add    $0x20,%rsp
   431b0:	5b                   	pop    %rbx
   431b1:	41 5c                	pop    %r12
   431b3:	5d                   	pop    %rbp
   431b4:	c3                   	retq   
        assert(argument_ptr < 0x100000000L);
   431b5:	ba f4 4f 04 00       	mov    $0x44ff4,%edx
   431ba:	be f7 02 00 00       	mov    $0x2f7,%esi
   431bf:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   431c4:	e8 15 f6 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>

00000000000431c9 <panic(char const*, ...)>:
void panic(const char* format, ...) {
   431c9:	f3 0f 1e fa          	endbr64 
   431cd:	55                   	push   %rbp
   431ce:	48 89 e5             	mov    %rsp,%rbp
   431d1:	53                   	push   %rbx
   431d2:	48 83 ec 58          	sub    $0x58,%rsp
   431d6:	48 89 75 c8          	mov    %rsi,-0x38(%rbp)
   431da:	48 89 55 d0          	mov    %rdx,-0x30(%rbp)
   431de:	48 89 4d d8          	mov    %rcx,-0x28(%rbp)
   431e2:	4c 89 45 e0          	mov    %r8,-0x20(%rbp)
   431e6:	4c 89 4d e8          	mov    %r9,-0x18(%rbp)
    va_start(val, format);
   431ea:	c7 45 a8 08 00 00 00 	movl   $0x8,-0x58(%rbp)
   431f1:	48 8d 45 10          	lea    0x10(%rbp),%rax
   431f5:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   431f9:	48 8d 45 c0          	lea    -0x40(%rbp),%rax
   431fd:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
    panicking = true;
   43201:	c6 05 01 fe 00 00 01 	movb   $0x1,0xfe01(%rip)        # 53009 <panicking>
    cursorpos = CPOS(23, 0);
   43208:	c7 05 ea 5d 07 00 30 	movl   $0x730,0x75dea(%rip)        # b8ffc <cursorpos>
   4320f:	07 00 00 
    if (format) {
   43212:	48 85 ff             	test   %rdi,%rdi
   43215:	74 5e                	je     43275 <panic(char const*, ...)+0xac>
   43217:	48 89 fb             	mov    %rdi,%rbx
        error_printf(-1, COLOR_ERROR, "PANIC: ");
   4321a:	ba 10 50 04 00       	mov    $0x45010,%edx
   4321f:	be 00 c0 00 00       	mov    $0xc000,%esi
   43224:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43229:	b0 00                	mov    $0x0,%al
   4322b:	e8 25 f5 ff ff       	callq  42755 <error_printf(int, int, char const*, ...)>
        error_vprintf(-1, COLOR_ERROR, format, val);
   43230:	48 8d 4d a8          	lea    -0x58(%rbp),%rcx
   43234:	48 89 da             	mov    %rbx,%rdx
   43237:	be 00 c0 00 00       	mov    $0xc000,%esi
   4323c:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43241:	e8 af f4 ff ff       	callq  426f5 <error_vprintf(int, int, char const*, __va_list_tag*)>
        if (CCOL(cursorpos)) {
   43246:	8b 05 b0 5d 07 00    	mov    0x75db0(%rip),%eax        # b8ffc <cursorpos>
   4324c:	b9 50 00 00 00       	mov    $0x50,%ecx
   43251:	99                   	cltd   
   43252:	f7 f9                	idiv   %ecx
   43254:	85 d2                	test   %edx,%edx
   43256:	74 16                	je     4326e <panic(char const*, ...)+0xa5>
            error_printf(-1, COLOR_ERROR, "\n");
   43258:	ba 73 52 04 00       	mov    $0x45273,%edx
   4325d:	be 00 c0 00 00       	mov    $0xc000,%esi
   43262:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43267:	b0 00                	mov    $0x0,%al
   43269:	e8 e7 f4 ff ff       	callq  42755 <error_printf(int, int, char const*, ...)>
        check_keyboard();
   4326e:	e8 34 fe ff ff       	callq  430a7 <check_keyboard()>
    while (true) {
   43273:	eb f9                	jmp    4326e <panic(char const*, ...)+0xa5>
        error_printf(-1, COLOR_ERROR, "PANIC");
   43275:	ba 18 50 04 00       	mov    $0x45018,%edx
   4327a:	be 00 c0 00 00       	mov    $0xc000,%esi
   4327f:	bf ff ff ff ff       	mov    $0xffffffff,%edi
   43284:	b0 00                	mov    $0x0,%al
   43286:	e8 ca f4 ff ff       	callq  42755 <error_printf(int, int, char const*, ...)>
        log_printf("\n");
   4328b:	bf 73 52 04 00       	mov    $0x45273,%edi
   43290:	b0 00                	mov    $0x0,%al
   43292:	e8 1c f4 ff ff       	callq  426b3 <log_printf(char const*, ...)>
[[noreturn]] void fail() {
   43297:	eb d5                	jmp    4326e <panic(char const*, ...)+0xa5>
   43299:	90                   	nop

000000000004329a <program_loader::program_number(char const*)>:
int program_loader::program_number(const char* program_name) {
   4329a:	f3 0f 1e fa          	endbr64 
   4329e:	55                   	push   %rbp
   4329f:	48 89 e5             	mov    %rsp,%rbp
   432a2:	41 54                	push   %r12
   432a4:	53                   	push   %rbx
   432a5:	49 89 fc             	mov    %rdi,%r12
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   432a8:	bb 00 00 00 00       	mov    $0x0,%ebx
        if (strcmp(program_name, ramimages[i].name) == 0) {
   432ad:	48 8d 04 5b          	lea    (%rbx,%rbx,2),%rax
   432b1:	48 8b 34 c5 00 60 04 	mov    0x46000(,%rax,8),%rsi
   432b8:	00 
   432b9:	4c 89 e7             	mov    %r12,%rdi
   432bc:	e8 df 0c 00 00       	callq  43fa0 <strcmp>
   432c1:	85 c0                	test   %eax,%eax
   432c3:	74 14                	je     432d9 <program_loader::program_number(char const*)+0x3f>
    for (size_t i = 0; i != sizeof(ramimages) / sizeof(ramimages[0]); ++i) {
   432c5:	48 83 c3 01          	add    $0x1,%rbx
   432c9:	48 83 fb 06          	cmp    $0x6,%rbx
   432cd:	75 de                	jne    432ad <program_loader::program_number(char const*)+0x13>
    return -1;
   432cf:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
   432d4:	5b                   	pop    %rbx
   432d5:	41 5c                	pop    %r12
   432d7:	5d                   	pop    %rbp
   432d8:	c3                   	retq   
            return i;
   432d9:	89 d8                	mov    %ebx,%eax
   432db:	eb f7                	jmp    432d4 <program_loader::program_number(char const*)+0x3a>
   432dd:	90                   	nop

00000000000432de <program_loader::fix()>:
void program_loader::fix() {
   432de:	f3 0f 1e fa          	endbr64 
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   432e2:	48 8b 47 08          	mov    0x8(%rdi),%rax
   432e6:	48 85 c0             	test   %rax,%rax
   432e9:	74 19                	je     43304 <program_loader::fix()+0x26>
   432eb:	48 8b 57 10          	mov    0x10(%rdi),%rdx
   432ef:	eb 04                	jmp    432f5 <program_loader::fix()+0x17>
        ++ph_;
   432f1:	48 89 47 08          	mov    %rax,0x8(%rdi)
    while (ph_ && ph_ != endph_ && ph_->p_type != ELF_PTYPE_LOAD) {
   432f5:	48 39 c2             	cmp    %rax,%rdx
   432f8:	74 0a                	je     43304 <program_loader::fix()+0x26>
   432fa:	48 83 c0 38          	add    $0x38,%rax
   432fe:	83 78 c8 01          	cmpl   $0x1,-0x38(%rax)
   43302:	75 ed                	jne    432f1 <program_loader::fix()+0x13>
}
   43304:	c3                   	retq   
   43305:	90                   	nop

0000000000043306 <program_loader::va() const>:
uintptr_t program_loader::va() const {
   43306:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_va : 0;
   4330a:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4330e:	b8 00 00 00 00       	mov    $0x0,%eax
   43313:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   43317:	74 04                	je     4331d <program_loader::va() const+0x17>
   43319:	48 8b 42 10          	mov    0x10(%rdx),%rax
}
   4331d:	c3                   	retq   

000000000004331e <program_loader::size() const>:
size_t program_loader::size() const {
   4331e:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_memsz : 0;
   43322:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43326:	b8 00 00 00 00       	mov    $0x0,%eax
   4332b:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   4332f:	74 04                	je     43335 <program_loader::size() const+0x17>
   43331:	48 8b 42 28          	mov    0x28(%rdx),%rax
}
   43335:	c3                   	retq   

0000000000043336 <program_loader::data() const>:
const char* program_loader::data() const {
   43336:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? (const char*) elf_ + ph_->p_offset : nullptr;
   4333a:	48 8b 47 08          	mov    0x8(%rdi),%rax
   4333e:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   43342:	74 08                	je     4334c <program_loader::data() const+0x16>
   43344:	48 8b 40 08          	mov    0x8(%rax),%rax
   43348:	48 03 07             	add    (%rdi),%rax
   4334b:	c3                   	retq   
   4334c:	b8 00 00 00 00       	mov    $0x0,%eax
}
   43351:	c3                   	retq   

0000000000043352 <program_loader::data_size() const>:
size_t program_loader::data_size() const {
   43352:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ ? ph_->p_filesz : 0;
   43356:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4335a:	b8 00 00 00 00       	mov    $0x0,%eax
   4335f:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   43363:	74 04                	je     43369 <program_loader::data_size() const+0x17>
   43365:	48 8b 42 20          	mov    0x20(%rdx),%rax
}
   43369:	c3                   	retq   

000000000004336a <program_loader::present() const>:
bool program_loader::present() const {
   4336a:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_;
   4336e:	48 8b 47 10          	mov    0x10(%rdi),%rax
   43372:	48 39 47 08          	cmp    %rax,0x8(%rdi)
   43376:	0f 95 c0             	setne  %al
}
   43379:	c3                   	retq   

000000000004337a <program_loader::writable() const>:
bool program_loader::writable() const {
   4337a:	f3 0f 1e fa          	endbr64 
    return ph_ != endph_ && (ph_->p_flags & ELF_PFLAG_WRITE);
   4337e:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   43382:	b8 00 00 00 00       	mov    $0x0,%eax
   43387:	48 3b 57 10          	cmp    0x10(%rdi),%rdx
   4338b:	74 08                	je     43395 <program_loader::writable() const+0x1b>
   4338d:	8b 42 04             	mov    0x4(%rdx),%eax
   43390:	d1 e8                	shr    %eax
   43392:	83 e0 01             	and    $0x1,%eax
}
   43395:	c3                   	retq   

0000000000043396 <program_loader::entry() const>:
uintptr_t program_loader::entry() const {
   43396:	f3 0f 1e fa          	endbr64 
    return elf_ ? elf_->e_entry : 0;
   4339a:	48 8b 17             	mov    (%rdi),%rdx
   4339d:	b8 00 00 00 00       	mov    $0x0,%eax
   433a2:	48 85 d2             	test   %rdx,%rdx
   433a5:	74 04                	je     433ab <program_loader::entry() const+0x15>
   433a7:	48 8b 42 18          	mov    0x18(%rdx),%rax
}
   433ab:	c3                   	retq   

00000000000433ac <program_loader::operator++()>:
void program_loader::operator++() {
   433ac:	f3 0f 1e fa          	endbr64 
    if (ph_ != endph_) {
   433b0:	48 8b 47 08          	mov    0x8(%rdi),%rax
   433b4:	48 3b 47 10          	cmp    0x10(%rdi),%rax
   433b8:	74 13                	je     433cd <program_loader::operator++()+0x21>
void program_loader::operator++() {
   433ba:	55                   	push   %rbp
   433bb:	48 89 e5             	mov    %rsp,%rbp
        ++ph_;
   433be:	48 83 c0 38          	add    $0x38,%rax
   433c2:	48 89 47 08          	mov    %rax,0x8(%rdi)
        fix();
   433c6:	e8 13 ff ff ff       	callq  432de <program_loader::fix()>
}
   433cb:	5d                   	pop    %rbp
   433cc:	c3                   	retq   
   433cd:	c3                   	retq   

00000000000433ce <program_loader::reset()>:
void program_loader::reset() {
   433ce:	f3 0f 1e fa          	endbr64 
    if (elf_) {
   433d2:	48 8b 07             	mov    (%rdi),%rax
   433d5:	48 85 c0             	test   %rax,%rax
   433d8:	74 49                	je     43423 <program_loader::reset()+0x55>
void program_loader::reset() {
   433da:	55                   	push   %rbp
   433db:	48 89 e5             	mov    %rsp,%rbp
        assert(elf_->e_magic == ELF_MAGIC);
   433de:	81 38 7f 45 4c 46    	cmpl   $0x464c457f,(%rax)
   433e4:	75 29                	jne    4340f <program_loader::reset()+0x41>
        ph_ = (elf_program*) ((uint8_t*) elf_ + elf_->e_phoff);
   433e6:	48 89 c2             	mov    %rax,%rdx
   433e9:	48 03 50 20          	add    0x20(%rax),%rdx
   433ed:	48 89 57 08          	mov    %rdx,0x8(%rdi)
        endph_ = ph_ + elf_->e_phnum;
   433f1:	0f b7 48 38          	movzwl 0x38(%rax),%ecx
   433f5:	48 8d 04 cd 00 00 00 	lea    0x0(,%rcx,8),%rax
   433fc:	00 
   433fd:	48 29 c8             	sub    %rcx,%rax
   43400:	48 8d 04 c2          	lea    (%rdx,%rax,8),%rax
   43404:	48 89 47 10          	mov    %rax,0x10(%rdi)
        fix();
   43408:	e8 d1 fe ff ff       	callq  432de <program_loader::fix()>
}
   4340d:	5d                   	pop    %rbp
   4340e:	c3                   	retq   
        assert(elf_->e_magic == ELF_MAGIC);
   4340f:	ba 1e 50 04 00       	mov    $0x4501e,%edx
   43414:	be 98 03 00 00       	mov    $0x398,%esi
   43419:	bf 61 4f 04 00       	mov    $0x44f61,%edi
   4341e:	e8 bb f3 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
        ph_ = endph_ = nullptr;
   43423:	48 c7 47 10 00 00 00 	movq   $0x0,0x10(%rdi)
   4342a:	00 
   4342b:	48 c7 47 08 00 00 00 	movq   $0x0,0x8(%rdi)
   43432:	00 
   43433:	c3                   	retq   

0000000000043434 <program_loader::program_loader(int)>:
program_loader::program_loader(int program_number) {
   43434:	f3 0f 1e fa          	endbr64 
   43438:	55                   	push   %rbp
   43439:	48 89 e5             	mov    %rsp,%rbp
    elf_ = nullptr;
   4343c:	48 c7 07 00 00 00 00 	movq   $0x0,(%rdi)
    if (program_number >= 0
   43443:	83 fe 05             	cmp    $0x5,%esi
   43446:	77 12                	ja     4345a <program_loader::program_loader(int)+0x26>
        elf_ = (elf_header*) ramimages[program_number].begin;
   43448:	48 63 f6             	movslq %esi,%rsi
   4344b:	48 8d 04 76          	lea    (%rsi,%rsi,2),%rax
   4344f:	48 8b 04 c5 08 60 04 	mov    0x46008(,%rax,8),%rax
   43456:	00 
   43457:	48 89 07             	mov    %rax,(%rdi)
    reset();
   4345a:	e8 6f ff ff ff       	callq  433ce <program_loader::reset()>
}
   4345f:	5d                   	pop    %rbp
   43460:	c3                   	retq   
   43461:	90                   	nop

0000000000043462 <program_loader::program_loader(char const*)>:
program_loader::program_loader(const char* program_name)
   43462:	f3 0f 1e fa          	endbr64 
   43466:	55                   	push   %rbp
   43467:	48 89 e5             	mov    %rsp,%rbp
   4346a:	53                   	push   %rbx
   4346b:	48 83 ec 08          	sub    $0x8,%rsp
   4346f:	48 89 fb             	mov    %rdi,%rbx
   43472:	48 89 f7             	mov    %rsi,%rdi
    : program_loader(program_number(program_name)) {
   43475:	e8 20 fe ff ff       	callq  4329a <program_loader::program_number(char const*)>
   4347a:	89 c6                	mov    %eax,%esi
   4347c:	48 89 df             	mov    %rbx,%rdi
   4347f:	e8 b0 ff ff ff       	callq  43434 <program_loader::program_loader(int)>
}
   43484:	48 83 c4 08          	add    $0x8,%rsp
   43488:	5b                   	pop    %rbx
   43489:	5d                   	pop    %rbp
   4348a:	c3                   	retq   

000000000004348b <__cxa_guard_acquire>:
int __cxa_guard_acquire(long long* arg) {
   4348b:	f3 0f 1e fa          	endbr64 
	return __atomic_load_n(&_M_i, int(__m));
   4348f:	0f b6 17             	movzbl (%rdi),%edx
        return 0;
   43492:	b8 00 00 00 00       	mov    $0x0,%eax
    if (guard->load(std::memory_order_relaxed) == 2) {
   43497:	80 fa 02             	cmp    $0x2,%dl
   4349a:	74 22                	je     434be <__cxa_guard_acquire+0x33>

      _GLIBCXX_ALWAYS_INLINE __int_type
      exchange(__int_type __i,
	       memory_order __m = memory_order_seq_cst) noexcept
      {
	return __atomic_exchange_n(&_M_i, __i, int(__m));
   4349c:	ba 01 00 00 00       	mov    $0x1,%edx
   434a1:	89 d0                	mov    %edx,%eax
   434a3:	86 07                	xchg   %al,(%rdi)
        if (old_value == 2) {
   434a5:	3c 02                	cmp    $0x2,%al
   434a7:	74 08                	je     434b1 <__cxa_guard_acquire+0x26>
        } else if (old_value == 1) {
   434a9:	3c 01                	cmp    $0x1,%al
   434ab:	75 0c                	jne    434b9 <__cxa_guard_acquire+0x2e>
    asm volatile("rdtsc" : "=a" (low), "=d" (high));
    return low | (high << 32);
}

__always_inline void pause() {
    asm volatile("pause" : : : "memory");
   434ad:	f3 90                	pause  
}
   434af:	eb f0                	jmp    434a1 <__cxa_guard_acquire+0x16>
   434b1:	86 07                	xchg   %al,(%rdi)
            return 0;
   434b3:	b8 00 00 00 00       	mov    $0x0,%eax
   434b8:	c3                   	retq   
            return 1;
   434b9:	b8 01 00 00 00       	mov    $0x1,%eax
}
   434be:	c3                   	retq   

00000000000434bf <__cxa_guard_release>:
void __cxa_guard_release(long long* arg) {
   434bf:	f3 0f 1e fa          	endbr64 
	__atomic_store_n(&_M_i, __i, int(__m));
   434c3:	c6 07 02             	movb   $0x2,(%rdi)
   434c6:	0f ae f0             	mfence 
}
   434c9:	c3                   	retq   

00000000000434ca <memusage::refresh()>:

// memusage::refresh()
//    Calculate the current physical usage map, using the current process
//    table.

void memusage::refresh() {
   434ca:	f3 0f 1e fa          	endbr64 
   434ce:	55                   	push   %rbp
   434cf:	48 89 e5             	mov    %rsp,%rbp
   434d2:	41 57                	push   %r15
   434d4:	41 56                	push   %r14
   434d6:	41 55                	push   %r13
   434d8:	41 54                	push   %r12
   434da:	53                   	push   %rbx
   434db:	48 83 ec 38          	sub    $0x38,%rsp
   434df:	49 89 fd             	mov    %rdi,%r13
    if (!v_) {
   434e2:	48 83 3f 00          	cmpq   $0x0,(%rdi)
   434e6:	74 48                	je     43530 <memusage::refresh()+0x66>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
        assert(v_ != nullptr);
    }

    memset(v_, 0, (maxpa / PAGESIZE) * sizeof(*v_));
   434e8:	ba 00 10 00 00       	mov    $0x1000,%edx
   434ed:	be 00 00 00 00       	mov    $0x0,%esi
   434f2:	49 8b 7d 00          	mov    0x0(%r13),%rdi
   434f6:	e8 44 0a 00 00       	callq  43f3f <memset>
    : pt_(pt) {
   434fb:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   43502:	00 
    go(va);
   43503:	be 00 00 00 00       	mov    $0x0,%esi
   43508:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4350c:	e8 05 ed ff ff       	callq  42216 <ptiter::go(unsigned long)>

    // mark kernel page tables
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   43511:	48 b8 ff ff ff ff ff 	movabs $0xffffffffffff,%rax
   43518:	ff 00 00 
   4351b:	48 39 45 c8          	cmp    %rax,-0x38(%rbp)
   4351f:	77 6d                	ja     4358e <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   43521:	49 bc 00 f0 ff ff ff 	movabs $0xffffffffff000,%r12
   43528:	ff 0f 00 
   4352b:	48 89 c3             	mov    %rax,%rbx
   4352e:	eb 3b                	jmp    4356b <memusage::refresh()+0xa1>
        v_ = reinterpret_cast<unsigned*>(kalloc(PAGESIZE));
   43530:	bf 00 10 00 00       	mov    $0x1000,%edi
   43535:	e8 2a d6 ff ff       	callq  40b64 <kalloc(unsigned long)>
   4353a:	49 89 45 00          	mov    %rax,0x0(%r13)
        assert(v_ != nullptr);
   4353e:	48 85 c0             	test   %rax,%rax
   43541:	75 a5                	jne    434e8 <memusage::refresh()+0x1e>
   43543:	ba c0 51 04 00       	mov    $0x451c0,%edx
   43548:	be 48 00 00 00       	mov    $0x48,%esi
   4354d:	bf ce 51 04 00       	mov    $0x451ce,%edi
   43552:	e8 87 f2 ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    down(true);
   43557:	be 01 00 00 00       	mov    $0x1,%esi
   4355c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43560:	e8 af eb ff ff       	callq  42114 <ptiter::down(bool)>
    for (ptiter it(kernel_pagetable); it.active(); it.next()) {
   43565:	48 39 5d c8          	cmp    %rbx,-0x38(%rbp)
   43569:	77 23                	ja     4358e <memusage::refresh()+0xc4>
    return *pep_ & PTE_PAMASK;
   4356b:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   4356f:	4c 89 e6             	mov    %r12,%rsi
   43572:	48 23 30             	and    (%rax),%rsi
   43575:	48 89 f0             	mov    %rsi,%rax
        if (pa < maxpa) {
   43578:	48 81 fe ff ff 3f 00 	cmp    $0x3fffff,%rsi
   4357f:	77 d6                	ja     43557 <memusage::refresh()+0x8d>
            v_[pa / PAGESIZE] |= flags;
   43581:	48 c1 e8 0a          	shr    $0xa,%rax
   43585:	49 03 45 00          	add    0x0(%r13),%rax
   43589:	83 08 01             	orl    $0x1,(%rax)
   4358c:	eb c9                	jmp    43557 <memusage::refresh()+0x8d>
        mark(it.pa(), f_kernel);
    }
    mark((uintptr_t) kernel_pagetable, f_kernel);
   4358e:	b8 00 40 05 00       	mov    $0x54000,%eax
        if (pa < maxpa) {
   43593:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43599:	77 0c                	ja     435a7 <memusage::refresh()+0xdd>
            v_[pa / PAGESIZE] |= flags;
   4359b:	48 c1 e8 0c          	shr    $0xc,%rax
   4359f:	49 8b 55 00          	mov    0x0(%r13),%rdx
   435a3:	83 0c 82 01          	orl    $0x1,(%rdx,%rax,4)

    // mark pages accessible from each process's page table
    bool any = false;
    for (int pid = 1; pid < NPROC; ++pid) {
   435a7:	bb f0 22 05 00       	mov    $0x522f0,%ebx
void memusage::refresh() {
   435ac:	41 bc 01 00 00 00    	mov    $0x1,%r12d
   435b2:	be 00 00 00 00       	mov    $0x0,%esi
        if (p->state != P_FREE
            && p->pagetable
            && p->pagetable != kernel_pagetable) {
            any = true;

            for (ptiter it(p); it.active(); it.next()) {
   435b7:	49 be ff ff ff ff ff 	movabs $0xffffffffffff,%r14
   435be:	ff 00 00 
   435c1:	e9 c5 01 00 00       	jmpq   4378b <memusage::refresh()+0x2c1>
    down(true);
   435c6:	be 01 00 00 00       	mov    $0x1,%esi
   435cb:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   435cf:	e8 40 eb ff ff       	callq  42114 <ptiter::down(bool)>
   435d4:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   435d8:	77 2a                	ja     43604 <memusage::refresh()+0x13a>
    return *pep_ & PTE_PAMASK;
   435da:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   435de:	4c 89 ff             	mov    %r15,%rdi
   435e1:	48 23 38             	and    (%rax),%rdi
   435e4:	48 89 f8             	mov    %rdi,%rax
        if (pa < maxpa) {
   435e7:	48 81 ff ff ff 3f 00 	cmp    $0x3fffff,%rdi
   435ee:	77 d6                	ja     435c6 <memusage::refresh()+0xfc>
            v_[pa / PAGESIZE] |= flags;
   435f0:	48 c1 e8 0a          	shr    $0xa,%rax
   435f4:	49 03 45 00          	add    0x0(%r13),%rax
   435f8:	8b 55 a0             	mov    -0x60(%rbp),%edx
   435fb:	0b 10                	or     (%rax),%edx
   435fd:	83 ca 01             	or     $0x1,%edx
   43600:	89 10                	mov    %edx,(%rax)
   43602:	eb c2                	jmp    435c6 <memusage::refresh()+0xfc>
        } else if (pid >= 1) {
   43604:	45 8d 7c 24 ff       	lea    -0x1(%r12),%r15d
            return 2U << pid;
   43609:	b8 02 00 00 00       	mov    $0x2,%eax
   4360e:	44 89 e1             	mov    %r12d,%ecx
   43611:	d3 e0                	shl    %cl,%eax
   43613:	41 83 ff 1d          	cmp    $0x1d,%r15d
   43617:	ba 00 00 00 00       	mov    $0x0,%edx
   4361c:	0f 43 c2             	cmovae %edx,%eax
                mark(it.pa(), f_kernel | f_process(pid));
            }
            mark((uintptr_t) p->pagetable, f_kernel | f_process(pid));
   4361f:	48 8b 75 a8          	mov    -0x58(%rbp),%rsi
   43623:	48 8b 16             	mov    (%rsi),%rdx
        if (pa < maxpa) {
   43626:	48 81 fa ff ff 3f 00 	cmp    $0x3fffff,%rdx
   4362d:	77 13                	ja     43642 <memusage::refresh()+0x178>
            v_[pa / PAGESIZE] |= flags;
   4362f:	48 c1 ea 0c          	shr    $0xc,%rdx
   43633:	49 8b 4d 00          	mov    0x0(%r13),%rcx
   43637:	48 8d 14 91          	lea    (%rcx,%rdx,4),%rdx
   4363b:	0b 02                	or     (%rdx),%eax
   4363d:	83 c8 01             	or     $0x1,%eax
   43640:	89 02                	mov    %eax,(%rdx)
    : vmiter(p->pagetable, va) {
   43642:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   43646:	48 8b 00             	mov    (%rax),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43649:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   4364d:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   43651:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43658:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4365f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43666:	00 
    real_find(va);
   43667:	be 00 00 00 00       	mov    $0x0,%esi
   4366c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43670:	e8 03 e8 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43675:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi

            for (vmiter it(p); it.low(); ) {
   43679:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   43680:	7f 00 00 
   43683:	48 39 c6             	cmp    %rax,%rsi
   43686:	0f 87 ea 00 00 00    	ja     43776 <memusage::refresh()+0x2ac>
            return 2U << pid;
   4368c:	b8 02 00 00 00       	mov    $0x2,%eax
   43691:	44 89 e1             	mov    %r12d,%ecx
   43694:	d3 e0                	shl    %cl,%eax
   43696:	41 83 ff 1c          	cmp    $0x1c,%r15d
   4369a:	ba 00 00 00 00       	mov    $0x0,%edx
   4369f:	0f 46 d0             	cmovbe %eax,%edx
   436a2:	89 55 a8             	mov    %edx,-0x58(%rbp)
    return (1UL << (PAGEOFFBITS + level * PAGEINDEXBITS)) - 1;
   436a5:	41 bf 01 00 00 00    	mov    $0x1,%r15d
   436ab:	eb 20                	jmp    436cd <memusage::refresh()+0x203>
                if (it.user()) {
                    mark(it.pa(), f_user | f_process(pid));
                    it.next();
   436ad:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   436b1:	e8 76 e8 ff ff       	callq  41f2c <vmiter::next()>
   436b6:	48 8b 75 c8          	mov    -0x38(%rbp),%rsi
            for (vmiter it(p); it.low(); ) {
   436ba:	48 b8 ff ff ff ff ff 	movabs $0x7fffffffffff,%rax
   436c1:	7f 00 00 
   436c4:	48 39 c6             	cmp    %rax,%rsi
   436c7:	0f 87 a9 00 00 00    	ja     43776 <memusage::refresh()+0x2ac>
    return (*pep_ & perm_ & p) == p;
   436cd:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   436d1:	48 8b 08             	mov    (%rax),%rcx
   436d4:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   436d8:	48 21 c8             	and    %rcx,%rax
   436db:	83 e0 05             	and    $0x5,%eax
                if (it.user()) {
   436de:	48 83 f8 05          	cmp    $0x5,%rax
   436e2:	75 6c                	jne    43750 <memusage::refresh()+0x286>
    if (*pep_ & PTE_P) {
   436e4:	f6 c1 01             	test   $0x1,%cl
   436e7:	74 c4                	je     436ad <memusage::refresh()+0x1e3>
        if (level_ > 0) {
   436e9:	8b 55 c0             	mov    -0x40(%rbp),%edx
        uintptr_t pa = *pep_ & PTE_PAMASK;
   436ec:	48 b8 00 f0 ff ff ff 	movabs $0xffffffffff000,%rax
   436f3:	ff 0f 00 
   436f6:	48 21 c8             	and    %rcx,%rax
   436f9:	48 bf 00 e0 ff ff ff 	movabs $0xfffffffffe000,%rdi
   43700:	ff 0f 00 
   43703:	48 21 f9             	and    %rdi,%rcx
   43706:	85 d2                	test   %edx,%edx
   43708:	48 0f 4f c1          	cmovg  %rcx,%rax
   4370c:	48 89 c7             	mov    %rax,%rdi
   4370f:	8d 4c d2 0c          	lea    0xc(%rdx,%rdx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43713:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
   4371a:	48 89 d0             	mov    %rdx,%rax
   4371d:	48 d3 e0             	shl    %cl,%rax
   43720:	48 f7 d0             	not    %rax
   43723:	48 21 f0             	and    %rsi,%rax
   43726:	48 01 f8             	add    %rdi,%rax
        if (pa < maxpa) {
   43729:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   4372f:	0f 87 78 ff ff ff    	ja     436ad <memusage::refresh()+0x1e3>
            v_[pa / PAGESIZE] |= flags;
   43735:	48 c1 e8 0c          	shr    $0xc,%rax
   43739:	49 8b 55 00          	mov    0x0(%r13),%rdx
   4373d:	48 8d 14 82          	lea    (%rdx,%rax,4),%rdx
   43741:	8b 45 a8             	mov    -0x58(%rbp),%eax
   43744:	0b 02                	or     (%rdx),%eax
   43746:	83 c8 02             	or     $0x2,%eax
   43749:	89 02                	mov    %eax,(%rdx)
   4374b:	e9 5d ff ff ff       	jmpq   436ad <memusage::refresh()+0x1e3>
   43750:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43753:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   43757:	4c 89 f8             	mov    %r15,%rax
   4375a:	48 d3 e0             	shl    %cl,%rax
   4375d:	48 83 e8 01          	sub    $0x1,%rax
    return (va_ | pageoffmask(level_)) + 1;
   43761:	48 09 f0             	or     %rsi,%rax
   43764:	48 8d 70 01          	lea    0x1(%rax),%rsi
    real_find(last_va());
   43768:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4376c:	e8 07 e7 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
}
   43771:	e9 40 ff ff ff       	jmpq   436b6 <memusage::refresh()+0x1ec>
            any = true;
   43776:	0f b6 75 a7          	movzbl -0x59(%rbp),%esi
    for (int pid = 1; pid < NPROC; ++pid) {
   4377a:	41 83 c4 01          	add    $0x1,%r12d
   4377e:	48 81 c3 d0 00 00 00 	add    $0xd0,%rbx
   43785:	41 83 fc 10          	cmp    $0x10,%r12d
   43789:	74 6b                	je     437f6 <memusage::refresh()+0x32c>
        if (p->state != P_FREE
   4378b:	48 89 5d a8          	mov    %rbx,-0x58(%rbp)
   4378f:	83 7b 0c 00          	cmpl   $0x0,0xc(%rbx)
   43793:	74 e5                	je     4377a <memusage::refresh()+0x2b0>
            && p->pagetable
   43795:	48 8b 03             	mov    (%rbx),%rax
            && p->pagetable != kernel_pagetable) {
   43798:	48 3d 00 40 05 00    	cmp    $0x54000,%rax
   4379e:	0f 95 c1             	setne  %cl
            && p->pagetable
   437a1:	48 85 c0             	test   %rax,%rax
   437a4:	0f 95 c2             	setne  %dl
            && p->pagetable != kernel_pagetable) {
   437a7:	20 d1                	and    %dl,%cl
   437a9:	88 4d a7             	mov    %cl,-0x59(%rbp)
   437ac:	74 cc                	je     4377a <memusage::refresh()+0x2b0>
    : pt_(pt) {
   437ae:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
    go(va);
   437b2:	be 00 00 00 00       	mov    $0x0,%esi
   437b7:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   437bb:	e8 56 ea ff ff       	callq  42216 <ptiter::go(unsigned long)>
            for (ptiter it(p); it.active(); it.next()) {
   437c0:	4c 39 75 c8          	cmp    %r14,-0x38(%rbp)
   437c4:	0f 87 3a fe ff ff    	ja     43604 <memusage::refresh()+0x13a>
            return 2U << pid;
   437ca:	b8 02 00 00 00       	mov    $0x2,%eax
   437cf:	44 89 e1             	mov    %r12d,%ecx
   437d2:	d3 e0                	shl    %cl,%eax
        } else if (pid >= 1) {
   437d4:	41 8d 54 24 ff       	lea    -0x1(%r12),%edx
   437d9:	83 fa 1c             	cmp    $0x1c,%edx
   437dc:	ba 00 00 00 00       	mov    $0x0,%edx
   437e1:	0f 46 d0             	cmovbe %eax,%edx
   437e4:	89 55 a0             	mov    %edx,-0x60(%rbp)
    return *pep_ & PTE_PAMASK;
   437e7:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   437ee:	ff 0f 00 
   437f1:	e9 e4 fd ff ff       	jmpq   435da <memusage::refresh()+0x110>
            }
        }
    }

    // if no different process page tables, use physical address instead
    if (!any) {
   437f6:	40 84 f6             	test   %sil,%sil
   437f9:	74 26                	je     43821 <memusage::refresh()+0x357>
        }
    }

    // mark my own memory
    if (any) {
        mark((uintptr_t) v_, f_kernel);
   437fb:	49 8b 45 00          	mov    0x0(%r13),%rax
        if (pa < maxpa) {
   437ff:	48 3d ff ff 3f 00    	cmp    $0x3fffff,%rax
   43805:	77 0b                	ja     43812 <memusage::refresh()+0x348>
            v_[pa / PAGESIZE] |= flags;
   43807:	48 89 c2             	mov    %rax,%rdx
   4380a:	48 c1 ea 0c          	shr    $0xc,%rdx
   4380e:	83 0c 90 01          	orl    $0x1,(%rax,%rdx,4)
    }
}
   43812:	48 83 c4 38          	add    $0x38,%rsp
   43816:	5b                   	pop    %rbx
   43817:	41 5c                	pop    %r12
   43819:	41 5d                	pop    %r13
   4381b:	41 5e                	pop    %r14
   4381d:	41 5f                	pop    %r15
   4381f:	5d                   	pop    %rbp
   43820:	c3                   	retq   
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43821:	48 c7 45 b0 00 40 05 	movq   $0x54000,-0x50(%rbp)
   43828:	00 
   43829:	48 c7 45 b8 00 40 05 	movq   $0x54000,-0x48(%rbp)
   43830:	00 
   43831:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43838:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   4383f:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43846:	00 
    real_find(va);
   43847:	be 00 00 00 00       	mov    $0x0,%esi
   4384c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43850:	e8 23 e6 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   43855:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   43859:	41 bc 01 00 00 00    	mov    $0x1,%r12d
            pa &= ~0x1000UL;
   4385f:	49 be 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r14
   43866:	ff 0f 00 
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43869:	49 bf 00 f0 ff ff ff 	movabs $0xffffffffff000,%r15
   43870:	ff 0f 00 
        for (vmiter it(kernel_pagetable); it.low(); ) {
   43873:	48 bb ff ff ff ff ff 	movabs $0x7fffffffffff,%rbx
   4387a:	7f 00 00 
   4387d:	48 39 da             	cmp    %rbx,%rdx
   43880:	76 30                	jbe    438b2 <memusage::refresh()+0x3e8>
   43882:	eb 8e                	jmp    43812 <memusage::refresh()+0x348>
   43884:	8b 45 c0             	mov    -0x40(%rbp),%eax
   43887:	8d 4c c0 0c          	lea    0xc(%rax,%rax,8),%ecx
   4388b:	4c 89 e0             	mov    %r12,%rax
   4388e:	48 d3 e0             	shl    %cl,%rax
   43891:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
    return (va_ | pageoffmask(level_)) + 1;
   43895:	48 09 d6             	or     %rdx,%rsi
   43898:	48 83 c6 01          	add    $0x1,%rsi
    real_find(last_va());
   4389c:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   438a0:	e8 d3 e5 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_ <= VA_LOWMAX;
   438a5:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
   438a9:	48 39 da             	cmp    %rbx,%rdx
   438ac:	0f 87 60 ff ff ff    	ja     43812 <memusage::refresh()+0x348>
    return (*pep_ & perm_ & p) == p;
   438b2:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   438b6:	48 8b 08             	mov    (%rax),%rcx
   438b9:	48 63 45 c4          	movslq -0x3c(%rbp),%rax
   438bd:	48 21 c8             	and    %rcx,%rax
   438c0:	83 e0 05             	and    $0x5,%eax
                && pages[it.pa() / PAGESIZE].used()) {
   438c3:	48 83 f8 05          	cmp    $0x5,%rax
   438c7:	75 bb                	jne    43884 <memusage::refresh()+0x3ba>
    if (*pep_ & PTE_P) {
   438c9:	f6 c1 01             	test   $0x1,%cl
   438cc:	74 b6                	je     43884 <memusage::refresh()+0x3ba>
        if (level_ > 0) {
   438ce:	8b 7d c0             	mov    -0x40(%rbp),%edi
            pa &= ~0x1000UL;
   438d1:	48 89 c8             	mov    %rcx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   438d4:	4c 21 f8             	and    %r15,%rax
   438d7:	4c 21 f1             	and    %r14,%rcx
   438da:	85 ff                	test   %edi,%edi
   438dc:	48 0f 4f c1          	cmovg  %rcx,%rax
   438e0:	48 89 c6             	mov    %rax,%rsi
   438e3:	8d 4c ff 0c          	lea    0xc(%rdi,%rdi,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   438e7:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
   438ee:	48 d3 e0             	shl    %cl,%rax
   438f1:	48 f7 d0             	not    %rax
   438f4:	48 21 d0             	and    %rdx,%rax
   438f7:	48 01 f0             	add    %rsi,%rax
                && it.pa() < MEMSIZE_PHYSICAL
   438fa:	48 3d ff ff 1f 00    	cmp    $0x1fffff,%rax
   43900:	77 82                	ja     43884 <memusage::refresh()+0x3ba>
                && pages[it.pa() / PAGESIZE].used()) {
   43902:	48 89 c6             	mov    %rax,%rsi
   43905:	48 c1 ee 0c          	shr    $0xc,%rsi
   43909:	80 be 00 20 05 00 00 	cmpb   $0x0,0x52000(%rsi)
   43910:	0f 84 6e ff ff ff    	je     43884 <memusage::refresh()+0x3ba>
                unsigned owner = (it.pa() - PROC_START_ADDR) / 0x40000;
   43916:	48 2d 00 00 10 00    	sub    $0x100000,%rax
   4391c:	48 c1 e8 12          	shr    $0x12,%rax
            return 0;
   43920:	ba 00 00 00 00       	mov    $0x0,%edx
        } else if (pid >= 1) {
   43925:	83 f8 1c             	cmp    $0x1c,%eax
   43928:	76 1d                	jbe    43947 <memusage::refresh()+0x47d>
            v_[pa / PAGESIZE] |= flags;
   4392a:	49 8b 45 00          	mov    0x0(%r13),%rax
   4392e:	48 8d 04 b0          	lea    (%rax,%rsi,4),%rax
   43932:	0b 10                	or     (%rax),%edx
   43934:	83 ca 02             	or     $0x2,%edx
   43937:	89 10                	mov    %edx,(%rax)
                it.next();
   43939:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   4393d:	e8 ea e5 ff ff       	callq  41f2c <vmiter::next()>
   43942:	e9 5e ff ff ff       	jmpq   438a5 <memusage::refresh()+0x3db>
                mark(it.pa(), f_user | f_process(owner + 1));
   43947:	8d 48 01             	lea    0x1(%rax),%ecx
            return 2U << pid;
   4394a:	ba 02 00 00 00       	mov    $0x2,%edx
   4394f:	d3 e2                	shl    %cl,%edx
   43951:	eb d7                	jmp    4392a <memusage::refresh()+0x460>
   43953:	90                   	nop

0000000000043954 <memusage::page_error(unsigned long, char const*, int) const>:

void memusage::page_error(uintptr_t pa, const char* desc, int pid) const {
   43954:	f3 0f 1e fa          	endbr64 
   43958:	55                   	push   %rbp
   43959:	48 89 e5             	mov    %rsp,%rbp
   4395c:	41 56                	push   %r14
   4395e:	41 55                	push   %r13
   43960:	41 54                	push   %r12
   43962:	53                   	push   %rbx
   43963:	49 89 f5             	mov    %rsi,%r13
   43966:	49 89 d6             	mov    %rdx,%r14
   43969:	89 cb                	mov    %ecx,%ebx
    const char* fmt = pid >= 0
        ? "PAGE TABLE ERROR: %lx: %s (pid %d)\n"
   4396b:	85 c9                	test   %ecx,%ecx
   4396d:	41 bc 78 52 04 00    	mov    $0x45278,%r12d
   43973:	b8 dd 51 04 00       	mov    $0x451dd,%eax
   43978:	4c 0f 48 e0          	cmovs  %rax,%r12
        : "PAGE TABLE ERROR: %lx: %s\n";
    error_printf(CPOS(22, 0), COLOR_ERROR, fmt, pa, desc, pid);
   4397c:	41 89 c9             	mov    %ecx,%r9d
   4397f:	49 89 d0             	mov    %rdx,%r8
   43982:	48 89 f1             	mov    %rsi,%rcx
   43985:	4c 89 e2             	mov    %r12,%rdx
   43988:	be 00 c0 00 00       	mov    $0xc000,%esi
   4398d:	bf e0 06 00 00       	mov    $0x6e0,%edi
   43992:	b8 00 00 00 00       	mov    $0x0,%eax
   43997:	e8 b9 ed ff ff       	callq  42755 <error_printf(int, int, char const*, ...)>
    log_printf(fmt, pa, desc, pid);
   4399c:	89 d9                	mov    %ebx,%ecx
   4399e:	4c 89 f2             	mov    %r14,%rdx
   439a1:	4c 89 ee             	mov    %r13,%rsi
   439a4:	4c 89 e7             	mov    %r12,%rdi
   439a7:	b8 00 00 00 00       	mov    $0x0,%eax
   439ac:	e8 02 ed ff ff       	callq  426b3 <log_printf(char const*, ...)>
}
   439b1:	5b                   	pop    %rbx
   439b2:	41 5c                	pop    %r12
   439b4:	41 5d                	pop    %r13
   439b6:	41 5e                	pop    %r14
   439b8:	5d                   	pop    %rbp
   439b9:	c3                   	retq   

00000000000439ba <memusage::symbol_at(unsigned long) const>:

uint16_t memusage::symbol_at(uintptr_t pa) const {
   439ba:	f3 0f 1e fa          	endbr64 
   439be:	55                   	push   %rbp
   439bf:	48 89 e5             	mov    %rsp,%rbp
   439c2:	41 55                	push   %r13
   439c4:	41 54                	push   %r12
   439c6:	53                   	push   %rbx
   439c7:	48 83 ec 08          	sub    $0x8,%rsp
   439cb:	49 89 fd             	mov    %rdi,%r13
   439ce:	48 89 f3             	mov    %rsi,%rbx
    bool is_reserved = reserved_physical_address(pa);
   439d1:	48 89 f7             	mov    %rsi,%rdi
   439d4:	e8 56 e9 ff ff       	callq  4232f <reserved_physical_address(unsigned long)>
   439d9:	41 89 c4             	mov    %eax,%r12d
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   439dc:	84 c0                	test   %al,%al
   439de:	74 3e                	je     43a1e <memusage::symbol_at(unsigned long) const+0x64>

    if (pa >= maxpa) {
        if (is_kernel) {
            return 'K' | 0x4000;
        } else if (is_reserved) {
            return '?' | 0x4000;
   439e0:	b8 3f 40 00 00       	mov    $0x403f,%eax
    if (pa >= maxpa) {
   439e5:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   439ec:	77 56                	ja     43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        } else {
            return '?' | 0xF000;
        }
    }

    auto v = v_[pa / PAGESIZE];
   439ee:	48 89 da             	mov    %rbx,%rdx
   439f1:	48 c1 ea 0c          	shr    $0xc,%rdx
   439f5:	49 8b 45 00          	mov    0x0(%r13),%rax
   439f9:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   439fc:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43a01:	48 39 d8             	cmp    %rbx,%rax
   43a04:	77 49                	ja     43a4f <memusage::symbol_at(unsigned long) const+0x95>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43a06:	b9 00 00 00 00       	mov    $0x0,%ecx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43a0b:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
        return 'C' | 0x0700;
   43a12:	b8 43 07 00 00       	mov    $0x743,%eax
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43a17:	48 39 de             	cmp    %rbx,%rsi
   43a1a:	76 38                	jbe    43a54 <memusage::symbol_at(unsigned long) const+0x9a>
   43a1c:	eb 26                	jmp    43a44 <memusage::symbol_at(unsigned long) const+0x8a>
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43a1e:	48 89 df             	mov    %rbx,%rdi
   43a21:	e8 2a e9 ff ff       	callq  42350 <allocatable_physical_address(unsigned long)>
   43a26:	83 f0 01             	xor    $0x1,%eax
   43a29:	89 c1                	mov    %eax,%ecx
    if (pa >= maxpa) {
   43a2b:	48 81 fb ff ff 3f 00 	cmp    $0x3fffff,%rbx
   43a32:	0f 86 99 01 00 00    	jbe    43bd1 <memusage::symbol_at(unsigned long) const+0x217>
            return 'K' | 0x4000;
   43a38:	3c 01                	cmp    $0x1,%al
   43a3a:	19 c0                	sbb    %eax,%eax
   43a3c:	66 25 f4 af          	and    $0xaff4,%ax
   43a40:	66 05 4b 40          	add    $0x404b,%ax
                ch |= names[pid];
            }
            return ch;
        }
    }
}
   43a44:	48 83 c4 08          	add    $0x8,%rsp
   43a48:	5b                   	pop    %rbx
   43a49:	41 5c                	pop    %r12
   43a4b:	41 5d                	pop    %r13
   43a4d:	5d                   	pop    %rbp
   43a4e:	c3                   	retq   
    bool is_kernel = !is_reserved && !allocatable_physical_address(pa);
   43a4f:	b9 00 00 00 00       	mov    $0x0,%ecx
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43a54:	83 fa 03             	cmp    $0x3,%edx
   43a57:	40 0f 97 c6          	seta   %sil
   43a5b:	76 09                	jbe    43a66 <memusage::symbol_at(unsigned long) const+0xac>
   43a5d:	45 84 e4             	test   %r12b,%r12b
   43a60:	0f 85 d6 00 00 00    	jne    43b3c <memusage::symbol_at(unsigned long) const+0x182>
        return 'R' | 0x0700;
   43a66:	b8 52 07 00 00       	mov    $0x752,%eax
    } else if (is_reserved) {
   43a6b:	45 84 e4             	test   %r12b,%r12b
   43a6e:	75 d4                	jne    43a44 <memusage::symbol_at(unsigned long) const+0x8a>
    } else if (is_kernel && v > (f_kernel | f_user)) {
   43a70:	40 84 f6             	test   %sil,%sil
   43a73:	74 08                	je     43a7d <memusage::symbol_at(unsigned long) const+0xc3>
   43a75:	84 c9                	test   %cl,%cl
   43a77:	0f 85 ea 00 00 00    	jne    43b67 <memusage::symbol_at(unsigned long) const+0x1ad>
        return 'K' | 0x0D00;
   43a7d:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
    } else if (is_kernel) {
   43a82:	84 c9                	test   %cl,%cl
   43a84:	75 be                	jne    43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        return ' ' | 0x0700;
   43a86:	b8 20 07 00 00       	mov    $0x720,%eax
    } else if (pa >= MEMSIZE_PHYSICAL) {
   43a8b:	48 81 fb ff ff 1f 00 	cmp    $0x1fffff,%rbx
   43a92:	77 b0                	ja     43a44 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   43a94:	b8 2e 07 00 00       	mov    $0x72e,%eax
        if (v == 0) {
   43a99:	85 d2                	test   %edx,%edx
   43a9b:	74 a7                	je     43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        } else if (v == f_kernel) {
   43a9d:	83 fa 01             	cmp    $0x1,%edx
   43aa0:	0f 84 17 01 00 00    	je     43bbd <memusage::symbol_at(unsigned long) const+0x203>
        } else if (v == f_user) {
   43aa6:	83 fa 02             	cmp    $0x2,%edx
   43aa9:	0f 84 18 01 00 00    	je     43bc7 <memusage::symbol_at(unsigned long) const+0x20d>
        } else if ((v & f_kernel) && (v & f_user)) {
   43aaf:	89 d0                	mov    %edx,%eax
   43ab1:	83 e0 03             	and    $0x3,%eax
   43ab4:	83 f8 03             	cmp    $0x3,%eax
   43ab7:	0f 84 d5 00 00 00    	je     43b92 <memusage::symbol_at(unsigned long) const+0x1d8>
        return lsb(v >> 2);
   43abd:	89 d1                	mov    %edx,%ecx
   43abf:	c1 e9 02             	shr    $0x2,%ecx
//    Returns 0 if `x == 0`.
inline constexpr int lsb(int x) {
    return __builtin_ffs(x);
}
inline constexpr int lsb(unsigned x) {
    return __builtin_ffs(x);
   43ac2:	0f bc c9             	bsf    %ecx,%ecx
   43ac5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43aca:	0f 44 c8             	cmove  %eax,%ecx
   43acd:	83 c1 01             	add    $0x1,%ecx
            uint16_t ch = colors[pid % 5] << 8;
   43ad0:	48 63 c1             	movslq %ecx,%rax
   43ad3:	48 69 c0 67 66 66 66 	imul   $0x66666667,%rax,%rax
   43ada:	48 c1 f8 21          	sar    $0x21,%rax
   43ade:	89 ce                	mov    %ecx,%esi
   43ae0:	c1 fe 1f             	sar    $0x1f,%esi
   43ae3:	29 f0                	sub    %esi,%eax
   43ae5:	8d 04 80             	lea    (%rax,%rax,4),%eax
   43ae8:	89 cb                	mov    %ecx,%ebx
   43aea:	29 c3                	sub    %eax,%ebx
   43aec:	89 d8                	mov    %ebx,%eax
   43aee:	48 98                	cltq   
   43af0:	0f b6 b8 21 53 04 00 	movzbl 0x45321(%rax),%edi
   43af7:	c1 e7 08             	shl    $0x8,%edi
                ch |= 0x4000;
   43afa:	89 f8                	mov    %edi,%eax
   43afc:	80 cc 40             	or     $0x40,%ah
   43aff:	f6 c2 01             	test   $0x1,%dl
   43b02:	0f 45 f8             	cmovne %eax,%edi
        } else if (pid >= 1) {
   43b05:	8d 71 ff             	lea    -0x1(%rcx),%esi
            return 2U << pid;
   43b08:	b8 02 00 00 00       	mov    $0x2,%eax
   43b0d:	d3 e0                	shl    %cl,%eax
   43b0f:	83 fe 1d             	cmp    $0x1d,%esi
   43b12:	be 00 00 00 00       	mov    $0x0,%esi
   43b17:	0f 42 f0             	cmovb  %eax,%esi
            if (v > (f_process(pid) | f_kernel | f_user)) {
   43b1a:	83 ce 03             	or     $0x3,%esi
                ch = 0x0F00 | 'S';
   43b1d:	b8 53 0f 00 00       	mov    $0xf53,%eax
            if (v > (f_process(pid) | f_kernel | f_user)) {
   43b22:	39 d6                	cmp    %edx,%esi
   43b24:	0f 82 1a ff ff ff    	jb     43a44 <memusage::symbol_at(unsigned long) const+0x8a>
                ch |= names[pid];
   43b2a:	48 63 c9             	movslq %ecx,%rcx
   43b2d:	66 0f be 81 00 53 04 	movsbw 0x45300(%rcx),%ax
   43b34:	00 
   43b35:	09 f8                	or     %edi,%eax
   43b37:	e9 08 ff ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43b3c:	c1 ea 02             	shr    $0x2,%edx
   43b3f:	0f bc ca             	bsf    %edx,%ecx
   43b42:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43b47:	0f 44 c8             	cmove  %eax,%ecx
   43b4a:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "reserved page mapped for user", marked_pid(v));
   43b4d:	ba f8 51 04 00       	mov    $0x451f8,%edx
   43b52:	48 89 de             	mov    %rbx,%rsi
   43b55:	4c 89 ef             	mov    %r13,%rdi
   43b58:	e8 f7 fd ff ff       	callq  43954 <memusage::page_error(unsigned long, char const*, int) const>
        return 'R' | 0x0C00;
   43b5d:	b8 52 0c 00 00       	mov    $0xc52,%eax
   43b62:	e9 dd fe ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43b67:	c1 ea 02             	shr    $0x2,%edx
   43b6a:	0f bc ca             	bsf    %edx,%ecx
   43b6d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43b72:	0f 44 c8             	cmove  %eax,%ecx
   43b75:	83 c1 01             	add    $0x1,%ecx
        page_error(pa, "kernel data page mapped for user", marked_pid(v));
   43b78:	ba a0 52 04 00       	mov    $0x452a0,%edx
   43b7d:	48 89 de             	mov    %rbx,%rsi
   43b80:	4c 89 ef             	mov    %r13,%rdi
   43b83:	e8 cc fd ff ff       	callq  43954 <memusage::page_error(unsigned long, char const*, int) const>
        return 'K' | 0xCD00;
   43b88:	b8 4b cd ff ff       	mov    $0xffffcd4b,%eax
   43b8d:	e9 b2 fe ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
        return lsb(v >> 2);
   43b92:	c1 ea 02             	shr    $0x2,%edx
   43b95:	0f bc ca             	bsf    %edx,%ecx
   43b98:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
   43b9d:	0f 44 c8             	cmove  %eax,%ecx
   43ba0:	83 c1 01             	add    $0x1,%ecx
            page_error(pa, "kernel allocated page mapped for user",
   43ba3:	ba c8 52 04 00       	mov    $0x452c8,%edx
   43ba8:	48 89 de             	mov    %rbx,%rsi
   43bab:	4c 89 ef             	mov    %r13,%rdi
   43bae:	e8 a1 fd ff ff       	callq  43954 <memusage::page_error(unsigned long, char const*, int) const>
            return '*' | 0xF400;
   43bb3:	b8 2a f4 ff ff       	mov    $0xfffff42a,%eax
   43bb8:	e9 87 fe ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
            return 'K' | 0x0D00;
   43bbd:	b8 4b 0d 00 00       	mov    $0xd4b,%eax
   43bc2:	e9 7d fe ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
            return '.' | 0x0700;
   43bc7:	b8 2e 07 00 00       	mov    $0x72e,%eax
   43bcc:	e9 73 fe ff ff       	jmpq   43a44 <memusage::symbol_at(unsigned long) const+0x8a>
    auto v = v_[pa / PAGESIZE];
   43bd1:	48 89 da             	mov    %rbx,%rdx
   43bd4:	48 c1 ea 0c          	shr    $0xc,%rdx
   43bd8:	49 8b 45 00          	mov    0x0(%r13),%rax
   43bdc:	8b 14 90             	mov    (%rax,%rdx,4),%edx
    if (pa >= (uintptr_t) console && pa < (uintptr_t) console + PAGESIZE) {
   43bdf:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   43be4:	48 39 c3             	cmp    %rax,%rbx
   43be7:	0f 83 1e fe ff ff    	jae    43a0b <memusage::symbol_at(unsigned long) const+0x51>
    } else if (is_reserved && v > (f_kernel | f_user)) {
   43bed:	83 fa 03             	cmp    $0x3,%edx
   43bf0:	40 0f 97 c6          	seta   %sil
   43bf4:	e9 77 fe ff ff       	jmpq   43a70 <memusage::symbol_at(unsigned long) const+0xb6>

0000000000043bf9 <console_memviewer(proc*)>:
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
    }
}


void console_memviewer(proc* vmp) {
   43bf9:	f3 0f 1e fa          	endbr64 
   43bfd:	55                   	push   %rbp
   43bfe:	48 89 e5             	mov    %rsp,%rbp
   43c01:	41 57                	push   %r15
   43c03:	41 56                	push   %r14
   43c05:	41 55                	push   %r13
   43c07:	41 54                	push   %r12
   43c09:	53                   	push   %rbx
   43c0a:	48 83 ec 28          	sub    $0x28,%rsp
    // Process 0 must never be used.
    assert(ptable[0].state == P_FREE);
   43c0e:	83 3d 17 e6 00 00 00 	cmpl   $0x0,0xe617(%rip)        # 5222c <ptable+0xc>
   43c15:	75 3c                	jne    43c53 <console_memviewer(proc*)+0x5a>
   43c17:	49 89 fe             	mov    %rdi,%r14

    // track physical memory
    static memusage mu;
   43c1a:	0f b6 05 67 54 01 00 	movzbl 0x15467(%rip),%eax        # 59088 <guard variable for console_memviewer(proc*)::mu>
   43c21:	84 c0                	test   %al,%al
   43c23:	74 42                	je     43c67 <console_memviewer(proc*)+0x6e>
    mu.refresh();
   43c25:	bf 90 90 05 00       	mov    $0x59090,%edi
   43c2a:	e8 9b f8 ff ff       	callq  434ca <memusage::refresh()>

    // print physical memory
    console_printf(CPOS(0, 32), 0x0F00, "PHYSICAL MEMORY\n");
   43c2f:	ba 30 52 04 00       	mov    $0x45230,%edx
   43c34:	be 00 0f 00 00       	mov    $0xf00,%esi
   43c39:	bf 20 00 00 00       	mov    $0x20,%edi
   43c3e:	b8 00 00 00 00       	mov    $0x0,%eax
   43c43:	e8 fb 0d 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
   43c48:	41 bc 00 00 00 00    	mov    $0x0,%r12d
   43c4e:	e9 b6 00 00 00       	jmpq   43d09 <console_memviewer(proc*)+0x110>
    assert(ptable[0].state == P_FREE);
   43c53:	ba 16 52 04 00       	mov    $0x45216,%edx
   43c58:	be e6 00 00 00       	mov    $0xe6,%esi
   43c5d:	bf ce 51 04 00       	mov    $0x451ce,%edi
   43c62:	e8 77 eb ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
    static memusage mu;
   43c67:	bf 88 90 05 00       	mov    $0x59088,%edi
   43c6c:	e8 1a f8 ff ff       	callq  4348b <__cxa_guard_acquire>
   43c71:	85 c0                	test   %eax,%eax
   43c73:	74 b0                	je     43c25 <console_memviewer(proc*)+0x2c>
        : v_(nullptr) {
   43c75:	48 c7 05 10 54 01 00 	movq   $0x0,0x15410(%rip)        # 59090 <console_memviewer(proc*)::mu>
   43c7c:	00 00 00 00 
    static memusage mu;
   43c80:	bf 88 90 05 00       	mov    $0x59088,%edi
   43c85:	e8 35 f8 ff ff       	callq  434bf <__cxa_guard_release>
   43c8a:	eb 99                	jmp    43c25 <console_memviewer(proc*)+0x2c>

    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
        if (pn % 64 == 0) {
            console_printf(CPOS(1 + pn/64, 3), 0x0F00, "0x%06X ", pn << 12);
   43c8c:	44 89 e1             	mov    %r12d,%ecx
   43c8f:	c1 e1 0c             	shl    $0xc,%ecx
   43c92:	41 8d 44 24 3f       	lea    0x3f(%r12),%eax
   43c97:	45 85 e4             	test   %r12d,%r12d
   43c9a:	41 0f 49 c4          	cmovns %r12d,%eax
   43c9e:	c1 f8 06             	sar    $0x6,%eax
   43ca1:	8d 7c 80 05          	lea    0x5(%rax,%rax,4),%edi
   43ca5:	c1 e7 04             	shl    $0x4,%edi
   43ca8:	83 c7 03             	add    $0x3,%edi
   43cab:	ba 41 52 04 00       	mov    $0x45241,%edx
   43cb0:	be 00 0f 00 00       	mov    $0xf00,%esi
   43cb5:	b8 00 00 00 00       	mov    $0x0,%eax
   43cba:	e8 84 0d 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
        }
        console[CPOS(1 + pn/64, 12 + pn%64)] = mu.symbol_at(pn * PAGESIZE);
   43cbf:	8d 43 3f             	lea    0x3f(%rbx),%eax
   43cc2:	85 db                	test   %ebx,%ebx
   43cc4:	0f 49 c3             	cmovns %ebx,%eax
   43cc7:	c1 f8 06             	sar    $0x6,%eax
   43cca:	8d 54 80 05          	lea    0x5(%rax,%rax,4),%edx
   43cce:	c1 e2 04             	shl    $0x4,%edx
   43cd1:	89 d8                	mov    %ebx,%eax
   43cd3:	c1 f8 1f             	sar    $0x1f,%eax
   43cd6:	c1 e8 1a             	shr    $0x1a,%eax
   43cd9:	01 c3                	add    %eax,%ebx
   43cdb:	83 e3 3f             	and    $0x3f,%ebx
   43cde:	29 c3                	sub    %eax,%ebx
   43ce0:	8d 5c 1a 0c          	lea    0xc(%rdx,%rbx,1),%ebx
   43ce4:	4c 89 ee             	mov    %r13,%rsi
   43ce7:	bf 90 90 05 00       	mov    $0x59090,%edi
   43cec:	e8 c9 fc ff ff       	callq  439ba <memusage::symbol_at(unsigned long) const>
   43cf1:	48 63 db             	movslq %ebx,%rbx
   43cf4:	66 89 84 1b 00 80 0b 	mov    %ax,0xb8000(%rbx,%rbx,1)
   43cfb:	00 
    for (int pn = 0; pn * PAGESIZE < memusage::max_view_pa; ++pn) {
   43cfc:	49 83 c4 01          	add    $0x1,%r12
   43d00:	49 81 fc 00 02 00 00 	cmp    $0x200,%r12
   43d07:	74 15                	je     43d1e <console_memviewer(proc*)+0x125>
   43d09:	4d 89 e5             	mov    %r12,%r13
   43d0c:	49 c1 e5 0c          	shl    $0xc,%r13
   43d10:	44 89 e3             	mov    %r12d,%ebx
        if (pn % 64 == 0) {
   43d13:	41 f6 c4 3f          	test   $0x3f,%r12b
   43d17:	75 a6                	jne    43cbf <console_memviewer(proc*)+0xc6>
   43d19:	e9 6e ff ff ff       	jmpq   43c8c <console_memviewer(proc*)+0x93>
    }

    // print virtual memory
    if (vmp && vmp->pagetable) {
   43d1e:	4d 85 f6             	test   %r14,%r14
   43d21:	0f 84 7f 01 00 00    	je     43ea6 <console_memviewer(proc*)+0x2ad>
   43d27:	49 83 3e 00          	cmpq   $0x0,(%r14)
   43d2b:	0f 84 75 01 00 00    	je     43ea6 <console_memviewer(proc*)+0x2ad>
    console_printf(CPOS(10, 26), 0x0F00,
   43d31:	41 8b 4e 08          	mov    0x8(%r14),%ecx
   43d35:	ba 49 52 04 00       	mov    $0x45249,%edx
   43d3a:	be 00 0f 00 00       	mov    $0xf00,%esi
   43d3f:	bf 3a 03 00 00       	mov    $0x33a,%edi
   43d44:	b8 00 00 00 00       	mov    $0x0,%eax
   43d49:	e8 f5 0c 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
    : vmiter(p->pagetable, va) {
   43d4e:	49 8b 06             	mov    (%r14),%rax
    : pt_(pt), pep_(&pt_->entry[0]), level_(3), perm_(initial_perm), va_(0) {
   43d51:	48 89 45 b0          	mov    %rax,-0x50(%rbp)
   43d55:	48 89 45 b8          	mov    %rax,-0x48(%rbp)
   43d59:	c7 45 c0 03 00 00 00 	movl   $0x3,-0x40(%rbp)
   43d60:	c7 45 c4 ff 0f 00 00 	movl   $0xfff,-0x3c(%rbp)
   43d67:	48 c7 45 c8 00 00 00 	movq   $0x0,-0x38(%rbp)
   43d6e:	00 
    real_find(va);
   43d6f:	be 00 00 00 00       	mov    $0x0,%esi
   43d74:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43d78:	e8 fb e0 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   43d7d:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43d81:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43d88:	0f 87 31 01 00 00    	ja     43ebf <console_memviewer(proc*)+0x2c6>
            pa &= ~0x1000UL;
   43d8e:	49 bd 00 e0 ff ff ff 	movabs $0xfffffffffe000,%r13
   43d95:	ff 0f 00 
        return pa + (va_ & pageoffmask(level_));
   43d98:	49 c7 c7 ff ff ff ff 	mov    $0xffffffffffffffff,%r15
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43d9f:	49 be 00 f0 ff ff ff 	movabs $0xffffffffff000,%r14
   43da6:	ff 0f 00 
   43da9:	e9 89 00 00 00       	jmpq   43e37 <console_memviewer(proc*)+0x23e>
            console_printf(CPOS(11 + pn / 64, 3), 0x0F00,
   43dae:	48 89 d8             	mov    %rbx,%rax
   43db1:	48 c1 e8 12          	shr    $0x12,%rax
   43db5:	8d 3c 80             	lea    (%rax,%rax,4),%edi
   43db8:	c1 e7 04             	shl    $0x4,%edi
   43dbb:	81 c7 73 03 00 00    	add    $0x373,%edi
   43dc1:	48 89 d9             	mov    %rbx,%rcx
   43dc4:	ba 41 52 04 00       	mov    $0x45241,%edx
   43dc9:	be 00 0f 00 00       	mov    $0xf00,%esi
   43dce:	b8 00 00 00 00       	mov    $0x0,%eax
   43dd3:	e8 6b 0c 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
   43dd8:	eb 6e                	jmp    43e48 <console_memviewer(proc*)+0x24f>
                uint16_t z = (ch & 0x0F00) ^ ((ch & 0xF000) >> 4);
   43dda:	89 c2                	mov    %eax,%edx
   43ddc:	66 c1 ea 04          	shr    $0x4,%dx
   43de0:	31 c2                	xor    %eax,%edx
   43de2:	89 d1                	mov    %edx,%ecx
   43de4:	66 81 e1 00 0f       	and    $0xf00,%cx
                ch ^= z | (z << 4);
   43de9:	81 e2 00 0f 00 00    	and    $0xf00,%edx
   43def:	c1 e2 04             	shl    $0x4,%edx
   43df2:	09 ca                	or     %ecx,%edx
   43df4:	31 d0                	xor    %edx,%eax
        console[CPOS(11 + pn/64, 12 + pn%64)] = ch;
   43df6:	48 c1 eb 12          	shr    $0x12,%rbx
   43dfa:	48 8d 14 9b          	lea    (%rbx,%rbx,4),%rdx
   43dfe:	48 c1 e2 04          	shl    $0x4,%rdx
   43e02:	49 8d 94 14 7c 03 00 	lea    0x37c(%r12,%rdx,1),%rdx
   43e09:	00 
   43e0a:	66 89 84 12 00 80 0b 	mov    %ax,0xb8000(%rdx,%rdx,1)
   43e11:	00 
    return find(va_ + delta);
   43e12:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
   43e16:	48 8d b0 00 10 00 00 	lea    0x1000(%rax),%rsi
    real_find(va);
   43e1d:	48 8d 7d b0          	lea    -0x50(%rbp),%rdi
   43e21:	e8 52 e0 ff ff       	callq  41e78 <vmiter::real_find(unsigned long)>
    return va_;
   43e26:	48 8b 5d c8          	mov    -0x38(%rbp),%rbx
         it.va() < memusage::max_view_va;
   43e2a:	48 81 fb ff ff 2f 00 	cmp    $0x2fffff,%rbx
   43e31:	0f 87 88 00 00 00    	ja     43ebf <console_memviewer(proc*)+0x2c6>
        unsigned long pn = it.va() / PAGESIZE;
   43e37:	49 89 dc             	mov    %rbx,%r12
   43e3a:	49 c1 ec 0c          	shr    $0xc,%r12
        if (pn % 64 == 0) {
   43e3e:	41 83 e4 3f          	and    $0x3f,%r12d
   43e42:	0f 84 66 ff ff ff    	je     43dae <console_memviewer(proc*)+0x1b5>
    return (*pep_ & PTE_P) != 0;
   43e48:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
   43e4c:	48 8b 10             	mov    (%rax),%rdx
            ch = ' ';
   43e4f:	b8 20 00 00 00       	mov    $0x20,%eax
        if (!it.present()) {
   43e54:	f6 c2 01             	test   $0x1,%dl
   43e57:	74 9d                	je     43df6 <console_memviewer(proc*)+0x1fd>
        if (level_ > 0) {
   43e59:	8b 4d c0             	mov    -0x40(%rbp),%ecx
            pa &= ~0x1000UL;
   43e5c:	48 89 d0             	mov    %rdx,%rax
        uintptr_t pa = *pep_ & PTE_PAMASK;
   43e5f:	4c 21 f0             	and    %r14,%rax
   43e62:	4c 21 ea             	and    %r13,%rdx
   43e65:	85 c9                	test   %ecx,%ecx
   43e67:	48 0f 4f c2          	cmovg  %rdx,%rax
   43e6b:	8d 4c c9 0c          	lea    0xc(%rcx,%rcx,8),%ecx
        return pa + (va_ & pageoffmask(level_));
   43e6f:	4c 89 fe             	mov    %r15,%rsi
   43e72:	48 d3 e6             	shl    %cl,%rsi
   43e75:	48 f7 d6             	not    %rsi
   43e78:	48 23 75 c8          	and    -0x38(%rbp),%rsi
   43e7c:	48 01 c6             	add    %rax,%rsi
            ch = mu.symbol_at(it.pa());
   43e7f:	bf 90 90 05 00       	mov    $0x59090,%edi
   43e84:	e8 31 fb ff ff       	callq  439ba <memusage::symbol_at(unsigned long) const>
    return (*pep_ & perm_ & p) == p;
   43e89:	48 63 55 c4          	movslq -0x3c(%rbp),%rdx
   43e8d:	48 8b 4d b8          	mov    -0x48(%rbp),%rcx
   43e91:	48 23 11             	and    (%rcx),%rdx
   43e94:	83 e2 05             	and    $0x5,%edx
            if (it.user()) { // switch foreground & background colors
   43e97:	48 83 fa 05          	cmp    $0x5,%rdx
   43e9b:	0f 85 55 ff ff ff    	jne    43df6 <console_memviewer(proc*)+0x1fd>
   43ea1:	e9 34 ff ff ff       	jmpq   43dda <console_memviewer(proc*)+0x1e1>
        console_memviewer_virtual(mu, vmp);
    } else {
        console_printf(CPOS(10, 0), 0x0F00, "\n\n\n\n\n\n\n\n\n\n\n\n\n");
   43ea6:	ba 67 52 04 00       	mov    $0x45267,%edx
   43eab:	be 00 0f 00 00       	mov    $0xf00,%esi
   43eb0:	bf 20 03 00 00       	mov    $0x320,%edi
   43eb5:	b8 00 00 00 00       	mov    $0x0,%eax
   43eba:	e8 84 0b 00 00       	callq  44a43 <console_printf(int, int, char const*, ...)>
    }
}
   43ebf:	48 83 c4 28          	add    $0x28,%rsp
   43ec3:	5b                   	pop    %rbx
   43ec4:	41 5c                	pop    %r12
   43ec6:	41 5d                	pop    %r13
   43ec8:	41 5e                	pop    %r14
   43eca:	41 5f                	pop    %r15
   43ecc:	5d                   	pop    %rbp
   43ecd:	c3                   	retq   

0000000000043ece <memcpy>:

// memcpy, memmove, memset, memcmp, memchr, strlen, strnlen, strcpy, strcmp,
// strncmp, strchr, strtoul, strtol
//    We must provide our own implementations.

void* memcpy(void* dst, const void* src, size_t n) {
   43ece:	f3 0f 1e fa          	endbr64 
   43ed2:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43ed5:	48 85 d2             	test   %rdx,%rdx
   43ed8:	74 17                	je     43ef1 <memcpy+0x23>
   43eda:	b9 00 00 00 00       	mov    $0x0,%ecx
        *d = *s;
   43edf:	44 0f b6 04 0e       	movzbl (%rsi,%rcx,1),%r8d
   43ee4:	44 88 04 08          	mov    %r8b,(%rax,%rcx,1)
    for (char* d = (char*) dst; n > 0; --n, ++s, ++d) {
   43ee8:	48 83 c1 01          	add    $0x1,%rcx
   43eec:	48 39 d1             	cmp    %rdx,%rcx
   43eef:	75 ee                	jne    43edf <memcpy+0x11>
    }
    return dst;
}
   43ef1:	c3                   	retq   

0000000000043ef2 <memmove>:

void* memmove(void* dst, const void* src, size_t n) {
   43ef2:	f3 0f 1e fa          	endbr64 
   43ef6:	48 89 f8             	mov    %rdi,%rax
    const char* s = (const char*) src;
    char* d = (char*) dst;
    if (s < d && s + n > d) {
   43ef9:	48 39 fe             	cmp    %rdi,%rsi
   43efc:	73 09                	jae    43f07 <memmove+0x15>
   43efe:	48 8d 0c 16          	lea    (%rsi,%rdx,1),%rcx
   43f02:	48 39 cf             	cmp    %rcx,%rdi
   43f05:	72 1d                	jb     43f24 <memmove+0x32>
        s += n, d += n;
        while (n-- > 0) {
            *--d = *--s;
        }
    } else {
        while (n-- > 0) {
   43f07:	b9 00 00 00 00       	mov    $0x0,%ecx
   43f0c:	48 85 d2             	test   %rdx,%rdx
   43f0f:	74 12                	je     43f23 <memmove+0x31>
            *d++ = *s++;
   43f11:	0f b6 3c 0e          	movzbl (%rsi,%rcx,1),%edi
   43f15:	40 88 3c 08          	mov    %dil,(%rax,%rcx,1)
        while (n-- > 0) {
   43f19:	48 83 c1 01          	add    $0x1,%rcx
   43f1d:	48 39 d1             	cmp    %rdx,%rcx
   43f20:	75 ef                	jne    43f11 <memmove+0x1f>
        }
    }
    return dst;
}
   43f22:	c3                   	retq   
   43f23:	c3                   	retq   
        while (n-- > 0) {
   43f24:	48 8d 4a ff          	lea    -0x1(%rdx),%rcx
   43f28:	48 85 d2             	test   %rdx,%rdx
   43f2b:	74 f5                	je     43f22 <memmove+0x30>
            *--d = *--s;
   43f2d:	0f b6 14 0e          	movzbl (%rsi,%rcx,1),%edx
   43f31:	88 14 08             	mov    %dl,(%rax,%rcx,1)
        while (n-- > 0) {
   43f34:	48 83 e9 01          	sub    $0x1,%rcx
   43f38:	48 83 f9 ff          	cmp    $0xffffffffffffffff,%rcx
   43f3c:	75 ef                	jne    43f2d <memmove+0x3b>
   43f3e:	c3                   	retq   

0000000000043f3f <memset>:

void* memset(void* v, int c, size_t n) {
   43f3f:	f3 0f 1e fa          	endbr64 
   43f43:	48 89 f8             	mov    %rdi,%rax
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43f46:	48 85 d2             	test   %rdx,%rdx
   43f49:	74 13                	je     43f5e <memset+0x1f>
   43f4b:	48 8d 0c 17          	lea    (%rdi,%rdx,1),%rcx
   43f4f:	48 89 fa             	mov    %rdi,%rdx
        *p = c;
   43f52:	40 88 32             	mov    %sil,(%rdx)
    for (char* p = (char*) v; n > 0; ++p, --n) {
   43f55:	48 83 c2 01          	add    $0x1,%rdx
   43f59:	48 39 d1             	cmp    %rdx,%rcx
   43f5c:	75 f4                	jne    43f52 <memset+0x13>
    }
    return v;
}
   43f5e:	c3                   	retq   

0000000000043f5f <strlen>:
        }
    }
    return nullptr;
}

size_t strlen(const char* s) {
   43f5f:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; *s != '\0'; ++s) {
   43f63:	80 3f 00             	cmpb   $0x0,(%rdi)
   43f66:	74 10                	je     43f78 <strlen+0x19>
   43f68:	b8 00 00 00 00       	mov    $0x0,%eax
        ++n;
   43f6d:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; *s != '\0'; ++s) {
   43f71:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   43f75:	75 f6                	jne    43f6d <strlen+0xe>
   43f77:	c3                   	retq   
   43f78:	b8 00 00 00 00       	mov    $0x0,%eax
    }
    return n;
}
   43f7d:	c3                   	retq   

0000000000043f7e <strnlen>:

size_t strnlen(const char* s, size_t maxlen) {
   43f7e:	f3 0f 1e fa          	endbr64 
    size_t n;
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   43f82:	48 85 f6             	test   %rsi,%rsi
   43f85:	74 15                	je     43f9c <strnlen+0x1e>
   43f87:	b8 00 00 00 00       	mov    $0x0,%eax
   43f8c:	80 3c 07 00          	cmpb   $0x0,(%rdi,%rax,1)
   43f90:	74 0d                	je     43f9f <strnlen+0x21>
        ++n;
   43f92:	48 83 c0 01          	add    $0x1,%rax
    for (n = 0; n != maxlen && *s != '\0'; ++s) {
   43f96:	48 39 c6             	cmp    %rax,%rsi
   43f99:	75 f1                	jne    43f8c <strnlen+0xe>
   43f9b:	c3                   	retq   
   43f9c:	48 89 f0             	mov    %rsi,%rax
    }
    return n;
}
   43f9f:	c3                   	retq   

0000000000043fa0 <strcmp>:
        *d++ = *src++;
    } while (d[-1]);
    return dst;
}

int strcmp(const char* a, const char* b) {
   43fa0:	f3 0f 1e fa          	endbr64 
    while (true) {
        unsigned char ac = *a, bc = *b;
   43fa4:	0f b6 17             	movzbl (%rdi),%edx
   43fa7:	0f b6 0e             	movzbl (%rsi),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   43faa:	84 d2                	test   %dl,%dl
   43fac:	41 0f 94 c0          	sete   %r8b
   43fb0:	38 ca                	cmp    %cl,%dl
   43fb2:	0f 95 c0             	setne  %al
   43fb5:	41 08 c0             	or     %al,%r8b
   43fb8:	75 2a                	jne    43fe4 <strcmp+0x44>
   43fba:	b8 01 00 00 00       	mov    $0x1,%eax
   43fbf:	84 c9                	test   %cl,%cl
   43fc1:	74 21                	je     43fe4 <strcmp+0x44>
        unsigned char ac = *a, bc = *b;
   43fc3:	0f b6 14 07          	movzbl (%rdi,%rax,1),%edx
   43fc7:	0f b6 0c 06          	movzbl (%rsi,%rax,1),%ecx
        if (ac == 0 || bc == 0 || ac != bc) {
   43fcb:	48 83 c0 01          	add    $0x1,%rax
   43fcf:	84 d2                	test   %dl,%dl
   43fd1:	41 0f 94 c1          	sete   %r9b
   43fd5:	84 c9                	test   %cl,%cl
   43fd7:	41 0f 94 c0          	sete   %r8b
   43fdb:	45 08 c1             	or     %r8b,%r9b
   43fde:	75 04                	jne    43fe4 <strcmp+0x44>
   43fe0:	38 ca                	cmp    %cl,%dl
   43fe2:	74 df                	je     43fc3 <strcmp+0x23>
            return (ac > bc) - (ac < bc);
   43fe4:	38 ca                	cmp    %cl,%dl
   43fe6:	0f 97 c0             	seta   %al
   43fe9:	0f b6 c0             	movzbl %al,%eax
   43fec:	83 d8 00             	sbb    $0x0,%eax
        }
        ++a, ++b;
    }
}
   43fef:	c3                   	retq   

0000000000043ff0 <strchr>:
        }
        ++a, ++b, --n;
    }
}

char* strchr(const char* s, int c) {
   43ff0:	f3 0f 1e fa          	endbr64 
    while (*s && *s != (char) c) {
   43ff4:	0f b6 07             	movzbl (%rdi),%eax
   43ff7:	84 c0                	test   %al,%al
   43ff9:	74 10                	je     4400b <strchr+0x1b>
   43ffb:	40 38 f0             	cmp    %sil,%al
   43ffe:	74 18                	je     44018 <strchr+0x28>
        ++s;
   44000:	48 83 c7 01          	add    $0x1,%rdi
    while (*s && *s != (char) c) {
   44004:	0f b6 07             	movzbl (%rdi),%eax
   44007:	84 c0                	test   %al,%al
   44009:	75 f0                	jne    43ffb <strchr+0xb>
    }
    if (*s == (char) c) {
        return (char*) s;
    } else {
        return nullptr;
   4400b:	40 84 f6             	test   %sil,%sil
   4400e:	b8 00 00 00 00       	mov    $0x0,%eax
   44013:	48 0f 44 c7          	cmove  %rdi,%rax
   44017:	c3                   	retq   
   44018:	48 89 f8             	mov    %rdi,%rax
    }
}
   4401b:	c3                   	retq   

000000000004401c <printer::vprintf(int, char const*, __va_list_tag*)>:
#define FLAG_NUMERIC            (1<<5)
#define FLAG_SIGNED             (1<<6)
#define FLAG_NEGATIVE           (1<<7)
#define FLAG_ALT2               (1<<8)

void printer::vprintf(int color, const char* format, va_list val) {
   4401c:	f3 0f 1e fa          	endbr64 
   44020:	55                   	push   %rbp
   44021:	48 89 e5             	mov    %rsp,%rbp
   44024:	41 57                	push   %r15
   44026:	41 56                	push   %r14
   44028:	41 55                	push   %r13
   4402a:	41 54                	push   %r12
   4402c:	53                   	push   %rbx
   4402d:	48 83 ec 58          	sub    $0x58,%rsp
   44031:	48 89 4d 90          	mov    %rcx,-0x70(%rbp)
#define NUMBUFSIZ 24
    char numbuf[NUMBUFSIZ];

    for (; *format; ++format) {
   44035:	0f b6 02             	movzbl (%rdx),%eax
   44038:	84 c0                	test   %al,%al
   4403a:	0f 84 c6 07 00 00    	je     44806 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
   44040:	49 89 fe             	mov    %rdi,%r14
   44043:	41 89 f7             	mov    %esi,%r15d
   44046:	48 89 d3             	mov    %rdx,%rbx
   44049:	e9 b9 03 00 00       	jmpq   44407 <printer::vprintf(int, char const*, __va_list_tag*)+0x3eb>
            continue;
        }

        // process flags
        int flags = 0;
        for (++format; *format; ++format) {
   4404e:	4c 8d 63 01          	lea    0x1(%rbx),%r12
   44052:	0f b6 5b 01          	movzbl 0x1(%rbx),%ebx
   44056:	84 db                	test   %bl,%bl
   44058:	0f 84 8a 07 00 00    	je     447e8 <printer::vprintf(int, char const*, __va_list_tag*)+0x7cc>
        int flags = 0;
   4405e:	41 bd 00 00 00 00    	mov    $0x0,%r13d
            const char* flagc = strchr(flag_chars, *format);
   44064:	0f be f3             	movsbl %bl,%esi
   44067:	bf 10 5a 04 00       	mov    $0x45a10,%edi
   4406c:	e8 7f ff ff ff       	callq  43ff0 <strchr>
   44071:	48 89 c1             	mov    %rax,%rcx
            if (flagc) {
   44074:	48 85 c0             	test   %rax,%rax
   44077:	74 74                	je     440ed <printer::vprintf(int, char const*, __va_list_tag*)+0xd1>
                flags |= 1 << (flagc - flag_chars);
   44079:	48 81 e9 10 5a 04 00 	sub    $0x45a10,%rcx
   44080:	b8 01 00 00 00       	mov    $0x1,%eax
   44085:	d3 e0                	shl    %cl,%eax
   44087:	41 09 c5             	or     %eax,%r13d
        for (++format; *format; ++format) {
   4408a:	49 83 c4 01          	add    $0x1,%r12
   4408e:	41 0f b6 1c 24       	movzbl (%r12),%ebx
   44093:	84 db                	test   %bl,%bl
   44095:	75 cd                	jne    44064 <printer::vprintf(int, char const*, __va_list_tag*)+0x48>
                break;
            }
        }

        // process width
        int width = -1;
   44097:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
            width = va_arg(val, int);
            ++format;
        }

        // process precision
        int precision = -1;
   4409e:	c7 45 a4 ff ff ff ff 	movl   $0xffffffff,-0x5c(%rbp)
        if (*format == '.') {
   440a5:	41 80 3c 24 2e       	cmpb   $0x2e,(%r12)
   440aa:	0f 84 cc 00 00 00    	je     4417c <printer::vprintf(int, char const*, __va_list_tag*)+0x160>
            }
        }

        // process length
        int length = 0;
        switch (*format) {
   440b0:	41 0f b6 04 24       	movzbl (%r12),%eax
   440b5:	3c 6c                	cmp    $0x6c,%al
   440b7:	0f 84 54 01 00 00    	je     44211 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   440bd:	0f 8f 42 01 00 00    	jg     44205 <printer::vprintf(int, char const*, __va_list_tag*)+0x1e9>
   440c3:	3c 68                	cmp    $0x68,%al
   440c5:	0f 85 68 01 00 00    	jne    44233 <printer::vprintf(int, char const*, __va_list_tag*)+0x217>
        case 'z': // size_t, ssize_t
            length = 1;
            ++format;
            break;
        case 'h':
            ++format;
   440cb:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        // process main conversion character
        int base = 10;
        unsigned long num = 0;
        const char* data = "";

        switch (*format) {
   440d0:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   440d6:	8d 50 bd             	lea    -0x43(%rax),%edx
   440d9:	80 fa 35             	cmp    $0x35,%dl
   440dc:	0f 87 aa 05 00 00    	ja     4468c <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   440e2:	0f b6 d2             	movzbl %dl,%edx
   440e5:	3e ff 24 d5 50 53 04 	notrack jmpq *0x45350(,%rdx,8)
   440ec:	00 
        if (*format >= '1' && *format <= '9') {
   440ed:	8d 43 cf             	lea    -0x31(%rbx),%eax
   440f0:	3c 08                	cmp    $0x8,%al
   440f2:	77 35                	ja     44129 <printer::vprintf(int, char const*, __va_list_tag*)+0x10d>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   440f4:	41 0f b6 04 24       	movzbl (%r12),%eax
   440f9:	8d 50 d0             	lea    -0x30(%rax),%edx
   440fc:	80 fa 09             	cmp    $0x9,%dl
   440ff:	77 63                	ja     44164 <printer::vprintf(int, char const*, __va_list_tag*)+0x148>
   44101:	ba 00 00 00 00       	mov    $0x0,%edx
                width = 10 * width + *format++ - '0';
   44106:	49 83 c4 01          	add    $0x1,%r12
   4410a:	8d 14 92             	lea    (%rdx,%rdx,4),%edx
   4410d:	0f be c0             	movsbl %al,%eax
   44110:	8d 54 50 d0          	lea    -0x30(%rax,%rdx,2),%edx
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   44114:	41 0f b6 04 24       	movzbl (%r12),%eax
   44119:	8d 48 d0             	lea    -0x30(%rax),%ecx
   4411c:	80 f9 09             	cmp    $0x9,%cl
   4411f:	76 e5                	jbe    44106 <printer::vprintf(int, char const*, __va_list_tag*)+0xea>
   44121:	89 55 98             	mov    %edx,-0x68(%rbp)
   44124:	e9 75 ff ff ff       	jmpq   4409e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        } else if (*format == '*') {
   44129:	80 fb 2a             	cmp    $0x2a,%bl
   4412c:	75 42                	jne    44170 <printer::vprintf(int, char const*, __va_list_tag*)+0x154>
            width = va_arg(val, int);
   4412e:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44132:	8b 07                	mov    (%rdi),%eax
   44134:	83 f8 2f             	cmp    $0x2f,%eax
   44137:	77 19                	ja     44152 <printer::vprintf(int, char const*, __va_list_tag*)+0x136>
   44139:	89 c2                	mov    %eax,%edx
   4413b:	48 03 57 10          	add    0x10(%rdi),%rdx
   4413f:	83 c0 08             	add    $0x8,%eax
   44142:	89 07                	mov    %eax,(%rdi)
   44144:	8b 02                	mov    (%rdx),%eax
   44146:	89 45 98             	mov    %eax,-0x68(%rbp)
            ++format;
   44149:	49 83 c4 01          	add    $0x1,%r12
   4414d:	e9 4c ff ff ff       	jmpq   4409e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            width = va_arg(val, int);
   44152:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44156:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4415a:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4415e:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44162:	eb e0                	jmp    44144 <printer::vprintf(int, char const*, __va_list_tag*)+0x128>
            for (width = 0; *format >= '0' && *format <= '9'; ) {
   44164:	c7 45 98 00 00 00 00 	movl   $0x0,-0x68(%rbp)
   4416b:	e9 2e ff ff ff       	jmpq   4409e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
        int width = -1;
   44170:	c7 45 98 ff ff ff ff 	movl   $0xffffffff,-0x68(%rbp)
   44177:	e9 22 ff ff ff       	jmpq   4409e <printer::vprintf(int, char const*, __va_list_tag*)+0x82>
            ++format;
   4417c:	49 8d 54 24 01       	lea    0x1(%r12),%rdx
            if (*format >= '0' && *format <= '9') {
   44181:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   44187:	8d 48 d0             	lea    -0x30(%rax),%ecx
   4418a:	80 f9 09             	cmp    $0x9,%cl
   4418d:	76 13                	jbe    441a2 <printer::vprintf(int, char const*, __va_list_tag*)+0x186>
            } else if (*format == '*') {
   4418f:	3c 2a                	cmp    $0x2a,%al
   44191:	74 32                	je     441c5 <printer::vprintf(int, char const*, __va_list_tag*)+0x1a9>
            ++format;
   44193:	49 89 d4             	mov    %rdx,%r12
                precision = 0;
   44196:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
   4419d:	e9 0e ff ff ff       	jmpq   440b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   441a2:	be 00 00 00 00       	mov    $0x0,%esi
                    precision = 10 * precision + *format++ - '0';
   441a7:	48 83 c2 01          	add    $0x1,%rdx
   441ab:	8d 0c b6             	lea    (%rsi,%rsi,4),%ecx
   441ae:	0f be c0             	movsbl %al,%eax
   441b1:	8d 74 48 d0          	lea    -0x30(%rax,%rcx,2),%esi
                for (precision = 0; *format >= '0' && *format <= '9'; ) {
   441b5:	0f b6 02             	movzbl (%rdx),%eax
   441b8:	8d 48 d0             	lea    -0x30(%rax),%ecx
   441bb:	80 f9 09             	cmp    $0x9,%cl
   441be:	76 e7                	jbe    441a7 <printer::vprintf(int, char const*, __va_list_tag*)+0x18b>
                    precision = 10 * precision + *format++ - '0';
   441c0:	49 89 d4             	mov    %rdx,%r12
   441c3:	eb 1c                	jmp    441e1 <printer::vprintf(int, char const*, __va_list_tag*)+0x1c5>
                precision = va_arg(val, int);
   441c5:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   441c9:	8b 01                	mov    (%rcx),%eax
   441cb:	83 f8 2f             	cmp    $0x2f,%eax
   441ce:	77 23                	ja     441f3 <printer::vprintf(int, char const*, __va_list_tag*)+0x1d7>
   441d0:	89 c2                	mov    %eax,%edx
   441d2:	48 03 51 10          	add    0x10(%rcx),%rdx
   441d6:	83 c0 08             	add    $0x8,%eax
   441d9:	89 01                	mov    %eax,(%rcx)
   441db:	8b 32                	mov    (%rdx),%esi
                ++format;
   441dd:	49 83 c4 02          	add    $0x2,%r12
            if (precision < 0) {
   441e1:	85 f6                	test   %esi,%esi
   441e3:	b8 00 00 00 00       	mov    $0x0,%eax
   441e8:	0f 49 c6             	cmovns %esi,%eax
   441eb:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   441ee:	e9 bd fe ff ff       	jmpq   440b0 <printer::vprintf(int, char const*, __va_list_tag*)+0x94>
                precision = va_arg(val, int);
   441f3:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   441f7:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   441fb:	48 8d 42 08          	lea    0x8(%rdx),%rax
   441ff:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44203:	eb d6                	jmp    441db <printer::vprintf(int, char const*, __va_list_tag*)+0x1bf>
        switch (*format) {
   44205:	3c 74                	cmp    $0x74,%al
   44207:	74 08                	je     44211 <printer::vprintf(int, char const*, __va_list_tag*)+0x1f5>
   44209:	3c 7a                	cmp    $0x7a,%al
   4420b:	0f 85 e2 05 00 00    	jne    447f3 <printer::vprintf(int, char const*, __va_list_tag*)+0x7d7>
            ++format;
   44211:	49 8d 4c 24 01       	lea    0x1(%r12),%rcx
        switch (*format) {
   44216:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   4421c:	8d 50 bd             	lea    -0x43(%rax),%edx
   4421f:	80 fa 35             	cmp    $0x35,%dl
   44222:	0f 87 64 04 00 00    	ja     4468c <printer::vprintf(int, char const*, __va_list_tag*)+0x670>
   44228:	0f b6 d2             	movzbl %dl,%edx
   4422b:	3e ff 24 d5 00 55 04 	notrack jmpq *0x45500(,%rdx,8)
   44232:	00 
   44233:	8d 50 bd             	lea    -0x43(%rax),%edx
   44236:	80 fa 35             	cmp    $0x35,%dl
   44239:	0f 87 4a 04 00 00    	ja     44689 <printer::vprintf(int, char const*, __va_list_tag*)+0x66d>
   4423f:	0f b6 d2             	movzbl %dl,%edx
   44242:	3e ff 24 d5 b0 56 04 	notrack jmpq *0x456b0(,%rdx,8)
   44249:	00 
        case 'd':
        case 'i': {
            long x = length ? va_arg(val, long) : va_arg(val, int);
   4424a:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   4424e:	8b 07                	mov    (%rdi),%eax
   44250:	83 f8 2f             	cmp    $0x2f,%eax
   44253:	0f 87 c9 01 00 00    	ja     44422 <printer::vprintf(int, char const*, __va_list_tag*)+0x406>
   44259:	89 c2                	mov    %eax,%edx
   4425b:	48 03 57 10          	add    0x10(%rdi),%rdx
   4425f:	83 c0 08             	add    $0x8,%eax
   44262:	89 07                	mov    %eax,(%rdi)
   44264:	48 8b 12             	mov    (%rdx),%rdx
   44267:	49 89 cc             	mov    %rcx,%r12
            int negative = x < 0 ? FLAG_NEGATIVE : 0;
   4426a:	48 89 d0             	mov    %rdx,%rax
   4426d:	48 c1 f8 38          	sar    $0x38,%rax
            num = negative ? -x : x;
   44271:	49 89 d0             	mov    %rdx,%r8
   44274:	49 f7 d8             	neg    %r8
   44277:	25 80 00 00 00       	and    $0x80,%eax
   4427c:	4c 0f 44 c2          	cmove  %rdx,%r8
            flags |= FLAG_NUMERIC | FLAG_SIGNED | negative;
   44280:	41 09 c5             	or     %eax,%r13d
   44283:	41 83 cd 60          	or     $0x60,%r13d
        const char* data = "";
   44287:	bb 74 52 04 00       	mov    $0x45274,%ebx
                format--;
            }
            break;
        }

        if (flags & FLAG_NUMERIC) {
   4428c:	44 89 e8             	mov    %r13d,%eax
   4428f:	83 e0 20             	and    $0x20,%eax
   44292:	89 45 9c             	mov    %eax,-0x64(%rbp)
   44295:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
   4429b:	0f 85 0e 04 00 00    	jne    446af <printer::vprintf(int, char const*, __va_list_tag*)+0x693>
            data = fill_numbuf(numbuf + NUMBUFSIZ, num, base);
        }

        const char* prefix = "";
        if ((flags & FLAG_NUMERIC) && (flags & FLAG_SIGNED)) {
   442a1:	44 89 6d 8c          	mov    %r13d,-0x74(%rbp)
   442a5:	44 89 e8             	mov    %r13d,%eax
   442a8:	83 e0 60             	and    $0x60,%eax
   442ab:	83 f8 60             	cmp    $0x60,%eax
   442ae:	0f 84 3e 04 00 00    	je     446f2 <printer::vprintf(int, char const*, __va_list_tag*)+0x6d6>
            } else if (flags & FLAG_PLUSPOSITIVE) {
                prefix = "+";
            } else if (flags & FLAG_SPACEPOSITIVE) {
                prefix = " ";
            }
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   442b4:	44 89 e8             	mov    %r13d,%eax
   442b7:	83 e0 21             	and    $0x21,%eax
        const char* prefix = "";
   442ba:	48 c7 45 a8 74 52 04 	movq   $0x45274,-0x58(%rbp)
   442c1:	00 
        } else if ((flags & FLAG_NUMERIC) && (flags & FLAG_ALT)
   442c2:	83 f8 21             	cmp    $0x21,%eax
   442c5:	0f 84 66 04 00 00    	je     44731 <printer::vprintf(int, char const*, __va_list_tag*)+0x715>
                   && (num || (flags & FLAG_ALT2))) {
            prefix = (base == -16 ? "0x" : "0X");
        }

        int datalen;
        if (precision >= 0 && !(flags & FLAG_NUMERIC)) {
   442cb:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   442ce:	89 c8                	mov    %ecx,%eax
   442d0:	f7 d0                	not    %eax
   442d2:	c1 e8 1f             	shr    $0x1f,%eax
   442d5:	89 45 88             	mov    %eax,-0x78(%rbp)
   442d8:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   442dc:	0f 85 8b 04 00 00    	jne    4476d <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
   442e2:	84 c0                	test   %al,%al
   442e4:	0f 84 83 04 00 00    	je     4476d <printer::vprintf(int, char const*, __va_list_tag*)+0x751>
            datalen = strnlen(data, precision);
   442ea:	48 63 f1             	movslq %ecx,%rsi
   442ed:	48 89 df             	mov    %rbx,%rdi
   442f0:	e8 89 fc ff ff       	callq  43f7e <strnlen>
   442f5:	89 45 a0             	mov    %eax,-0x60(%rbp)
        if ((flags & FLAG_NUMERIC)
            && precision >= 0) {
            zeros = precision > datalen ? precision - datalen : 0;
        } else if ((flags & FLAG_NUMERIC)
                   && (flags & FLAG_ZERO)
                   && !(flags & FLAG_LEFTJUSTIFY)
   442f8:	8b 45 8c             	mov    -0x74(%rbp),%eax
   442fb:	83 e0 26             	and    $0x26,%eax
                   && datalen + (int) strlen(prefix) < width) {
            zeros = width - datalen - strlen(prefix);
        } else {
            zeros = 0;
   442fe:	c7 45 a4 00 00 00 00 	movl   $0x0,-0x5c(%rbp)
                   && datalen + (int) strlen(prefix) < width) {
   44305:	83 f8 22             	cmp    $0x22,%eax
   44308:	0f 84 97 04 00 00    	je     447a5 <printer::vprintf(int, char const*, __va_list_tag*)+0x789>
        }

        width -= datalen + zeros + strlen(prefix);
   4430e:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   44312:	e8 48 fc ff ff       	callq  43f5f <strlen>
   44317:	8b 55 a4             	mov    -0x5c(%rbp),%edx
   4431a:	03 55 a0             	add    -0x60(%rbp),%edx
   4431d:	8b 7d 98             	mov    -0x68(%rbp),%edi
   44320:	29 d7                	sub    %edx,%edi
   44322:	89 fa                	mov    %edi,%edx
   44324:	29 c2                	sub    %eax,%edx
   44326:	89 55 98             	mov    %edx,-0x68(%rbp)
   44329:	89 55 9c             	mov    %edx,-0x64(%rbp)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   4432c:	41 f6 c5 04          	test   $0x4,%r13b
   44330:	75 32                	jne    44364 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
        width -= datalen + zeros + strlen(prefix);
   44332:	41 89 d5             	mov    %edx,%r13d
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   44335:	85 d2                	test   %edx,%edx
   44337:	7e 2b                	jle    44364 <printer::vprintf(int, char const*, __va_list_tag*)+0x348>
            putc(' ', color);
   44339:	49 8b 06             	mov    (%r14),%rax
   4433c:	44 89 fa             	mov    %r15d,%edx
   4433f:	be 20 00 00 00       	mov    $0x20,%esi
   44344:	4c 89 f7             	mov    %r14,%rdi
   44347:	ff 10                	callq  *(%rax)
        for (; !(flags & FLAG_LEFTJUSTIFY) && width > 0; --width) {
   44349:	41 83 ed 01          	sub    $0x1,%r13d
   4434d:	45 85 ed             	test   %r13d,%r13d
   44350:	7f e7                	jg     44339 <printer::vprintf(int, char const*, __va_list_tag*)+0x31d>
   44352:	8b 7d 98             	mov    -0x68(%rbp),%edi
   44355:	85 ff                	test   %edi,%edi
   44357:	b8 01 00 00 00       	mov    $0x1,%eax
   4435c:	0f 4f c7             	cmovg  %edi,%eax
   4435f:	29 c7                	sub    %eax,%edi
   44361:	89 7d 9c             	mov    %edi,-0x64(%rbp)
        }
        for (; *prefix; ++prefix) {
   44364:	48 8b 45 a8          	mov    -0x58(%rbp),%rax
   44368:	0f b6 00             	movzbl (%rax),%eax
   4436b:	4c 8b 6d a8          	mov    -0x58(%rbp),%r13
   4436f:	84 c0                	test   %al,%al
   44371:	74 1b                	je     4438e <printer::vprintf(int, char const*, __va_list_tag*)+0x372>
            putc(*prefix, color);
   44373:	0f b6 f0             	movzbl %al,%esi
   44376:	49 8b 06             	mov    (%r14),%rax
   44379:	44 89 fa             	mov    %r15d,%edx
   4437c:	4c 89 f7             	mov    %r14,%rdi
   4437f:	ff 10                	callq  *(%rax)
        for (; *prefix; ++prefix) {
   44381:	49 83 c5 01          	add    $0x1,%r13
   44385:	41 0f b6 45 00       	movzbl 0x0(%r13),%eax
   4438a:	84 c0                	test   %al,%al
   4438c:	75 e5                	jne    44373 <printer::vprintf(int, char const*, __va_list_tag*)+0x357>
        }
        for (; zeros > 0; --zeros) {
   4438e:	44 8b 6d a4          	mov    -0x5c(%rbp),%r13d
   44392:	83 7d a4 00          	cmpl   $0x0,-0x5c(%rbp)
   44396:	7e 16                	jle    443ae <printer::vprintf(int, char const*, __va_list_tag*)+0x392>
            putc('0', color);
   44398:	49 8b 06             	mov    (%r14),%rax
   4439b:	44 89 fa             	mov    %r15d,%edx
   4439e:	be 30 00 00 00       	mov    $0x30,%esi
   443a3:	4c 89 f7             	mov    %r14,%rdi
   443a6:	ff 10                	callq  *(%rax)
        for (; zeros > 0; --zeros) {
   443a8:	41 83 ed 01          	sub    $0x1,%r13d
   443ac:	75 ea                	jne    44398 <printer::vprintf(int, char const*, __va_list_tag*)+0x37c>
        }
        for (; datalen > 0; ++data, --datalen) {
   443ae:	83 7d a0 00          	cmpl   $0x0,-0x60(%rbp)
   443b2:	7e 22                	jle    443d6 <printer::vprintf(int, char const*, __va_list_tag*)+0x3ba>
   443b4:	8b 45 a0             	mov    -0x60(%rbp),%eax
   443b7:	8d 40 ff             	lea    -0x1(%rax),%eax
   443ba:	4c 8d 6c 03 01       	lea    0x1(%rbx,%rax,1),%r13
            putc(*data, color);
   443bf:	0f b6 33             	movzbl (%rbx),%esi
   443c2:	49 8b 06             	mov    (%r14),%rax
   443c5:	44 89 fa             	mov    %r15d,%edx
   443c8:	4c 89 f7             	mov    %r14,%rdi
   443cb:	ff 10                	callq  *(%rax)
        for (; datalen > 0; ++data, --datalen) {
   443cd:	48 83 c3 01          	add    $0x1,%rbx
   443d1:	4c 39 eb             	cmp    %r13,%rbx
   443d4:	75 e9                	jne    443bf <printer::vprintf(int, char const*, __va_list_tag*)+0x3a3>
        }
        for (; width > 0; --width) {
   443d6:	8b 5d 9c             	mov    -0x64(%rbp),%ebx
   443d9:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   443dd:	7e 15                	jle    443f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            putc(' ', color);
   443df:	49 8b 06             	mov    (%r14),%rax
   443e2:	44 89 fa             	mov    %r15d,%edx
   443e5:	be 20 00 00 00       	mov    $0x20,%esi
   443ea:	4c 89 f7             	mov    %r14,%rdi
   443ed:	ff 10                	callq  *(%rax)
        for (; width > 0; --width) {
   443ef:	83 eb 01             	sub    $0x1,%ebx
   443f2:	75 eb                	jne    443df <printer::vprintf(int, char const*, __va_list_tag*)+0x3c3>
    for (; *format; ++format) {
   443f4:	49 8d 5c 24 01       	lea    0x1(%r12),%rbx
   443f9:	41 0f b6 44 24 01    	movzbl 0x1(%r12),%eax
   443ff:	84 c0                	test   %al,%al
   44401:	0f 84 ff 03 00 00    	je     44806 <printer::vprintf(int, char const*, __va_list_tag*)+0x7ea>
        if (*format != '%') {
   44407:	3c 25                	cmp    $0x25,%al
   44409:	0f 84 3f fc ff ff    	je     4404e <printer::vprintf(int, char const*, __va_list_tag*)+0x32>
            putc(*format, color);
   4440f:	0f b6 f0             	movzbl %al,%esi
   44412:	49 8b 06             	mov    (%r14),%rax
   44415:	44 89 fa             	mov    %r15d,%edx
   44418:	4c 89 f7             	mov    %r14,%rdi
   4441b:	ff 10                	callq  *(%rax)
            continue;
   4441d:	49 89 dc             	mov    %rbx,%r12
   44420:	eb d2                	jmp    443f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
            long x = length ? va_arg(val, long) : va_arg(val, int);
   44422:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44426:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   4442a:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4442e:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44432:	e9 2d fe ff ff       	jmpq   44264 <printer::vprintf(int, char const*, __va_list_tag*)+0x248>
        switch (*format) {
   44437:	49 89 cc             	mov    %rcx,%r12
            long x = length ? va_arg(val, long) : va_arg(val, int);
   4443a:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4443e:	8b 01                	mov    (%rcx),%eax
   44440:	83 f8 2f             	cmp    $0x2f,%eax
   44443:	77 13                	ja     44458 <printer::vprintf(int, char const*, __va_list_tag*)+0x43c>
   44445:	89 c2                	mov    %eax,%edx
   44447:	48 03 51 10          	add    0x10(%rcx),%rdx
   4444b:	83 c0 08             	add    $0x8,%eax
   4444e:	89 01                	mov    %eax,(%rcx)
   44450:	48 63 12             	movslq (%rdx),%rdx
   44453:	e9 12 fe ff ff       	jmpq   4426a <printer::vprintf(int, char const*, __va_list_tag*)+0x24e>
   44458:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4445c:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   44460:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44464:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44468:	eb e6                	jmp    44450 <printer::vprintf(int, char const*, __va_list_tag*)+0x434>
        switch (*format) {
   4446a:	49 89 cc             	mov    %rcx,%r12
   4446d:	b8 01 00 00 00       	mov    $0x1,%eax
   44472:	be 0a 00 00 00       	mov    $0xa,%esi
   44477:	e9 a8 00 00 00       	jmpq   44524 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   4447c:	49 89 cc             	mov    %rcx,%r12
   4447f:	b8 00 00 00 00       	mov    $0x0,%eax
   44484:	be 0a 00 00 00       	mov    $0xa,%esi
   44489:	e9 96 00 00 00       	jmpq   44524 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   4448e:	b8 00 00 00 00       	mov    $0x0,%eax
   44493:	be 0a 00 00 00       	mov    $0xa,%esi
   44498:	e9 87 00 00 00       	jmpq   44524 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
   4449d:	b8 00 00 00 00       	mov    $0x0,%eax
   444a2:	be 0a 00 00 00       	mov    $0xa,%esi
   444a7:	eb 7b                	jmp    44524 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   444a9:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   444ad:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   444b1:	48 8d 42 08          	lea    0x8(%rdx),%rax
   444b5:	48 89 47 08          	mov    %rax,0x8(%rdi)
   444b9:	e9 84 00 00 00       	jmpq   44542 <printer::vprintf(int, char const*, __va_list_tag*)+0x526>
   444be:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   444c2:	8b 01                	mov    (%rcx),%eax
   444c4:	83 f8 2f             	cmp    $0x2f,%eax
   444c7:	77 10                	ja     444d9 <printer::vprintf(int, char const*, __va_list_tag*)+0x4bd>
   444c9:	89 c2                	mov    %eax,%edx
   444cb:	48 03 51 10          	add    0x10(%rcx),%rdx
   444cf:	83 c0 08             	add    $0x8,%eax
   444d2:	89 01                	mov    %eax,(%rcx)
   444d4:	44 8b 02             	mov    (%rdx),%r8d
   444d7:	eb 6c                	jmp    44545 <printer::vprintf(int, char const*, __va_list_tag*)+0x529>
   444d9:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   444dd:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   444e1:	48 8d 42 08          	lea    0x8(%rdx),%rax
   444e5:	48 89 41 08          	mov    %rax,0x8(%rcx)
   444e9:	eb e9                	jmp    444d4 <printer::vprintf(int, char const*, __va_list_tag*)+0x4b8>
   444eb:	41 89 f1             	mov    %esi,%r9d
        if (flags & FLAG_NUMERIC) {
   444ee:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
    const char* digits = upper_digits;
   444f5:	bf 40 5a 04 00       	mov    $0x45a40,%edi
   444fa:	e9 c0 01 00 00       	jmpq   446bf <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   444ff:	49 89 cc             	mov    %rcx,%r12
   44502:	b8 01 00 00 00       	mov    $0x1,%eax
   44507:	eb 16                	jmp    4451f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   44509:	49 89 cc             	mov    %rcx,%r12
   4450c:	b8 00 00 00 00       	mov    $0x0,%eax
   44511:	eb 0c                	jmp    4451f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
        switch (*format) {
   44513:	b8 00 00 00 00       	mov    $0x0,%eax
   44518:	eb 05                	jmp    4451f <printer::vprintf(int, char const*, __va_list_tag*)+0x503>
   4451a:	b8 00 00 00 00       	mov    $0x0,%eax
            base = -16;
   4451f:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
            num = length ? va_arg(val, unsigned long) : va_arg(val, unsigned);
   44524:	85 c0                	test   %eax,%eax
   44526:	74 96                	je     444be <printer::vprintf(int, char const*, __va_list_tag*)+0x4a2>
   44528:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4452c:	8b 01                	mov    (%rcx),%eax
   4452e:	83 f8 2f             	cmp    $0x2f,%eax
   44531:	0f 87 72 ff ff ff    	ja     444a9 <printer::vprintf(int, char const*, __va_list_tag*)+0x48d>
   44537:	89 c2                	mov    %eax,%edx
   44539:	48 03 51 10          	add    0x10(%rcx),%rdx
   4453d:	83 c0 08             	add    $0x8,%eax
   44540:	89 01                	mov    %eax,(%rcx)
   44542:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_NUMERIC;
   44545:	41 83 cd 20          	or     $0x20,%r13d
    if (base < 0) {
   44549:	85 f6                	test   %esi,%esi
   4454b:	79 9e                	jns    444eb <printer::vprintf(int, char const*, __va_list_tag*)+0x4cf>
        base = -base;
   4454d:	41 89 f1             	mov    %esi,%r9d
   44550:	f7 de                	neg    %esi
   44552:	c7 45 9c 20 00 00 00 	movl   $0x20,-0x64(%rbp)
        digits = lower_digits;
   44559:	bf 20 5a 04 00       	mov    $0x45a20,%edi
   4455e:	e9 5c 01 00 00       	jmpq   446bf <printer::vprintf(int, char const*, __va_list_tag*)+0x6a3>
        switch (*format) {
   44563:	49 89 cc             	mov    %rcx,%r12
   44566:	b8 01 00 00 00       	mov    $0x1,%eax
   4456b:	eb 16                	jmp    44583 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   4456d:	49 89 cc             	mov    %rcx,%r12
   44570:	b8 00 00 00 00       	mov    $0x0,%eax
   44575:	eb 0c                	jmp    44583 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
        switch (*format) {
   44577:	b8 00 00 00 00       	mov    $0x0,%eax
   4457c:	eb 05                	jmp    44583 <printer::vprintf(int, char const*, __va_list_tag*)+0x567>
   4457e:	b8 00 00 00 00       	mov    $0x0,%eax
            base = 16;
   44583:	be 10 00 00 00       	mov    $0x10,%esi
            goto format_unsigned;
   44588:	eb 9a                	jmp    44524 <printer::vprintf(int, char const*, __va_list_tag*)+0x508>
        switch (*format) {
   4458a:	49 89 cc             	mov    %rcx,%r12
            num = (uintptr_t) va_arg(val, void*);
   4458d:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44591:	8b 01                	mov    (%rcx),%eax
   44593:	83 f8 2f             	cmp    $0x2f,%eax
   44596:	77 21                	ja     445b9 <printer::vprintf(int, char const*, __va_list_tag*)+0x59d>
   44598:	89 c2                	mov    %eax,%edx
   4459a:	48 03 51 10          	add    0x10(%rcx),%rdx
   4459e:	83 c0 08             	add    $0x8,%eax
   445a1:	89 01                	mov    %eax,(%rcx)
   445a3:	4c 8b 02             	mov    (%rdx),%r8
            flags |= FLAG_ALT | FLAG_ALT2 | FLAG_NUMERIC;
   445a6:	41 81 cd 21 01 00 00 	or     $0x121,%r13d
            base = -16;
   445ad:	be f0 ff ff ff       	mov    $0xfffffff0,%esi
   445b2:	eb 99                	jmp    4454d <printer::vprintf(int, char const*, __va_list_tag*)+0x531>
        switch (*format) {
   445b4:	49 89 cc             	mov    %rcx,%r12
   445b7:	eb d4                	jmp    4458d <printer::vprintf(int, char const*, __va_list_tag*)+0x571>
            num = (uintptr_t) va_arg(val, void*);
   445b9:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   445bd:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   445c1:	48 8d 42 08          	lea    0x8(%rdx),%rax
   445c5:	48 89 47 08          	mov    %rax,0x8(%rdi)
   445c9:	eb d8                	jmp    445a3 <printer::vprintf(int, char const*, __va_list_tag*)+0x587>
        switch (*format) {
   445cb:	49 89 cc             	mov    %rcx,%r12
            data = va_arg(val, char*);
   445ce:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   445d2:	8b 07                	mov    (%rdi),%eax
   445d4:	83 f8 2f             	cmp    $0x2f,%eax
   445d7:	77 1e                	ja     445f7 <printer::vprintf(int, char const*, __va_list_tag*)+0x5db>
   445d9:	89 c2                	mov    %eax,%edx
   445db:	48 03 57 10          	add    0x10(%rdi),%rdx
   445df:	83 c0 08             	add    $0x8,%eax
   445e2:	89 07                	mov    %eax,(%rdi)
   445e4:	48 8b 1a             	mov    (%rdx),%rbx
        unsigned long num = 0;
   445e7:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   445ed:	e9 9a fc ff ff       	jmpq   4428c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   445f2:	49 89 cc             	mov    %rcx,%r12
   445f5:	eb d7                	jmp    445ce <printer::vprintf(int, char const*, __va_list_tag*)+0x5b2>
            data = va_arg(val, char*);
   445f7:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   445fb:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   445ff:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44603:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44607:	eb db                	jmp    445e4 <printer::vprintf(int, char const*, __va_list_tag*)+0x5c8>
        switch (*format) {
   44609:	49 89 cc             	mov    %rcx,%r12
            color = va_arg(val, int);
   4460c:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   44610:	8b 01                	mov    (%rcx),%eax
   44612:	83 f8 2f             	cmp    $0x2f,%eax
   44615:	77 18                	ja     4462f <printer::vprintf(int, char const*, __va_list_tag*)+0x613>
   44617:	89 c2                	mov    %eax,%edx
   44619:	48 03 51 10          	add    0x10(%rcx),%rdx
   4461d:	83 c0 08             	add    $0x8,%eax
   44620:	89 01                	mov    %eax,(%rcx)
   44622:	44 8b 3a             	mov    (%rdx),%r15d
            continue;
   44625:	e9 ca fd ff ff       	jmpq   443f4 <printer::vprintf(int, char const*, __va_list_tag*)+0x3d8>
        switch (*format) {
   4462a:	49 89 cc             	mov    %rcx,%r12
   4462d:	eb dd                	jmp    4460c <printer::vprintf(int, char const*, __va_list_tag*)+0x5f0>
            color = va_arg(val, int);
   4462f:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44633:	48 8b 57 08          	mov    0x8(%rdi),%rdx
   44637:	48 8d 42 08          	lea    0x8(%rdx),%rax
   4463b:	48 89 47 08          	mov    %rax,0x8(%rdi)
   4463f:	eb e1                	jmp    44622 <printer::vprintf(int, char const*, __va_list_tag*)+0x606>
        switch (*format) {
   44641:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = va_arg(val, int);
   44644:	48 8b 7d 90          	mov    -0x70(%rbp),%rdi
   44648:	8b 07                	mov    (%rdi),%eax
   4464a:	83 f8 2f             	cmp    $0x2f,%eax
   4464d:	77 28                	ja     44677 <printer::vprintf(int, char const*, __va_list_tag*)+0x65b>
   4464f:	89 c2                	mov    %eax,%edx
   44651:	48 03 57 10          	add    0x10(%rdi),%rdx
   44655:	83 c0 08             	add    $0x8,%eax
   44658:	89 07                	mov    %eax,(%rdi)
   4465a:	8b 02                	mov    (%rdx),%eax
   4465c:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   4465f:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   44663:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   44667:	41 b8 00 00 00 00    	mov    $0x0,%r8d
            break;
   4466d:	e9 1a fc ff ff       	jmpq   4428c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        switch (*format) {
   44672:	49 89 cc             	mov    %rcx,%r12
   44675:	eb cd                	jmp    44644 <printer::vprintf(int, char const*, __va_list_tag*)+0x628>
            numbuf[0] = va_arg(val, int);
   44677:	48 8b 4d 90          	mov    -0x70(%rbp),%rcx
   4467b:	48 8b 51 08          	mov    0x8(%rcx),%rdx
   4467f:	48 8d 42 08          	lea    0x8(%rdx),%rax
   44683:	48 89 41 08          	mov    %rax,0x8(%rcx)
   44687:	eb d1                	jmp    4465a <printer::vprintf(int, char const*, __va_list_tag*)+0x63e>
        switch (*format) {
   44689:	4c 89 e1             	mov    %r12,%rcx
            numbuf[0] = (*format ? *format : '%');
   4468c:	84 c0                	test   %al,%al
   4468e:	0f 85 3b 01 00 00    	jne    447cf <printer::vprintf(int, char const*, __va_list_tag*)+0x7b3>
   44694:	c6 45 b8 25          	movb   $0x25,-0x48(%rbp)
            numbuf[1] = '\0';
   44698:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
                format--;
   4469c:	4c 8d 61 ff          	lea    -0x1(%rcx),%r12
            data = numbuf;
   446a0:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   446a4:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   446aa:	e9 dd fb ff ff       	jmpq   4428c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        if (flags & FLAG_NUMERIC) {
   446af:	41 b9 0a 00 00 00    	mov    $0xa,%r9d
    const char* digits = upper_digits;
   446b5:	bf 40 5a 04 00       	mov    $0x45a40,%edi
        if (flags & FLAG_NUMERIC) {
   446ba:	be 0a 00 00 00       	mov    $0xa,%esi
    *--numbuf_end = '\0';
   446bf:	c6 45 cf 00          	movb   $0x0,-0x31(%rbp)
   446c3:	4c 89 c1             	mov    %r8,%rcx
   446c6:	48 8d 5d cf          	lea    -0x31(%rbp),%rbx
        *--numbuf_end = digits[val % base];
   446ca:	48 63 f6             	movslq %esi,%rsi
   446cd:	48 83 eb 01          	sub    $0x1,%rbx
   446d1:	48 89 c8             	mov    %rcx,%rax
   446d4:	ba 00 00 00 00       	mov    $0x0,%edx
   446d9:	48 f7 f6             	div    %rsi
   446dc:	0f b6 14 17          	movzbl (%rdi,%rdx,1),%edx
   446e0:	88 13                	mov    %dl,(%rbx)
        val /= base;
   446e2:	48 89 ca             	mov    %rcx,%rdx
   446e5:	48 89 c1             	mov    %rax,%rcx
    } while (val != 0);
   446e8:	48 39 d6             	cmp    %rdx,%rsi
   446eb:	76 e0                	jbe    446cd <printer::vprintf(int, char const*, __va_list_tag*)+0x6b1>
   446ed:	e9 af fb ff ff       	jmpq   442a1 <printer::vprintf(int, char const*, __va_list_tag*)+0x285>
                prefix = "-";
   446f2:	48 c7 45 a8 3d 53 04 	movq   $0x4533d,-0x58(%rbp)
   446f9:	00 
            if (flags & FLAG_NEGATIVE) {
   446fa:	41 f6 c5 80          	test   $0x80,%r13b
   446fe:	0f 85 c7 fb ff ff    	jne    442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = "+";
   44704:	48 c7 45 a8 3b 53 04 	movq   $0x4533b,-0x58(%rbp)
   4470b:	00 
            } else if (flags & FLAG_PLUSPOSITIVE) {
   4470c:	41 f6 c5 10          	test   $0x10,%r13b
   44710:	0f 85 b5 fb ff ff    	jne    442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                prefix = " ";
   44716:	41 f6 c5 08          	test   $0x8,%r13b
   4471a:	ba 74 52 04 00       	mov    $0x45274,%edx
   4471f:	b8 16 50 04 00       	mov    $0x45016,%eax
   44724:	48 0f 44 c2          	cmove  %rdx,%rax
   44728:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   4472c:	e9 9a fb ff ff       	jmpq   442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (base == 16 || base == -16)
   44731:	41 8d 41 10          	lea    0x10(%r9),%eax
   44735:	a9 df ff ff ff       	test   $0xffffffdf,%eax
   4473a:	0f 85 8b fb ff ff    	jne    442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
                   && (num || (flags & FLAG_ALT2))) {
   44740:	4d 85 c0             	test   %r8,%r8
   44743:	75 0d                	jne    44752 <printer::vprintf(int, char const*, __va_list_tag*)+0x736>
   44745:	41 f7 c5 00 01 00 00 	test   $0x100,%r13d
   4474c:	0f 84 79 fb ff ff    	je     442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            prefix = (base == -16 ? "0x" : "0X");
   44752:	41 83 f9 f0          	cmp    $0xfffffff0,%r9d
   44756:	ba 38 53 04 00       	mov    $0x45338,%edx
   4475b:	b8 3f 53 04 00       	mov    $0x4533f,%eax
   44760:	48 0f 44 c2          	cmove  %rdx,%rax
   44764:	48 89 45 a8          	mov    %rax,-0x58(%rbp)
   44768:	e9 5e fb ff ff       	jmpq   442cb <printer::vprintf(int, char const*, __va_list_tag*)+0x2af>
            datalen = strlen(data);
   4476d:	48 89 df             	mov    %rbx,%rdi
   44770:	e8 ea f7 ff ff       	callq  43f5f <strlen>
   44775:	89 45 a0             	mov    %eax,-0x60(%rbp)
            && precision >= 0) {
   44778:	83 7d 9c 00          	cmpl   $0x0,-0x64(%rbp)
   4477c:	0f 84 76 fb ff ff    	je     442f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
   44782:	80 7d 88 00          	cmpb   $0x0,-0x78(%rbp)
   44786:	0f 84 6c fb ff ff    	je     442f8 <printer::vprintf(int, char const*, __va_list_tag*)+0x2dc>
            zeros = precision > datalen ? precision - datalen : 0;
   4478c:	8b 4d a4             	mov    -0x5c(%rbp),%ecx
   4478f:	89 ca                	mov    %ecx,%edx
   44791:	29 c2                	sub    %eax,%edx
   44793:	39 c1                	cmp    %eax,%ecx
   44795:	b8 00 00 00 00       	mov    $0x0,%eax
   4479a:	0f 4f c2             	cmovg  %edx,%eax
   4479d:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   447a0:	e9 69 fb ff ff       	jmpq   4430e <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
                   && datalen + (int) strlen(prefix) < width) {
   447a5:	48 8b 7d a8          	mov    -0x58(%rbp),%rdi
   447a9:	e8 b1 f7 ff ff       	callq  43f5f <strlen>
   447ae:	8b 75 a0             	mov    -0x60(%rbp),%esi
   447b1:	8d 14 06             	lea    (%rsi,%rax,1),%edx
            zeros = width - datalen - strlen(prefix);
   447b4:	8b 7d 98             	mov    -0x68(%rbp),%edi
   447b7:	89 f9                	mov    %edi,%ecx
   447b9:	29 f1                	sub    %esi,%ecx
   447bb:	29 c1                	sub    %eax,%ecx
   447bd:	39 fa                	cmp    %edi,%edx
   447bf:	b8 00 00 00 00       	mov    $0x0,%eax
   447c4:	0f 4c c1             	cmovl  %ecx,%eax
   447c7:	89 45 a4             	mov    %eax,-0x5c(%rbp)
   447ca:	e9 3f fb ff ff       	jmpq   4430e <printer::vprintf(int, char const*, __va_list_tag*)+0x2f2>
   447cf:	49 89 cc             	mov    %rcx,%r12
            numbuf[0] = (*format ? *format : '%');
   447d2:	88 45 b8             	mov    %al,-0x48(%rbp)
            numbuf[1] = '\0';
   447d5:	c6 45 b9 00          	movb   $0x0,-0x47(%rbp)
            data = numbuf;
   447d9:	48 8d 5d b8          	lea    -0x48(%rbp),%rbx
        unsigned long num = 0;
   447dd:	41 b8 00 00 00 00    	mov    $0x0,%r8d
   447e3:	e9 a4 fa ff ff       	jmpq   4428c <printer::vprintf(int, char const*, __va_list_tag*)+0x270>
        int flags = 0;
   447e8:	41 bd 00 00 00 00    	mov    $0x0,%r13d
   447ee:	e9 a4 f8 ff ff       	jmpq   44097 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b>
        switch (*format) {
   447f3:	8d 50 bd             	lea    -0x43(%rax),%edx
   447f6:	80 fa 35             	cmp    $0x35,%dl
   447f9:	77 d7                	ja     447d2 <printer::vprintf(int, char const*, __va_list_tag*)+0x7b6>
   447fb:	0f b6 d2             	movzbl %dl,%edx
   447fe:	3e ff 24 d5 60 58 04 	notrack jmpq *0x45860(,%rdx,8)
   44805:	00 
        }
    }
}
   44806:	48 83 c4 58          	add    $0x58,%rsp
   4480a:	5b                   	pop    %rbx
   4480b:	41 5c                	pop    %r12
   4480d:	41 5d                	pop    %r13
   4480f:	41 5e                	pop    %r14
   44811:	41 5f                	pop    %r15
   44813:	5d                   	pop    %rbp
   44814:	c3                   	retq   

0000000000044815 <console_clear()>:


// console_clear
//    Erases the console and moves the cursor to the upper left (CPOS(0, 0)).

void console_clear() {
   44815:	f3 0f 1e fa          	endbr64 
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44819:	b8 00 80 0b 00       	mov    $0xb8000,%eax
   4481e:	ba a0 8f 0b 00       	mov    $0xb8fa0,%edx
        console[i] = ' ' | 0x0700;
   44823:	66 c7 00 20 07       	movw   $0x720,(%rax)
    for (int i = 0; i < CONSOLE_ROWS * CONSOLE_COLUMNS; ++i) {
   44828:	48 83 c0 02          	add    $0x2,%rax
   4482c:	48 39 d0             	cmp    %rdx,%rax
   4482f:	75 f2                	jne    44823 <console_clear()+0xe>
    }
    cursorpos = 0;
   44831:	c7 05 c1 47 07 00 00 	movl   $0x0,0x747c1(%rip)        # b8ffc <cursorpos>
   44838:	00 00 00 
}
   4483b:	c3                   	retq   

000000000004483c <console_printer::console_printer(int, bool)>:
    void scroll();
    void move_cursor();
};

__noinline
console_printer::console_printer(int cpos, bool scroll)
   4483c:	f3 0f 1e fa          	endbr64 
    : cell_(console), scroll_(scroll) {
   44840:	48 c7 07 c8 5a 04 00 	movq   $0x45ac8,(%rdi)
   44847:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   4484e:	00 
   4484f:	88 57 10             	mov    %dl,0x10(%rdi)
    if (cpos < 0) {
   44852:	85 f6                	test   %esi,%esi
   44854:	78 18                	js     4486e <console_printer::console_printer(int, bool)+0x32>
        cell_ += cursorpos;
    } else if (cpos <= CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44856:	81 fe d0 07 00 00    	cmp    $0x7d0,%esi
   4485c:	7f 0f                	jg     4486d <console_printer::console_printer(int, bool)+0x31>
        cell_ += cpos;
   4485e:	48 63 f6             	movslq %esi,%rsi
   44861:	48 8d 84 36 00 80 0b 	lea    0xb8000(%rsi,%rsi,1),%rax
   44868:	00 
   44869:	48 89 47 08          	mov    %rax,0x8(%rdi)
    }
}
   4486d:	c3                   	retq   
        cell_ += cursorpos;
   4486e:	8b 05 88 47 07 00    	mov    0x74788(%rip),%eax        # b8ffc <cursorpos>
   44874:	48 98                	cltq   
   44876:	48 8d 84 00 00 80 0b 	lea    0xb8000(%rax,%rax,1),%rax
   4487d:	00 
   4487e:	48 89 47 08          	mov    %rax,0x8(%rdi)
   44882:	c3                   	retq   
   44883:	90                   	nop

0000000000044884 <console_printer::scroll()>:

__noinline
void console_printer::scroll() {
   44884:	f3 0f 1e fa          	endbr64 
   44888:	55                   	push   %rbp
   44889:	48 89 e5             	mov    %rsp,%rbp
   4488c:	53                   	push   %rbx
   4488d:	48 83 ec 08          	sub    $0x8,%rsp
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   44891:	48 81 7f 08 a0 8f 0b 	cmpq   $0xb8fa0,0x8(%rdi)
   44898:	00 
   44899:	72 18                	jb     448b3 <console_printer::scroll()+0x2f>
   4489b:	48 89 fb             	mov    %rdi,%rbx
    if (scroll_) {
   4489e:	80 7f 10 00          	cmpb   $0x0,0x10(%rdi)
   448a2:	75 23                	jne    448c7 <console_printer::scroll()+0x43>
                (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS * sizeof(*console));
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
               0, CONSOLE_COLUMNS * sizeof(*console));
        cell_ -= CONSOLE_COLUMNS;
    } else {
        cell_ = console;
   448a4:	48 c7 47 08 00 80 0b 	movq   $0xb8000,0x8(%rdi)
   448ab:	00 
    }
}
   448ac:	48 83 c4 08          	add    $0x8,%rsp
   448b0:	5b                   	pop    %rbx
   448b1:	5d                   	pop    %rbp
   448b2:	c3                   	retq   
    assert(cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS);
   448b3:	ba 58 5a 04 00       	mov    $0x45a58,%edx
   448b8:	be 1f 02 00 00       	mov    $0x21f,%esi
   448bd:	bf 31 53 04 00       	mov    $0x45331,%edi
   448c2:	e8 17 df ff ff       	callq  427de <assert_fail(char const*, int, char const*)>
        memmove(console, console + CONSOLE_COLUMNS,
   448c7:	ba 00 0f 00 00       	mov    $0xf00,%edx
   448cc:	be a0 80 0b 00       	mov    $0xb80a0,%esi
   448d1:	bf 00 80 0b 00       	mov    $0xb8000,%edi
   448d6:	e8 17 f6 ff ff       	callq  43ef2 <memmove>
        memset(console + (CONSOLE_ROWS - 1) * CONSOLE_COLUMNS,
   448db:	ba a0 00 00 00       	mov    $0xa0,%edx
   448e0:	be 00 00 00 00       	mov    $0x0,%esi
   448e5:	bf 00 8f 0b 00       	mov    $0xb8f00,%edi
   448ea:	e8 50 f6 ff ff       	callq  43f3f <memset>
        cell_ -= CONSOLE_COLUMNS;
   448ef:	48 81 6b 08 a0 00 00 	subq   $0xa0,0x8(%rbx)
   448f6:	00 
   448f7:	eb b3                	jmp    448ac <console_printer::scroll()+0x28>
   448f9:	90                   	nop

00000000000448fa <console_printer::putc(unsigned char, int)>:
    extern void console_show_cursor(int);
    console_show_cursor(cursorpos);
#endif
}

inline void console_printer::putc(unsigned char c, int color) {
   448fa:	f3 0f 1e fa          	endbr64 
   448fe:	55                   	push   %rbp
   448ff:	48 89 e5             	mov    %rsp,%rbp
   44902:	41 55                	push   %r13
   44904:	41 54                	push   %r12
   44906:	53                   	push   %rbx
   44907:	48 83 ec 08          	sub    $0x8,%rsp
   4490b:	48 89 fb             	mov    %rdi,%rbx
   4490e:	41 89 f5             	mov    %esi,%r13d
   44911:	41 89 d4             	mov    %edx,%r12d
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44914:	48 8b 47 08          	mov    0x8(%rdi),%rax
   44918:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   4491e:	72 14                	jb     44934 <console_printer::putc(unsigned char, int)+0x3a>
        scroll();
   44920:	48 89 df             	mov    %rbx,%rdi
   44923:	e8 5c ff ff ff       	callq  44884 <console_printer::scroll()>
    while (cell_ >= console + CONSOLE_ROWS * CONSOLE_COLUMNS) {
   44928:	48 8b 43 08          	mov    0x8(%rbx),%rax
   4492c:	48 3d a0 8f 0b 00    	cmp    $0xb8fa0,%rax
   44932:	73 ec                	jae    44920 <console_printer::putc(unsigned char, int)+0x26>
    }
    if (c == '\n') {
   44934:	41 80 fd 0a          	cmp    $0xa,%r13b
   44938:	74 1e                	je     44958 <console_printer::putc(unsigned char, int)+0x5e>
        while (pos != 80) {
            *cell_++ = ' ' | color;
            ++pos;
        }
    } else {
        *cell_++ = c | color;
   4493a:	48 8d 50 02          	lea    0x2(%rax),%rdx
   4493e:	48 89 53 08          	mov    %rdx,0x8(%rbx)
   44942:	45 0f b6 ed          	movzbl %r13b,%r13d
   44946:	45 09 ec             	or     %r13d,%r12d
   44949:	66 44 89 20          	mov    %r12w,(%rax)
    }
}
   4494d:	48 83 c4 08          	add    $0x8,%rsp
   44951:	5b                   	pop    %rbx
   44952:	41 5c                	pop    %r12
   44954:	41 5d                	pop    %r13
   44956:	5d                   	pop    %rbp
   44957:	c3                   	retq   
        int pos = (cell_ - console) % 80;
   44958:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   4495e:	48 89 c1             	mov    %rax,%rcx
   44961:	48 89 c6             	mov    %rax,%rsi
   44964:	48 d1 fe             	sar    %rsi
   44967:	48 ba 67 66 66 66 66 	movabs $0x6666666666666667,%rdx
   4496e:	66 66 66 
   44971:	48 89 f0             	mov    %rsi,%rax
   44974:	48 f7 ea             	imul   %rdx
   44977:	48 c1 fa 05          	sar    $0x5,%rdx
   4497b:	48 89 c8             	mov    %rcx,%rax
   4497e:	48 c1 f8 3f          	sar    $0x3f,%rax
   44982:	48 29 c2             	sub    %rax,%rdx
   44985:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
   44989:	48 c1 e0 04          	shl    $0x4,%rax
   4498d:	89 f2                	mov    %esi,%edx
   4498f:	29 c2                	sub    %eax,%edx
   44991:	89 d0                	mov    %edx,%eax
            *cell_++ = ' ' | color;
   44993:	41 83 cc 20          	or     $0x20,%r12d
   44997:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
   4499b:	48 8d 71 02          	lea    0x2(%rcx),%rsi
   4499f:	48 89 73 08          	mov    %rsi,0x8(%rbx)
   449a3:	66 44 89 21          	mov    %r12w,(%rcx)
            ++pos;
   449a7:	83 c0 01             	add    $0x1,%eax
        while (pos != 80) {
   449aa:	83 f8 50             	cmp    $0x50,%eax
   449ad:	75 e8                	jne    44997 <console_printer::putc(unsigned char, int)+0x9d>
   449af:	eb 9c                	jmp    4494d <console_printer::putc(unsigned char, int)+0x53>
   449b1:	90                   	nop

00000000000449b2 <console_printer::move_cursor()>:
void console_printer::move_cursor() {
   449b2:	f3 0f 1e fa          	endbr64 
   449b6:	55                   	push   %rbp
   449b7:	48 89 e5             	mov    %rsp,%rbp
    cursorpos = cell_ - console;
   449ba:	48 8b 47 08          	mov    0x8(%rdi),%rax
   449be:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   449c4:	48 d1 f8             	sar    %rax
   449c7:	89 05 2f 46 07 00    	mov    %eax,0x7462f(%rip)        # b8ffc <cursorpos>
    console_show_cursor(cursorpos);
   449cd:	8b 3d 29 46 07 00    	mov    0x74629(%rip),%edi        # b8ffc <cursorpos>
   449d3:	e8 5a da ff ff       	callq  42432 <console_show_cursor(int)>
}
   449d8:	5d                   	pop    %rbp
   449d9:	c3                   	retq   

00000000000449da <console_vprintf(int, int, char const*, __va_list_tag*)>:

// console_vprintf, console_printf
//    Print a message onto the console, starting at the given cursor position.

__noinline
int console_vprintf(int cpos, int color, const char* format, va_list val) {
   449da:	f3 0f 1e fa          	endbr64 
   449de:	55                   	push   %rbp
   449df:	48 89 e5             	mov    %rsp,%rbp
   449e2:	41 56                	push   %r14
   449e4:	41 55                	push   %r13
   449e6:	41 54                	push   %r12
   449e8:	53                   	push   %rbx
   449e9:	48 83 ec 20          	sub    $0x20,%rsp
   449ed:	89 fb                	mov    %edi,%ebx
   449ef:	41 89 f4             	mov    %esi,%r12d
   449f2:	49 89 d5             	mov    %rdx,%r13
   449f5:	49 89 ce             	mov    %rcx,%r14
    console_printer cp(cpos, cpos < 0);
   449f8:	89 fa                	mov    %edi,%edx
   449fa:	c1 ea 1f             	shr    $0x1f,%edx
   449fd:	89 fe                	mov    %edi,%esi
   449ff:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44a03:	e8 34 fe ff ff       	callq  4483c <console_printer::console_printer(int, bool)>
    cp.vprintf(color, format, val);
   44a08:	4c 89 f1             	mov    %r14,%rcx
   44a0b:	4c 89 ea             	mov    %r13,%rdx
   44a0e:	44 89 e6             	mov    %r12d,%esi
   44a11:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44a15:	e8 02 f6 ff ff       	callq  4401c <printer::vprintf(int, char const*, __va_list_tag*)>
    if (cpos < 0) {
   44a1a:	85 db                	test   %ebx,%ebx
   44a1c:	78 1a                	js     44a38 <console_vprintf(int, int, char const*, __va_list_tag*)+0x5e>
        cp.move_cursor();
    }
    return cp.cell_ - console;
   44a1e:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
   44a22:	48 2d 00 80 0b 00    	sub    $0xb8000,%rax
   44a28:	48 d1 f8             	sar    %rax
}
   44a2b:	48 83 c4 20          	add    $0x20,%rsp
   44a2f:	5b                   	pop    %rbx
   44a30:	41 5c                	pop    %r12
   44a32:	41 5d                	pop    %r13
   44a34:	41 5e                	pop    %r14
   44a36:	5d                   	pop    %rbp
   44a37:	c3                   	retq   
        cp.move_cursor();
   44a38:	48 8d 7d c8          	lea    -0x38(%rbp),%rdi
   44a3c:	e8 71 ff ff ff       	callq  449b2 <console_printer::move_cursor()>
   44a41:	eb db                	jmp    44a1e <console_vprintf(int, int, char const*, __va_list_tag*)+0x44>

0000000000044a43 <console_printf(int, int, char const*, ...)>:

__noinline
int console_printf(int cpos, int color, const char* format, ...) {
   44a43:	f3 0f 1e fa          	endbr64 
   44a47:	55                   	push   %rbp
   44a48:	48 89 e5             	mov    %rsp,%rbp
   44a4b:	48 83 ec 50          	sub    $0x50,%rsp
   44a4f:	48 89 4d e8          	mov    %rcx,-0x18(%rbp)
   44a53:	4c 89 45 f0          	mov    %r8,-0x10(%rbp)
   44a57:	4c 89 4d f8          	mov    %r9,-0x8(%rbp)
    va_list val;
    va_start(val, format);
   44a5b:	c7 45 b8 18 00 00 00 	movl   $0x18,-0x48(%rbp)
   44a62:	48 8d 45 10          	lea    0x10(%rbp),%rax
   44a66:	48 89 45 c0          	mov    %rax,-0x40(%rbp)
   44a6a:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
   44a6e:	48 89 45 c8          	mov    %rax,-0x38(%rbp)
    cpos = console_vprintf(cpos, color, format, val);
   44a72:	48 8d 4d b8          	lea    -0x48(%rbp),%rcx
   44a76:	e8 5f ff ff ff       	callq  449da <console_vprintf(int, int, char const*, __va_list_tag*)>
    va_end(val);
    return cpos;
}
   44a7b:	c9                   	leaveq 
   44a7c:	c3                   	retq   
