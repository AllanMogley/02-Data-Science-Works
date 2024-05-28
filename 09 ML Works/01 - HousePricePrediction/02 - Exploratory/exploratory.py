import pandas as pd
from pathlib import Path
from sklearn.model_selection import train_test_split, StratifiedShuffleSplit
import numpy as np

housing = pd.read_csv(Path('../Data/housing.csv'))

# Creste Bins for effective splitting
housing['income_cat'] = pd.cut(housing['median_income'],
        bins = [0., 1.5, 3.0, 4.5, 6., np.inf],
        labels = [1, 2, 3, 4, 5])

# Stratified Splitting
strat_train_set, strat_test_set = train_test_split(
        housing, test_size = 0.2,
        stratify = housing['income_cat'],
        random_state = 42)

strat_train_set.to_csv(Path('train_Set.csv'))
strat_test_set.to_csv(Path('test_Set.csv'))
