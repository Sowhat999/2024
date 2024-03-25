import time

def update_timeline(filename):
  """
  This function appends the current timestamp to the given filename.
  """
  with open(filename, "a") as file:
    timestamp = time.strftime("%Y-%m-%d %H:%M:%S")
    file.write(timestamp + "\n")

def main():
  """
  This function calls the update_timeline function every minute (60 seconds).
  """
  filename = "timeline.txt"  # Replace with your desired filename
  while True:
    update_timeline(filename)
    time.sleep(60)  # Sleep for 60 seconds (1 minute)

if __name__ == "__main__":
  main()
