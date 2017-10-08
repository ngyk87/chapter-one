import csv


def clean_columns(input_file, output_file):
    with open(input_file) as csvfile, open(output_file, 'wt') as writer:
        reader = csv.DictReader(csvfile)
        column_names = reader.fieldnames
        writer.write(','.join(column_names) + '\n')

        n_cols = len(column_names)
        column_methods = [globals()['clean_col_' + str(i)] for i in range(n_cols)]

        for row in reader:
            cleaned_row = list()
            for i in range(n_cols):
                cleaned_row.append(column_methods[i](row[column_names[i]]))
            writer.write(','.join(cleaned_row) + '\n')


def clean_col_0(input_data):
    """
    Clean values in column: "id"
    Trello card: <URL to trello card>
    """
    return input_data


def clean_col_1(input_data):
    """
    Clean values in column: "date"
    Trello card: <URL to trello card>
    """
    if input_data == '':
        input_data = 'NA' # expects test to pass
    return input_data


def clean_col_2(input_data):
    """
    Clean values in column: "country"
    Trello card: <URL to trello card>
    """
    if input_data == '':
        input_data = 'some wrong value' # expects test to fail
    return input_data


if __name__ == '__main__':
    clean_columns('sample_data.csv', 'cleaned_sample_data.csv')
