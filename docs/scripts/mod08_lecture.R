require(tidyverse)
require(palmerpenguins)
require(nycflights13)
require(here)




# Read in Data ------------------------------------------------------------

dat_problem <- read_csv("/Users/graham.eglit/Documents/R_Course/Intro_to_R/data/problem.csv") # note my reletive path will be different from yours

dat_problem <- read_csv(here("data", "problem.csv")
                        
dat_problem <- read_csv(here("data", "problem.csv"),
                        na = c("?", "MD", "-999"),
                        skip = 3,
                        col_names = c("ID", "sex", "ethnicity", "treatment", "anxiety", "NA"))

dat_problem %>% 
  drop_na() # this function drops all rows that contain only NA values
