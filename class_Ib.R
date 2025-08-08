# Load the dataset from the raw_data folder
patient_info <- read.csv("raw_data/patient_info.csv")

# Inspect the structure of the dataset
str(patient_info)

# Convert SmokingStatus to binary (1 = Yes, 0 = No)
patient_info$SmokingStatusBinary <- ifelse(patient_info$SmokingStatus == "Yes", 1, 0)

# Save the cleaned dataset into the clean_data folder
write.csv(patient_info, "clean_data/patient_info_clean.csv", row.names = FALSE)

# Save the cleaned dataset also as an RData file
save(patient_info, file = "clean_data/patient_info_clean.RData")
