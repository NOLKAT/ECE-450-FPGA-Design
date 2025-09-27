# 2025-09-26T01:41:25.651621200
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Design")

comp = client.create_hls_component(name = "KhanhTran_Lab2",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="KhanhTran_Lab2")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

vitis.dispose()

vitis.dispose()

