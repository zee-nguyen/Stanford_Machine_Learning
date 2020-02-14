import numpy as np
import pandas as pd

data = np.array(
    [
        ['', 'Col1', 'Col2'],
        ['Row1', 1, 2],
        ['Row2', 3, 4]
    ]
)

print(pd.DataFrame(
    data=data[1:, 1:],
    index=data[1:, 0],
    columns=data[0, 1:]
))


# Take a 2D array as input to your DataFrame
my_2darray = np.array([[1, 2, 3], [4, 5, 6]])

# Take a dict as input to your DataFrame
my_dict = {
    1: ['1', '3'],
    2: ['1', '2'],
    3: ['2', '4']
}

# Take a DataFrame as input to your DataFrame
my_df = pd.DataFrame(data=[4, 5, 6, 7], index=range(0, 4), columns=['A'])
print(pd.DataFrame(my_df))

# Take a Series as input to your DataFrame
my_series = pd.Series({
    "Belgium": "Brussels",
    "India": "New Delhi",
    "United Kingdom": "London",
    "United States": "Washington"
})
print(pd.DataFrame(my_series))
