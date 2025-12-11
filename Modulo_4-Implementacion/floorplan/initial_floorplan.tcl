read_lef /workspaces/Campamento-ChipUSM-2025/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_tech.lef
read_lef /workspaces/Campamento-ChipUSM-2025/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lef/sg13g2_stdcell.lef

read_liberty /workspaces/Campamento-ChipUSM-2025/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_stdcell/lib/sg13g2_stdcell_typ_1p20V_25C.lib
read_liberty /workspaces/Campamento-ChipUSM-2025/IHP-Open-PDK/ihp-sg13g2/libs.ref/sg13g2_io/lib/sg13g2_io_typ_1p2V_3p3V_25C.lib

read_verilog ../src/synth.sv
link_design adder8


odb::dbBlockage_create [ord::get_db_block] 100000 100000 150000 150000


initialize_floorplan -die_area "0 0 500 500" \
  -core_area "100 100 400 400" \
  -site CoreSite

add_global_connect -net VDD -pin_pattern VDD -power
add_global_connect -net VSS -pin_patter VSS -ground

set_voltage_domain -power VSS -ground VSS

define_pdn_grid -name "core_area" 

add_pdn_ring -grid "core_area" -layers {Metal4 Metal5} -widths 2.0 -spacings 2.0 -core_offset 2.0
add_pdn_stripe -followpins -layer Metal1 -extend_to_core_ring -width 0.2

add_pdn_connect -layers {Metal1 Metal4}
add_pdn_connect -layers {Metal4 Metal5}

pdngen