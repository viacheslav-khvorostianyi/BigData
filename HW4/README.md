# HW4: Apache Hive 

---

## Task 1: Create External Tables and Verify Data

**Objective:**
- Create external tables `ratings_text`, `movies_text`, `tags_text` with text storage format
- Run simple `COUNT(*)` queries to verify data loading

![Show Tables](img/Task1_show_tables.PNG)

![Count Results](img/Task1_show_counts.PNG)

![Task 1 Results](img/Task1.PNG)

![Task 1 Select](img/Task1_select.PNG)

---

## Task 2: Storage Format Comparison

**Objective:**
- Create managed tables with different storage formats: SequenceFile, ORC, Parquet
![Task 2 - Insert Performance](img/Task2_1.PNG)

![Task 2 - Query Performance](img/Task2_2.PNG)

![Task 2 - Storage Comparison](img/Task2_3.PNG)

---

## Task 3: Partitioned Table by Year

**Objective:**
- Create `ratings_task3` table partitioned by year
- Load data with dynamic partitioning

![Task 3 - Partitioning](img/Task_3.PNG)

![Task 3 - Partition Results](img/Task_3_1.PNG)

---

## Task 4: Genre Analysis with LATERAL VIEW

**Objective:**
- Count number of movies by genre and sort by descending count
- Output only genres with occurrence > 200
- Use LATERAL VIEW and EXPLODE functions


![Task 4](img/Task_4.PNG)



---

## Task 5: Top Movies by Tag Analysis

**Objective:**
- Find top 5 movies with highest average rating for tags "based on a book" and "based on a play"
- Use DENSE_RANK() analytical function partitioned by tag
- Join ratings and tags tables
![Task 5](img/Task_5_1.PNG)

![Task 5](img/Task_5_2.PNG)
