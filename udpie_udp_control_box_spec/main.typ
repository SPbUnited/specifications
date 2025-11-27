#import "@preview/rivet:0.3.0": schema, config
#import "@preview/treet:1.0.0": *

#title([UDPie: Спецификация протокола обмена с коробкой управления])

#align(right)[
  v0.1.0
]

HEADER\
#tree-list[
  - `0x01 - Robot Control`
    - `ROBOT_ID`
    - `speed_x`
    - `speed_y`
    - `speed_w`
    - `dribbler_speed`
    - `kicker_voltage`
    - `kick_up`
    - `kick_down`
    - `beep`
    - `dribbler_en`
    - `charge_en`
    - `autokick`
  - `0xDE - Debug override`
    - `NRFM Debug override payload format [1:Ax, x - ROBOT_ID|...]`
]

// #schema.render(
//   schema.load(yaml("udpie_robot_ctrl.yml")),
//   config: config.config(ltr-bits: true)
// )
