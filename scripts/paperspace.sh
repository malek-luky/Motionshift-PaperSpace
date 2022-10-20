pip install --upgrade pip
apt-get update -y
apt update
conda update --all --yes
conda create --prefix /home/my_env python=3.9
activate /home/my_env/
conda install pytorch torchvision torchaudio cudatoolkit=11.3 -c pytorch
pip install torchtext

pip install ninja imageio PyOpenGL glfw gdown xatlas
pip install git+https://github.com/NVlabs/nvdiffrast/
pip install --global-option="--no-networks" git+https://github.com/NVlabs/tiny-cuda-nn#subdirectory=bindings/torch
git clone https://github.com/NVlabs/nvdiffrec.git
git clone https://github.com/malek-luky/Motionshift-PaperSpace.git
cp C:/Users/paperspace/Desktop//Motionshift-PaperSpace/test_fox/test_fox.json C:/Users/paperspace/Desktop/nvdiffrec/configs/



pip install --upgrade pip
apt-get update -y
apt update
conda update --all --yes
conda create --prefix /home/my_env python=3.9
activate /home/my_env/
#conda install pytorch torchvision torchaudio cudatoolkit
#pip install torch torchvision torchaudio (na JarvisLabs jiz nainstalovano)
pip3 install ninja imageio PyOpenGL glfw xatlas gdown
pip3 install git+https://github.com/NVlabs/nvdiffrast/
pip3 install --global-option="--no-networks" git+https://github.com/NVlabs/tiny-cuda-nn#subdirectory=bindings/torch
imageio_download_bin freeimage

## install git + python(3.9.1!!) from mthe web
##install visual studio from bicloud
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
c:\users\paperspace\appdata\local\programs\python\python39\python.exe -m pip install --upgrade pip
