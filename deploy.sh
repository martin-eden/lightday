#! /bin/bash

rm -rf deploy/

mkdir -p deploy/workshop/mechs/lightday/bgc/
cp ../../../../workshop/mechs/lightday/bgc/interface.lua deploy/workshop/mechs/lightday/bgc/interface.lua
cp ../../../../workshop/mechs/lightday/bgc/run.lua deploy/workshop/mechs/lightday/bgc/run.lua

mkdir -p deploy/workshop/frontend/tekui/
cp ../../../../workshop/frontend/tekui/gauge.lua deploy/workshop/frontend/tekui/gauge.lua
cp ../../../../workshop/frontend/tekui/group.lua deploy/workshop/frontend/tekui/group.lua
cp ../../../../workshop/frontend/tekui/hor_group.lua deploy/workshop/frontend/tekui/hor_group.lua
cp ../../../../workshop/frontend/tekui/install_timer_routine.lua deploy/workshop/frontend/tekui/install_timer_routine.lua
cp ../../../../workshop/frontend/tekui/scrollbar.lua deploy/workshop/frontend/tekui/scrollbar.lua
cp ../../../../workshop/frontend/tekui/text_label.lua deploy/workshop/frontend/tekui/text_label.lua
cp ../../../../workshop/frontend/tekui/ver_group.lua deploy/workshop/frontend/tekui/ver_group.lua
cp ../../../../workshop/frontend/tekui/window.lua deploy/workshop/frontend/tekui/window.lua
cp ../../../../workshop/mechs/lightday/interface.lua deploy/workshop/mechs/lightday/interface.lua

mkdir -p deploy/workshop/lua/
cp ../../../../workshop/lua/data_types.lua deploy/workshop/lua/data_types.lua

mkdir -p deploy/workshop/system/
cp ../../../../workshop/system/install_assert_functions.lua deploy/workshop/system/install_assert_functions.lua
cp ../../../../workshop/system/install_is_functions.lua deploy/workshop/system/install_is_functions.lua

mkdir -p deploy/workshop/table/
cp ../../../../workshop/table/clone.lua deploy/workshop/table/clone.lua
cp ../../../../workshop/table/merge.lua deploy/workshop/table/merge.lua
cp ../../../../workshop/table/new.lua deploy/workshop/table/new.lua
cp ../../../../workshop/table/patch.lua deploy/workshop/table/patch.lua
cp ../../../../workshop/base.lua deploy/workshop/base.lua
cp ../../../../workshop/base.txt deploy/workshop/base.txt

mkdir -p deploy/parts/
cp parts/daynum_to_isodate.lua deploy/parts/daynum_to_isodate.lua
cp parts/el_label_daynum.lua deploy/parts/el_label_daynum.lua
cp parts/el_label_latitude.lua deploy/parts/el_label_latitude.lua
cp parts/el_label_lightday.lua deploy/parts/el_label_lightday.lua
cp parts/el_scrollbar_daynum.lua deploy/parts/el_scrollbar_daynum.lua
cp parts/el_scrollbar_latitude.lua deploy/parts/el_scrollbar_latitude.lua
cp parts/el_scrollbar_lightday.lua deploy/parts/el_scrollbar_lightday.lua
cp parts/el_text_daynum.lua deploy/parts/el_text_daynum.lua
cp parts/el_text_latitude.lua deploy/parts/el_text_latitude.lua
cp parts/el_text_lightday.lua deploy/parts/el_text_lightday.lua
cp parts/get_min_max.lua deploy/parts/get_min_max.lua
cp parts/initial_daynum.lua deploy/parts/initial_daynum.lua
cp parts/initial_latitude.lua deploy/parts/initial_latitude.lua
cp parts/max_day_num.lua deploy/parts/max_day_num.lua
cp parts/min_day_num.lua deploy/parts/min_day_num.lua
cp parts/numval_minwidth.lua deploy/parts/numval_minwidth.lua
cp parts/update_lightday.lua deploy/parts/update_lightday.lua
cp parts/valname_minwidth.lua deploy/parts/valname_minwidth.lua
cp run.lua deploy/run.lua
