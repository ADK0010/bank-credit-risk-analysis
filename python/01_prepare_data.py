
import pandas as pd

# 1. Read the original dataset
df = pd.read_csv("data/raw/german.data", sep=r"\s+", header=None)

# 2. Give names to the columns we need
columns = [
    "checking_account", "duration_months", "credit_history",
    "purpose", "credit_amount_dm", "savings", "employment",
    "installment_rate", "personal_status", "other_debtors",
    "residence_years", "property", "age",
    "other_installment_plans", "housing", "existing_credits",
    "job", "dependents", "telephone", "foreign_worker",
    "risk_code"
]

df.columns = columns

# 3. Check the data
print("Rows and columns:", df.shape)
print("Missing values:", df.isnull().sum().sum())

# 4. Create a column for bad credit risk
df["bad_risk"] = (df["risk_code"] == 2).astype(int)

# 5. Group loans by duration
df["duration_group"] = pd.cut(
    df["duration_months"],
    bins=[0, 12, 24, float("inf")],
    labels=["Up to 12 months", "13-24 months", "Over 24 months"]
)

# 6. Group loans by credit amount
df["amount_group"] = pd.cut(
    df["credit_amount_dm"],
    bins=[0, 2000, 5000, float("inf")],
    labels=["Up to 2000 DM", "2001-5000 DM", "Over 5000 DM"]
)

# 7. Save the prepared data
df.to_csv("data/processed/credit_clean.csv", index=False)

print("Data preparation completed!")
