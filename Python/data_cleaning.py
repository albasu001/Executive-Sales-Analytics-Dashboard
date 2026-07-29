import pandas as pd

# Load the dataset
df = pd.read_csv("Data/Sample - Superstore.csv", encoding="latin1")

# Display basic information
print("=" * 50)
print("EXECUTIVE SALES ANALYTICS DASHBOARD")
print("=" * 50)

print("\nFirst 5 Rows:")
print(df.head())

print("\nDataset Shape:")
print(df.shape)

print("\nColumn Names:")
print(df.columns.tolist())

print("\nData Types:")
print(df.dtypes)

print("\nMissing Values:")
print(df.isnull().sum())

print("\nDuplicate Rows:")
print(df.duplicated().sum())
