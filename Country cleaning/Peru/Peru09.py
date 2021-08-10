# %%
import os
import pandas as pd
import numpy as np
import datetime
import re


# %%
pd.set_option('display.max_colwidth', None)



# %% CARGA DE DATOS

path = r'D:\Basededatos\Origen\Peru\2008-2011\2009'
os.chdir(path)
files = os.listdir(path)
files


# %%
files_xls = [f for f in files if f[-4:] == 'xlsx']
files_xls

# %%
columnas = []
peru = pd.DataFrame(columns=columnas)


# %%
for f in files_xls:
    data = pd.read_excel(f, engine='openpyxl')
    peru = pd.concat([peru , data], ignore_index=True, join='outer')


# %%
peru["AÑO DE IMPORTACION"] = 2009

# %%
columnas = ["DESCRIPCION COMERCIAL 1",
            "DESCRIPCION COMERCIAL 2",
            "DESCRIPCION COMERCIAL 3",
            "DESCRIPCION COMERCIAL 4",
            "DESCRIPCION COMERCIAL 5",
            "PAIS DE ORIGEN",
            "POSICION ARANCELARIA",
            "AÑO DE IMPORTACION",
            "CANTIDAD"]

peru = peru[columnas]
# %%
peru = peru.rename(columns={
                            "PAIS DE ORIGEN":"ORIGEN",
                            "POSICION ARANCELARIA": "DATOS PERSONALES",
                            "CANTIDAD": "CANTIDAD"})

# %%
peru.to_csv(r"D:\Basededatos\Origen\Peru\2008-2011\2009.csv", index=False)

# %%
peru.info()

# %%
