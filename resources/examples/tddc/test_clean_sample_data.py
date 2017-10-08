import pytest
import clean_sample_data


@pytest.mark.skip
def test_clean_col_0():
    """
    Test the cleaning for column: "id"
    """
    assert clean_sample_data.clean_col_0('NA') == 'NA'
    assert False



def test_clean_col_1():
    """
    Test the cleaning for column: "date"
    """
    assert clean_sample_data.clean_col_1('') == 'NA' # expects test to pass




def test_clean_col_2():
    """
    Test the cleaning for column: "country"
    """
    assert clean_sample_data.clean_col_2('') == 'NA' # expects test to fail

