# 2025-09-26T01:19:48.988379800
import vitis

client = vitis.create_client()
client.set_workspace(path="FPGA_Design")

vitis.dispose()

