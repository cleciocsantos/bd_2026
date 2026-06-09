import pandas as pd
import sqlite3

# Ler a planilha
sheets = pd.read_excel('biblioteca.xlsx', sheet_name=None)

# Conectar ao banco de dados (será criado se não existir)
conn = sqlite3.connect('biblioteca.db')

# Salvar no SQLite usando o nome de cada aba como nome da tabela
for tabela, df in sheets.items():
    try:        
        df.to_sql(tabela, conn, if_exists="replace", index=False, dtype={col: 'INTEGER' for col in df.columns if col.endswith('Id')})
        print(f"Gravado: planilha '{tabela}' -> tabela '{tabela}'")
    except Exception as e:
        print(f"Falha ao gravar '{tabela}' como tabela: {e}")

# Fechar conexão
conn.close()