sudo apt install -y cmake

git clone https://github.com/povik/yosys-slang.git /opt/yosys-slang
cd /opt/yosys-slang
git submodule update --init --recursive

make -j$(nproc)

sudo apt install -y xdot graphviz

#yosys -m /opt/yosys-slang/build/slang.so 