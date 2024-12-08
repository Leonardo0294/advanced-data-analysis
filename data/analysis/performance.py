import matplotlib.pyplot as plt

class PerformanceAnalysis:
    def __init__(self, data_frame):
        self.data_frame = data_frame

    def describe_departments(self):
        departments = self.data_frame['department'].unique()
        for dept in departments:
            dept_data = self.data_frame[self.data_frame['department'] == dept]
            if not dept_data.empty:
                print(f"Department: {dept}")
                print(dept_data.describe())
            else:
                print(f"No data available for department: {dept}")

    def histograms_by_department(self, department):
        dept_data = self.data_frame[self.data_frame['department'] == department]
        if not dept_data.empty:
            plt.hist(dept_data['performance_score'].dropna(), bins=10)
            plt.xlabel('Performance Score')
            plt.ylabel('Frequency')
            plt.title(f'Histogram of Performance Score - {department}')
            plt.show()
        else:
            print(f"No data available for department: {department}")

    def disperssion_between(self, column1, column2):
        if column1 in self.data_frame.columns and column2 in self.data_frame.columns:
            plt.scatter(self.data_frame[column1], self.data_frame[column2])
            plt.xlabel(column1)
            plt.ylabel(column2)
            plt.title(f'Scatter Plot: {column1} vs {column2}')
            plt.show()
        else:
            print(f"One or both columns not found in data frame: {column1}, {column2}")

    def correlation_between(self, column1, column2):
        if column1 in self.data_frame.columns and column2 in self.data_frame.columns:
            correlation = self.data_frame[[column1, column2]].corr().loc[column1, column2]
            return correlation
        else:
            print(f"One or both columns not found in data frame: {column1}, {column2}")
            return None
