import pandas as pd
import seaborn as sns
import matplotlib.pyplot as plt
import pingouin as pg

# Enable LaTeX rendering
plt.rcParams['text.usetex'] = True  # Requires LaTeX installation (e.g., MikTeX, TeXLive)

# Load data
try:
    data1 = pd.read_csv('data_10000.csv', header=None, names=['a', 'b'])
    data2 = pd.read_csv('average_value_data_10000.csv', header=None, names=['x', 'y'])
except FileNotFoundError as e:
    print(f"Error: CSV file not found. {e}")
    exit()

# Create figure for regression plot (data1)
fig1, ax1 = plt.subplots(figsize=(8, 6))  # Adjust figure size for clarity
sns.regplot(x='a', y='b', data=data1, ax=ax1,
            color='#4169E1', scatter_kws={'alpha': 0.75, 'zorder': 2, 's': 5}, line_kws={'zorder': 3, 'color': 'red', 'alpha': 0.5})
ax1.set_xlabel(r'$k$')
ax1.set_ylabel(r'$\varphi(2k, 2k+1)$')
ax1.set_title(r'First Coalescence $\varphi(2k, 2k+1)$')
ax1.set_ylim(0, 200000)  # Restrict y-axis

plt.savefig('regression_analysis3.png', dpi=300, bbox_inches='tight')
plt.close(fig1)  # Close to free memory

# Create figure for scatter plot (data2)
fig2, ax2 = plt.subplots(figsize=(8, 6))  # Adjust figure size for clarity
sns.regplot(x='x', y='y', data=data2, ax=ax2, 
                color='#DC143C', scatter_kws={'alpha': 0.25, 'zorder': 2, 's': 10}, line_kws={'zorder': 3, 'color': 'blue', 'alpha': 0.5})
ax2.set_xlabel(r'$k$')
ax2.set_ylabel(r'$\varsigma(k)$')
ax2.set_title(r'Average Coalescence $\varsigma(k)$')

plt.savefig('average_colesncene3.png', dpi=300, bbox_inches='tight')
plt.close(fig2)  # Close to free memory

# Perform regression analysis
regression_data1 = pg.linear_regression(data1['a'], data1['b'].round(2))
regression_data2 = pg.linear_regression(data2['x'], data2['y'].round(2))
print("First Coalescence Regression:\n", regression_data1)
print("Average Coalescence Regression:\n", regression_data2)

# Save regression results to Excel
try:
    import openpyxl
    with pd.ExcelWriter('regression_results_firstPoint3.xlsx', engine='openpyxl') as writer:
        #regression_data1.to_excel(writer, sheet_name='First_Coalescence', index=False)
        regression_data2.to_excel(writer, sheet_name='First_Coalescence', index=False)


    with pd.ExcelWriter('regression_results_average3.xlsx', engine='openpyxl') as writer:
        regression_data1.to_excel(writer, sheet_name='First_Coalescence', index=False)
        #regression_data2.to_excel(writer, sheet_name='Average_Coalescence', index=False)

except ImportError:
    print("Error: 'openpyxl' module not found. Please install it using 'pip install openpyxl'.")
    exit()
except Exception as e:
    print(f"Error saving Excel file: {e}")
    exit()

plt.show()