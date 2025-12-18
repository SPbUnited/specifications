#import "@preview/rivet:0.3.0": schema, config

#title([Спецификация обратной связи с роботов до PAcmaCS'а])

#let spec_version = sys.inputs.at("spec_version", default: "dev")

#align(right)[
  v#spec_version
]


= 1. Захват мяча и напряжение

#schema.render(schema.load(yaml("packet.yml")))


