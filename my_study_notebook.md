# -----------       Lecture_1.ipynb notebook        ----------------

##                      Data Analysis steps                 ##

# Loading our data:
sales = pd.readcsv()


# The data at a glance:
sales.head()
sales.shape
sales.describe()
sales.info()

<hr><hr><hr><hr>
# Numerical analysis and visualization 
                (We'll analyze the Unit_Cost column:)

        quick descriptive statistics
sales['Unit_Cost'].describe()

        centeral tendency measures
sales['Unit_Cost'].mean()
sales['Unit_Cost'].median()
sales['Unit_Cost'].mode()

        do some graphs
sales['Unit_Cost'].plot(kind="box", figsize=(14,6))

ax= sales['Unit_Cost'].plot(kind="density", x='Number of Sales', y='dollars', figsize=(14,6))

ax.set_ylabel('Number of Salesss')
ax.set_xlabel('dollarssss')


# Categorical analysis and visualization
                (We'll analyze the Age_Group column:)

sales['Age_Group'].value_counts()
sales['Age_Group'].value_counts().plot(kind='bar', figsize=(14,6))


# Relationship between the columns?
                (Can we find any significant relationship?)

corr = sales.corr()
sales.plot(kind='scatter', x='Customer_Age', y='Revenue', figsize=(6,6))

# Column wrangling
                (Add and calculate a new Revenue_per_Age column)
sales['Revenue_per_Age'] = sales['Revenue'] / sales['Customer_Age']


# Selection & Indexing:
sales.loc[sales['state'] == 'Kentucky']
sales.loc[sales['Age_Group'] == 'Adults (35-64)', 'Revenue'].mean()

sales.loc[(sales['Age_Group']=='Adults (35-64)') & (sales['country]=='United States'), 'Revenue'].mean()











