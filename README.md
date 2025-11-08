# verilog

## Router benchmark variants

The `chatgpt01` folder now contains two benchmark configurations:

* **Original AXI/standalone design** – unchanged files keep the four-condition
  router that selects between Base-2, Base-10, Base-12 and the full router.
* **Router 2&10 variant** – new source and script set that adds a fifth
  condition limited to Base-2 and Base-10 routing while also exporting LED
  indicators in the order you requested.

### Building / programming the Router 2&10 variant

* Standalone top-level: use `scripts/create_project_router210.tcl` with Vivado.
* Zynq + AXI overlay: run `build_and_program_router210_axi.bat` (generates
  `router210_bench.bit` / `.hwh` in both `scripts/` and repo root) and program
  the board with `program_router210_axi_only.bat`.
* Use the new `router210_benchmark.ipynb` notebook alongside the generated
  `router210_bench.bit/.hwh` files to capture AXI measurements for this
  five-condition experiment.
* The LED map is:
  * LED0 → Base-2 condition win
  * LED1 → Base-10 condition win
  * LED2 → Base-12 condition win
  * LED3 → Router (Base-2/10/12) condition win
  * LED0 & LED1 together → Router (Base-2/10 only) condition win (LED4 unused)

Attach an external LED (or scope) to JA1 if you still want a duplicate copy of
the Router 2&10&12 indicator—the design now drives LED3 directly but keeps the
JA1 pin in the constraints for flexibility.
