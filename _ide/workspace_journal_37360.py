# 2025-09-26T20:23:42.176834300
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Design")

vitis.dispose()

