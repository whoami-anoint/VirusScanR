# Load the TotalVirus library
library(totalvirus)

# Function to retrieve file report
get_file_info <- function(file_path, api_key) {
  file_report <- get_file_report(file_path, api_key = api_key)
  return(file_report)
}

# Function to retrieve URL report
get_url_info <- function(url, api_key) {
  url_report <- get_url_report(url, api_key = api_key)
  return(url_report)
}

# Function to retrieve IP report
get_ip_info <- function(ip_address, api_key) {
  ip_report <- get_ip_report(ip_address, api_key = api_key)
  return(ip_report)
}

# Prompt user for input
entity_type <- readline(prompt = "Enter entity type (file, URL, IP): ")

# Prompt user for entity to analyze
if (entity_type == "file") {
  file_path <- readline(prompt = "Enter file path: ")
  api_key <- readline(prompt = "Enter VirusTotal API key: ")
  file_report <- get_file_info(file_path, api_key)
  print(file_report)
} else if (entity_type == "URL") {
  url <- readline(prompt = "Enter URL: ")
  api_key <- readline(prompt = "Enter VirusTotal API key: ")
  url_report <- get_url_info(url, api_key)
  print(url_report)
} else if (entity_type == "IP") {
  ip_address <- readline(prompt = "Enter IP address: ")
  api_key <- readline(prompt = "Enter VirusTotal API key: ")
  ip_report <- get_ip_info(ip_address, api_key)
  print(ip_report)
} else {
  print("Invalid entity type. Please enter 'file', 'URL', or 'IP'.")
}
