import os
import sys
import subprocess
import shutil


def create_spec_file():
    """创建spec文件以自定义打包配置"""
    spec_content = '''
# -*- mode: python ; coding: utf-8 -*-

block_cipher = None

a = Analysis(
    ['CC.py'],
    pathex=[],
    binaries=[],
    datas=[('cym_icon.ico', '.'), ('jili.jpg', '.')],  # 添加jili.jpg到datas
    hiddenimports=[],
    hookspath=[],
    hooksconfig={},
    runtime_hooks=[],
    excludes=[],
    win_no_prefer_redirects=False,
    win_private_assemblies=False,
    cipher=block_cipher,
    noarchive=False,
)
pyz = PYZ(a.pure, a.zipped_data, cipher=block_cipher)

exe = EXE(
    pyz,
    a.scripts,
    a.binaries,
    a.zipfiles,
    a.datas,
    [],
    name='CC',
    debug=False,
    bootloader_ignore_signals=False,
    strip=False,
    upx=True,
    upx_exclude=[],
    runtime_tmpdir=None,
    console=False,  # GUI应用，不显示控制台窗口
    disable_windowed_traceback=False,
    argv_emulation=False,
    target_arch=None,
    codesign_identity=None,
    entitlements_file=None,
)
'''
    
    with open('CC.spec', 'w', encoding='utf-8') as f:
        f.write(spec_content)

def build_executable():
    """构建可执行文件"""
    print("正在构建可执行文件...")
    try:
        # 使用spec文件构建
        subprocess.check_call([sys.executable, "-m", "PyInstaller", "CC.spec"])
        print("构建完成!")
        return True
    except subprocess.CalledProcessError as e:
        print(f"构建失败: {e}")
        return False

def main():
    print("开始打包图像转字模工具...")

    # 创建spec文件
    create_spec_file()
    
    # 构建可执行文件
    if build_executable():
        print("打包成功完成!")
        print(f"可执行文件位于: {os.path.join(os.getcwd(), 'dist/CC.exe')}")  # 注意：PyInstaller会生成dist目录
    else:
        print("打包失败!")

if __name__ == "__main__":
    main()