# TODO GPU
git pull
pip install --upgrade pip
nainstalovat colmap
nainstalovat mashlab
pip install rembg


#RERUN PART
rembg p C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/images C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/masks
#mohl by byt problem se input argumenty do funkci - menil jsem je jak v colmap2poses tak v remove_pics.py
python C:/Users/paperspace/Desktop/Motionshift-PaperSpace/ones_and_zeros.py --base_dir C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/masks
#our own mask
python C:/Users/paperspace/Desktop/Motionshift-PaperSpace/remove_pics.py --base_dir C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox #TODO NEFACHA
python C:/Users/paperspace/Desktop/Motionshift-PaperSpace/colmap2poses.py --aabb_scale 1 --mask_path C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/masks --images C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/images --colmap_path C:/Users/paperspace/Desktop/Colmap/COLMAP.bat C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/
#automatic rmbg mask
python C:/Users/paperspace/Desktop/Motionshift-PaperSpace/colmap2poses.py --aabb_scale 1 --mask C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/masks --images C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/images --colmap_path C:/Users/paperspace/Desktop/Colmap/COLMAP.bat C:/Users/paperspace/Desktop/Motionshift-PaperSpace/fox/

copy C:/Users/paperspace/Desktop/Motionshift-PaperSpace/test_fox.json C:/Users/paperspace/Desktop/nvdiffrec/configs/
MOVE TO NVDIFFREC FOLDER
python C:/Users/paperspace/Desktop/Motionshift-PaperSpace/ones_and_zeros.py
python C:/Users/paperspace/Desktop/nvdiffrec/train.py --config C:/Users/paperspace/Desktop/nvdiffrec/configs/test_fox.json --display-interval 100

# podle me not necessary -6) Xcopy C:/Users/admin/Desktop/NeRF/CascadePSP/test C:/Users/admin/Desktop/NeRF/nvdiffrec/data/nerd/test_fox /E
#-7) cd C:/Users/admin/Desktop/NeRF/nvdiffrec/data/nerd
#-8) python C:/Users/admin/Desktop/NeRF/nvdiffrec/data/nerd/scale_images.py
#-9) v C:/Users/admin/Desktop/NeRF/nvdiffrec/configs/test_fox.json prepsat path
#-11) activate nvdiffrec
#-12) cd C:/Users/admin/Desktop/NeRF/nvdiffrec
#-13) python train.py --config configs/test_fox.json --display-interval 20

# SETUP BEZ CONDY
pip install ninja imageio PyOpenGL glfw gdown xatlas
pip install git+https://github.com/NVlabs/nvdiffrast/
pip install --global-option="--no-networks" git+https://github.com/NVlabs/tiny-cuda-nn#subdirectory=bindings/torch
git clone https://github.com/NVlabs/nvdiffrec.git
git clone https://github.com/malek-luky/Motionshift-PaperSpace.git
imageio_download_bin freeimage
## install git + python(3.9.1!!) from mthe web
## install visual studio from bicloud
## isntall CUDA 11.6 (https://developer.nvidia.com/cuda-11-6-0-download-archive)
pip3 install torch torchvision torchaudio --extra-index-url https://download.pytorch.org/whl/cu116
c:\users\paperspace\appdata\local\programs\python\python39\python.exe -m pip install --upgrade pip

# SETUP S CONDOU (PODLE ME NENI NUTNA)
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
git clone https://github.com/NVlabs/nvdiffrec.git
git clone https://github.com/malek-luky/Motionshift-PaperSpace.git
imageio_download_bin freeimage

