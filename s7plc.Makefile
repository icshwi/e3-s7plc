#
#  Copyright (c) 2017 - Present  European Spallation Source ERIC
#
#  The program is free software: you can redistribute
#  it and/or modify it under the terms of the GNU General Public License
#  as published by the Free Software Foundation, either version 2 of the
#  License, or any newer version.
#
#  This program is distributed in the hope that it will be useful, but WITHOUT
#  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
#  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
#  more details.
#
#  You should have received a copy of the GNU General Public License along with
#  this program. If not, see https://www.gnu.org/licenses/gpl-2.0.txt
#
# 
# Author  : Jeong Han Lee
# email   : jeonghan.lee@gmail.com
# Date    : Friday, July 20 00:17:51 CEST 2018
# version : 0.0.1
#

where_am_I := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

include $(E3_REQUIRE_TOOLS)/driver.makefile


APPSRC:=

USR_INCLUDES += -I$(where_am_I)


SOURCES += $(APPSRC)/devS7plc.c
SOURCES += $(APPSRC)/drvS7plc.c

DBDS += $(APPSRC)/s7plcBase.dbd
DBDS += $(APPSRC)/s7plcCalcout.dbd
DBDS += $(APPSRC)/s7plcReg.dbd


# db rule is the default in RULES_E3, so add the empty one

db:
