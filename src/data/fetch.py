from pathlib import Path
import requests
from zipfile import ZipFile
SRC_URL = 'https://extxfer.sfdph.org/food/SFFoodProgram_Complete_Data.zip'
SRC_PATH = Path('data', 'raw', 'zips' 'SFFoodProgram_Complete_Data.zip')
DEST_DIR = Path('data', 'raw')


def refresh():
    """
    only use if wanting to get a new data file from official source
    """
    resp = requests.get(SRC_URL)
    if resp.status_code == 200:
        with SRC_PATH.open('wb') as f:
            f.write(resp.content)
            return resp.content
    else:
        raise ValueError("Attempted to download {} but got status code: {}".format(SRC_URL, resp.status_code))


def main():
    with ZipFile(SRC_PATH, 'r') as myzip:
        myzip.extractall(path=DEST_DIR)
        return myzip.namelist()


if __name__ == '__main__':
    print("Unpacking:", SRC_PATH)
    print("Into:", DEST_DIR)

    fnames = main()

    print("Unpacked:")
    for fn in fnames:
        print("-", fn)






