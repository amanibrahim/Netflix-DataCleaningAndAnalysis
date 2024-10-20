
Netflix Titles Data Analysis

This project is designed to analyze Netflix's catalog of movies and TV shows. The dataset used includes information about titles, genres, release years, countries of production, and more. The core functionality of this project involves setting up a PostgreSQL database, loading the Netflix dataset from a CSV file, and cleaning the data to make it suitable for trend analysis and future exploratory work.

Table of Contents

Project Overview
Technologies Used
Dataset
Project Structure
Installation
Usage
1. Create the Database
2. Connect to the Database
3. Load the Netflix Dataset
4. Clean the Data
Future Work
License
Project Overview

The primary goal of this project is to perform trend analysis on Netflix’s catalog by:

Setting up a PostgreSQL database to store the dataset.
Loading the Netflix dataset from a CSV file.
Cleaning and processing the data to remove duplicates, handle missing values, and normalize columns for easy querying and further analysis.
The cleaned dataset can be used for a variety of analyses, such as identifying trends in the number of titles released per year, genre popularity, country of production, and more.

Technologies Used

Python 3.x: Core programming language for the project.
PostgreSQL: The relational database system used to store the Netflix dataset.
Pandas: For data manipulation and cleaning.
psycopg2: Python library for connecting to and working with PostgreSQL databases.
Jupyter Notebook: Used to write, document, and run the analysis code interactively.
Dataset

The dataset used in this project is the Netflix Movies and TV Shows dataset from Kaggle. It contains the following columns:

show_id: Unique ID for each show.
title: Name of the show/movie.
director: Director of the content.
cast: Actors involved in the content.
country: Country where the show/movie was produced.
date_added: Date when the content was added to Netflix.
release_year: Year the content was released.
rating: Age rating of the content.
duration: Duration of the content (either in minutes or seasons).
listed_in: Categories/genres of the content.
description: Brief description of the content.
Project Structure

netflix_analysis.ipynb: Jupyter Notebook containing Python code for creating the database, loading, and cleaning the data.
netflix_titles.csv: CSV file with Netflix's movie and TV show details (you will need to download this from Kaggle).
README.md: This file, which provides details about the project, setup, and usage.
Installation

Prerequisites
Before running the project, ensure you have the following software installed:

Python 3.x
PostgreSQL (with a user that has privileges to create databases)
Jupyter Notebook
Install the required Python packages:

bash
Copy code
pip install pandas psycopg2 jupyter
Usage

1. Create the Database
The first step is to create a PostgreSQL database for storing the Netflix dataset.

In the notebook, a function create_database() connects to the default PostgreSQL database and creates a new database called Netflix_title_Analysis. Make sure to update the connection parameters with your PostgreSQL credentials (if different):

python
Copy code
conn = psycopg2.connect(
    host="localhost",
    database="postgres", 
    user="postgres", 
    password="your_password"
)
After running the create_database() function, the output will confirm if the database has been created successfully.

2. Connect to the Database
Once the database is created, you need to establish a connection to it. The function connect_to_netflixDWH() is provided to connect to the Netflix_title_Analysis database:

python
Copy code
conn = psycopg2.connect(
    host="localhost",
    database="netflix_title_analysis", 
    user="postgres", 
    password="your_password"
)
This function ensures that your connection is established successfully before proceeding with the next steps.

3. Load the Netflix Dataset
Next, you need to load the Netflix dataset (netflix_titles.csv) into a pandas DataFrame for further processing:

python
Copy code
def load_data(file_path):
    df = pd.read_csv(file_path)
    return df

df = load_data('netflix_titles.csv')
Make sure to download the netflix_titles.csv file from Kaggle and place it in the appropriate directory.

4. Clean the Data
Once the dataset is loaded, the next step is cleaning it to remove duplicates and handle missing values. The clean_data(df) function performs the following operations:

Removing duplicates.
Handling missing values for key columns (director, cast, country, rating):
Replaces missing values with "Unknown" where applicable.
Handling date issues:
Fills missing dates in the date_added column with a default date.
Parses and converts the date_added column to a datetime format.
Normalizing the duration column:
Extracts the numerical part and converts it into an integer.
python
Copy code
df_clean = clean_data(df)
After cleaning, the data is ready for analysis and can be stored back into the PostgreSQL database or used for further exploratory data analysis.

Future Work

Data Analysis: Perform deeper analysis to uncover trends, such as:
Popular genres over time.
Distribution of content based on country of production.
Trends in content ratings.
Visualization: Create visualizations (using libraries like matplotlib or seaborn) to represent trends in content release over time, genre popularity, etc.
ETL Process: Implement an automated ETL (Extract, Transform, Load) process to continually update the Netflix database as new data becomes available.
License

This project is licensed under the MIT License. You are free to use, modify, and distribute the code.

