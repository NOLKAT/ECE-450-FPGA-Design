# 2025-09-07T23:39:09.673661100
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Design")

comp = client.create_hls_component(name = "lab0",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

comp = client.get_component(name="lab0")
comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp = client.create_hls_component(name = "KhanhTran_Lab1",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

