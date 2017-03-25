Processing Data Loading Examples
================================

This project contains several examples of how to load data into Processing. The first example shows how to load one-dimensional data from a single text file, the rest show how to load two-dimensional data<sup>1</sup>. 

1. [Single text file](A_single_txt_file/)
2. [Multiple text files](B_multiple_txt_files/)
3. [Multiple text files in an array](C_multiple_txt_files_array/)
4. [Single CSV file](D_csv_file/)
5. [Single XML file](E_xml_file/)
6. [Single JSON file](F_json_file/)

## Data

The dataset I'm using in these examples counts the number of times I read the news per-day over the course of 7 days. Each day is broken into four 6-hour blocks: early morning (12am-6am), morning (6am-12pm), afternoon(12pm-6pm) and evening (6pm-12am).

| Date | 12am-6am | 6am-12pm | 12pm-6pm | 6pm-12am | Total |
|-----|----------|----------|----------|----------|-------|
| 3/5 | 0 | 3 | 3 | 2 | 8 |
| 3/6 | 0 | 2 | 1 | 1 | 4 |
| 3/7 | 1 | 1 | 1 | 0 | 3 |
| 3/8 | 0 | 2 | 0 | 1 | 3 |
| 3/9 | 0 | 3 | 1 | 2 | 6 |
| 3/10 | 1 | 0 | 3 | 1 | 5 |
| 3/11 | 0 | 1 | 1 | 0 | 2 |


---

<small>1. One-dimensional data is data that can be fit into one column or row in a spreadsheet, two-dimensional data will take up more than one row/column in a spreadsheet.</small>