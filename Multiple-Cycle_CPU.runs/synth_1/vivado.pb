
y
Command: %s
53*	vivadotcl2H
4synth_design -top cpu_display -part xc7a200tfbg676-22default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a200t2default:defaultZ17-349h px? 
W
Loading part %s157*device2$
xc7a200tfbg676-22default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:03 ; elapsed = 00:00:03 . Memory (MB): peak = 845.430 ; gain = 177.113
2default:defaulth px? 
?
synthesizing module '%s'%s4497*oasys2
cpu_display2default:default2
 2default:default2y
cD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/cpu_display.v2default:default2
22default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
BUFGCE2default:default2
 2default:default2K
5D:/Xilinx/Vivado/2019.1/scripts/rt/data/unisim_comp.v2default:default2
10852default:default8@Z8-6157h px? 
^
%s
*synth2F
2	Parameter CE_TYPE bound to: SYNC - type: string 
2default:defaulth p
x
? 
V
%s
*synth2>
*	Parameter IS_CE_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
U
%s
*synth2=
)	Parameter IS_I_INVERTED bound to: 1'b0 
2default:defaulth p
x
? 
g
%s
*synth2O
;	Parameter SIM_DEVICE bound to: ULTRASCALE - type: string 
2default:defaulth p
x
? 
d
%s
*synth2L
8	Parameter STARTUP_SYNC bound to: FALSE - type: string 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
BUFGCE2default:default2
 2default:default2
12default:default2
12default:default2K
5D:/Xilinx/Vivado/2019.1/scripts/rt/data/unisim_comp.v2default:default2
10852default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
cpu2default:default2
 2default:default2q
[D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/cpu.v2default:default2
32default:default8@Z8-6157h px? 
?
synthesizing module '%s'%s4497*oasys2
alu2default:default2
 2default:default2q
[D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/alu.v2default:default2
32default:default8@Z8-6157h px? 
Q
%s
*synth29
%	Parameter i_add bound to: 5'b00001 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_sub bound to: 5'b00010 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_and bound to: 5'b00011 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter i_or bound to: 5'b00100 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_xor bound to: 5'b00101 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_sll bound to: 5'b00110 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_srl bound to: 5'b00111 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_sra bound to: 5'b01000 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter i_lw bound to: 5'b01001 
2default:defaulth p
x
? 
P
%s
*synth28
$	Parameter i_sw bound to: 5'b01010 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_beq bound to: 5'b01011 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_bne bound to: 5'b01100 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter i_addi bound to: 5'b01101 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter i_andi bound to: 5'b01110 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_ori bound to: 5'b01111 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter i_xori bound to: 5'b10000 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter i_lui bound to: 5'b10001 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2default:default2
 2default:default2
22default:default2
12default:default2q
[D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/alu.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2 
control_unit2default:default2
 2default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/control_unit.v2default:default2
32default:default8@Z8-6157h px? 
R
%s
*synth2:
&	Parameter if_state bound to: 3'b000 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter id_state bound to: 3'b001 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter exe_state bound to: 3'b010 
2default:defaulth p
x
? 
S
%s
*synth2;
'	Parameter mem_state bound to: 3'b011 
2default:defaulth p
x
? 
R
%s
*synth2:
&	Parameter wb_state bound to: 3'b100 
2default:defaulth p
x
? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
control_unit2default:default2
 2default:default2
32default:default2
12default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/control_unit.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
reg322default:default2
 2default:default2s
]D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/reg32.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
reg322default:default2
 2default:default2
42default:default2
12default:default2s
]D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/reg32.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux2_32b2default:default2
 2default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_32b2default:default2
 2default:default2
52default:default2
12default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux2_5b2default:default2
 2default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
92default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_5b2default:default2
 2default:default2
62default:default2
12default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
92default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
mux4_32b2default:default2
 2default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
152default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux4_32b2default:default2
 2default:default2
72default:default2
12default:default2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/multiplexers.v2default:default2
152default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2!
register_file2default:default2
 2default:default2{
eD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/register_file.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
register_file2default:default2
 2default:default2
82default:default2
12default:default2{
eD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/register_file.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2
memory2default:default2
 2default:default2t
^D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/memory.v2default:default2
32default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
memory2default:default2
 2default:default2
92default:default2
12default:default2t
^D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/memory.v2default:default2
32default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu2default:default2
 2default:default2
102default:default2
12default:default2q
[D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/cpu.v2default:default2
32default:default8@Z8-6155h px? 
?
synthesizing module '%s'%s4497*oasys2

lcd_module2default:default2
 2default:default2?
?D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.runs/synth_1/.Xil/Vivado-25092-DESKTOP-Q2GL8O7/realtime/lcd_module_stub.v2default:default2
62default:default8@Z8-6157h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

lcd_module2default:default2
 2default:default2
112default:default2
12default:default2?
?D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.runs/synth_1/.Xil/Vivado-25092-DESKTOP-Q2GL8O7/realtime/lcd_module_stub.v2default:default2
62default:default8@Z8-6155h px? 
?
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cpu_display2default:default2
 2default:default2
122default:default2
12default:default2y
cD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/cpu_display.v2default:default2
22default:default8@Z8-6155h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[31]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[30]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[29]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[28]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[27]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[26]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[25]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[24]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[23]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[22]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[21]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[20]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[19]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[18]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[17]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[16]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[15]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[14]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[13]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[12]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[11]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[10]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[1]2default:defaultZ8-3331h px? 
|
!design %s has unconnected port %s3331*oasys2
memory2default:default2
addr[0]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 910.363 ; gain = 242.047
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 910.363 ; gain = 242.047
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:04 ; elapsed = 00:00:04 . Memory (MB): peak = 910.363 ; gain = 242.047
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2

cpu_clk_cg2default:default2
BUFGCE2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px? 
e
-Analyzing %s Unisim elements for replacement
17*netlist2
12default:defaultZ29-17h px? 
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2

cpu_clk_cg2default:default2
BUFGCTRL2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/constrs_1/new/cpu_constr.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2z
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/constrs_1/new/cpu_constr.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2x
dD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/constrs_1/new/cpu_constr.xdc2default:default21
.Xil/cpu_display_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1040.8552default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2a
M  A total of 1 instances were transformed.
  BUFGCE => BUFGCTRL: 1 instances
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0092default:default2
1040.8552default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1040.855 ; gain = 372.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Loading part: xc7a200tfbg676-2
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1040.855 ; gain = 372.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1040.855 ; gain = 372.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
}HDL ADVISOR - The operator resource <%s> is shared. To prevent sharing consider applying a KEEP on the output of the operator4233*oasys2
adder2default:default2q
[D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/alu.v2default:default2
252default:default8@Z8-5818h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2 
control_unit2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                if_state |                            00001 |                              000
2default:defaulth p
x
? 
?
%s
*synth2s
_                id_state |                            00010 |                              001
2default:defaulth p
x
? 
?
%s
*synth2s
_               exe_state |                            00100 |                              010
2default:defaulth p
x
? 
?
%s
*synth2s
_               mem_state |                            01000 |                              011
2default:defaulth p
x
? 
?
%s
*synth2s
_                wb_state |                            10000 |                              100
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2 
control_unit2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:11 ; elapsed = 00:00:11 . Memory (MB): peak = 1040.855 ; gain = 372.539
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 39    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 43    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 66    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  36 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
@
%s
*synth2(
Module cpu_display 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               40 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  36 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
Module alu 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit         XORs := 1     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      4 Bit        Muxes := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module control_unit 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  18 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      5 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
:
%s
*synth2"
Module reg32 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module mux2_32b 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
<
%s
*synth2$
Module mux2_5b 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      5 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module mux4_32b 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
B
%s
*synth2*
Module register_file 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 32    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 38    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 62    
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2m
YPart Resources:
DSPs: 740 (col length:100)
BRAMs: 730 (col length: RAMB18 100 RAMB36 50)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
display_name_reg[7]2default:default2
FDE2default:default2(
display_name_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[12]2default:default2
FDE2default:default2(
display_name_reg[16]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[13]2default:default2
FDE2default:default2(
display_name_reg[18]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[15]2default:default2
FDE2default:default2(
display_name_reg[19]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[16]2default:default2
FDE2default:default2(
display_name_reg[26]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[18]2default:default2
FDE2default:default2(
display_name_reg[24]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[19]2default:default2
FDE2default:default2(
display_name_reg[21]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[21]2default:default2
FDE2default:default2(
display_name_reg[23]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2*
\display_name_reg[22] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[23]2default:default2
FDE2default:default2(
display_name_reg[31]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[25]2default:default2
FDE2default:default2(
display_name_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[26]2default:default2
FDE2default:default2(
display_name_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[27]2default:default2
FDE2default:default2(
display_name_reg[35]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[30]2default:default2
FDE2default:default2(
display_name_reg[38]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[31]2default:default2
FDE2default:default2(
display_name_reg[34]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[33]2default:default2
FDE2default:default2(
display_name_reg[36]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[34]2default:default2
FDE2default:default2(
display_name_reg[37]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2(
display_name_reg[37]2default:default2
FDE2default:default2(
display_name_reg[39]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2*
\display_name_reg[39] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2'
display_name_reg[6]2default:default2
FDE2default:default2(
display_name_reg[32]2default:defaultZ8-3886h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:02 ; elapsed = 00:02:03 . Memory (MB): peak = 1077.867 ; gain = 409.551
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
2
%s*synth2

ROM:
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|Module Name | RTL Object | Depth x Width | Implemented As | 
2default:defaulth px? 
i
%s*synth2Q
=+------------+------------+---------------+----------------+
2default:defaulth px? 
j
%s*synth2R
>|alu         | p_0_out    | 32x2          | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>|alu         | p_0_out    | 32x2          | LUT            | 
2default:defaulth px? 
j
%s*synth2R
>+------------+------------+---------------+----------------+

2default:defaulth px? 
k
%s*synth2S
?
Distributed RAM: Preliminary Mapping  Report (see note below)
2default:defaulth px? 
?
%s*synth2z
f+------------+--------------------------------+-----------+----------------------+------------------+
2default:defaulth px? 
?
%s*synth2{
g|Module Name | RTL Object                     | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth px? 
?
%s*synth2z
f+------------+--------------------------------+-----------+----------------------+------------------+
2default:defaulth px? 
?
%s*synth2{
g|cpu_display | CPU_for_display/MEMORY/mem_reg | Implied   | 256 x 32             | RAM256X1S x 32   | 
2default:defaulth px? 
?
%s*synth2{
g+------------+--------------------------------+-----------+----------------------+------------------+

2default:defaulth px? 
?
%s*synth2?
?Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
2default:defaulth px? 
?
%s*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth px? 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:02:08 ; elapsed = 00:02:09 . Memory (MB): peak = 1077.867 ; gain = 409.551
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:02:08 ; elapsed = 00:02:09 . Memory (MB): peak = 1077.867 ; gain = 409.551
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Start ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(
Distributed RAM: Final Mapping  Report
2default:defaulth p
x
? 
?
%s
*synth2z
f+------------+--------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
? 
?
%s
*synth2{
g|Module Name | RTL Object                     | Inference | Size (Depth x Width) | Primitives       | 
2default:defaulth p
x
? 
?
%s
*synth2z
f+------------+--------------------------------+-----------+----------------------+------------------+
2default:defaulth p
x
? 
?
%s
*synth2{
g|cpu_display | CPU_for_display/MEMORY/mem_reg | Implied   | 256 x 32             | RAM256X1S x 32   | 
2default:defaulth p
x
? 
?
%s
*synth2{
g+------------+--------------------------------+-----------+----------------------+------------------+

2default:defaulth p
x
? 
?
%s
*synth2?
?---------------------------------------------------------------------------------
Finished ROM, RAM, DSP and Shift Register Reporting
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:02:10 ; elapsed = 00:02:11 . Memory (MB): peak = 1110.574 ; gain = 442.258
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
!Found another clock driver %s:%s
3964*oasys2

cpu_clk_cg2default:default2
O2default:default2y
cD:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.srcs/sources_1/new/cpu_display.v2default:default2
322default:default8@Z8-5410h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:02:11 ; elapsed = 00:02:12 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:02:11 ; elapsed = 00:02:12 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
O
%s
*synth27
#|1     |lcd_module    |         1|
2default:defaulth p
x
? 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|      |Cell       |Count |
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
H
%s*synth20
|1     |lcd_module |     1|
2default:defaulth px? 
H
%s*synth20
|2     |BUFG       |     1|
2default:defaulth px? 
H
%s*synth20
|3     |BUFGCE     |     1|
2default:defaulth px? 
H
%s*synth20
|4     |CARRY4     |     8|
2default:defaulth px? 
H
%s*synth20
|5     |LUT1       |     1|
2default:defaulth px? 
H
%s*synth20
|6     |LUT2       |    53|
2default:defaulth px? 
H
%s*synth20
|7     |LUT3       |   222|
2default:defaulth px? 
H
%s*synth20
|8     |LUT4       |   465|
2default:defaulth px? 
H
%s*synth20
|9     |LUT5       |   549|
2default:defaulth px? 
H
%s*synth20
|10    |LUT6       |  1604|
2default:defaulth px? 
H
%s*synth20
|11    |MUXF7      |   344|
2default:defaulth px? 
H
%s*synth20
|12    |MUXF8      |    31|
2default:defaulth px? 
H
%s*synth20
|13    |RAM256X1S  |    32|
2default:defaulth px? 
H
%s*synth20
|14    |FDRE       |  1119|
2default:defaulth px? 
H
%s*synth20
|15    |FDSE       |   161|
2default:defaulth px? 
H
%s*synth20
|16    |IBUF       |     3|
2default:defaulth px? 
H
%s*synth20
|17    |OBUF       |     8|
2default:defaulth px? 
H
%s*synth20
+------+-----------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|      |Instance          |Module        |Cells |
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
^
%s
*synth2F
2|1     |top               |              |  4649|
2default:defaulth p
x
? 
^
%s
*synth2F
2|2     |  CPU_for_display |cpu           |  4506|
2default:defaulth p
x
? 
^
%s
*synth2F
2|3     |    DR            |reg32         |    32|
2default:defaulth p
x
? 
^
%s
*synth2F
2|4     |    ALU           |alu           |     9|
2default:defaulth p
x
? 
^
%s
*synth2F
2|5     |    CU            |control_unit  |    21|
2default:defaulth p
x
? 
^
%s
*synth2F
2|6     |    IR            |reg32_0       |  1926|
2default:defaulth p
x
? 
^
%s
*synth2F
2|7     |    MEMORY        |memory        |    32|
2default:defaulth p
x
? 
^
%s
*synth2F
2|8     |    PC            |reg32_1       |    69|
2default:defaulth p
x
? 
^
%s
*synth2F
2|9     |    REGA          |reg32_2       |    47|
2default:defaulth p
x
? 
^
%s
*synth2F
2|10    |    REGB          |reg32_3       |    32|
2default:defaulth p
x
? 
^
%s
*synth2F
2|11    |    REGC          |reg32_4       |    40|
2default:defaulth p
x
? 
^
%s
*synth2F
2|12    |    REG_FILE      |register_file |  2298|
2default:defaulth p
x
? 
^
%s
*synth2F
2+------+------------------+--------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 1 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:02:05 ; elapsed = 00:02:10 . Memory (MB): peak = 1115.367 ; gain = 316.559
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:02:12 ; elapsed = 00:02:13 . Memory (MB): peak = 1115.367 ; gain = 447.051
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2

cpu_clk_cg2default:default2
BUFGCE2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px? 
g
-Analyzing %s Unisim elements for replacement
17*netlist2
4162default:defaultZ29-17h px? 
?
?The value of SIM_DEVICE on instance '%s' of type '%s' is '%s'; it is being changed to match the current FPGA architecture, '%s'. For functional simulation to match hardware behavior, the value of SIM_DEVICE should be changed in the source netlist. %s369*netlist2

cpu_clk_cg2default:default2
BUFGCTRL2default:default2

ULTRASCALE2default:default2
7SERIES2default:default2

2default:defaultZ29-345h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1126.5392default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2?
?  A total of 33 instances were transformed.
  BUFGCE => BUFGCTRL: 1 instances
  RAM256X1S => RAM256X1S (MUXF7, MUXF7, MUXF8, RAMS64E, RAMS64E, RAMS64E, RAMS64E): 32 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
612default:default2
292default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:02:172default:default2
00:02:202default:default2
1126.5392default:default2
767.0862default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1126.5392default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2s
_D:/Undergraduate/2022-2023-1/Multiple-Cycle_CPU/Multiple-Cycle_CPU.runs/synth_1/cpu_display.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2?
lExecuting : report_utilization -file cpu_display_utilization_synth.rpt -pb cpu_display_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Fri Sep 16 00:15:12 20222default:defaultZ17-206h px? 


End Record