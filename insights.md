# Bank Credit Risk Analysis — Key Findings

## What did I analyze?

I analyzed 1,000 historical credit cases to see whether loan duration and loan amount were related to credit risk.

In this dataset, each case is classified as either **Good Risk** or **Bad Risk**.

## 1. Overall Credit Risk

Out of 1,000 credit cases:

- 700 were classified as good risk.
- 300 were classified as bad risk.
- **Overall bad-risk rate: 30%.**

## 2. Does Loan Duration Matter?

| Loan Duration | Total Cases | Bad-Risk Rate |
|---|---:|---:|
| Up to 12 months | 359 | 21.17% |
| 13–24 months | 411 | 29.68% |
| Over 24 months | 230 | 44.35% |

**What I found:** Loans longer than 24 months had the highest bad-risk rate. Shorter loans had lower rates in this dataset.

## 3. Does Loan Amount Matter?

| Loan Amount | Total Cases | Bad-Risk Rate |
|---|---:|---:|
| Up to 2,000 DM | 432 | 28.01% |
| 2,001–5,000 DM | 380 | 26.58% |
| Over 5,000 DM | 188 | 41.49% |

**What I found:** Loans above 5,000 DM had the highest bad-risk rate. However, the rate did not increase consistently across every loan amount group.

*DM refers to Deutsche Marks, the currency used in the historical dataset.*

## Conclusion

In this dataset, loans with longer repayment periods and loans above 5,000 DM were more often classified as bad credit risk.

These results show patterns in historical data. They do not prove that loan duration or loan amount causes bad credit risk.