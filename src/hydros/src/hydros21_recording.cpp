#include <ros/ros.h>
#include <hydros/sensor.h> // Include the message type for the sensor data
#include <fstream> // Include the file stream library for writing to a file
#include <iostream> // Include the input/output stream library for keyboard input
#include <ctime> // Include the time library for time-related functions

std::ofstream outputFile; // Declare global output file stream
bool isRecording = false; // Flag to indicate whether recording is currently on or off

// Function to get the current date and time in a human-readable format
std::string getCurrentDateTime() {
    // Get the current time as epoch time
    std::time_t now = std::time(nullptr);

    // Convert epoch time to a tm structure for local time
    std::tm* localTime = std::localtime(&now);

    // Format the date and time into a string
    char buffer[80];
    std::strftime(buffer, sizeof(buffer), "%Y-%m-%d %H:%M:%S", localTime);

    return std::string(buffer);
}

// Callback function to handle incoming sensor data
void sensorCallback(const hydros::sensor::ConstPtr& msg) {
    // Print the received sensor data with date and time if recording is on
    if (isRecording) {
        std::string dateTime = getCurrentDateTime();
        std::cout << "[" << dateTime << "] Received Sensor Data - Temperature: " << msg->temperature
                  << ", Conductivity: " << msg->conductivity << ", Depth: " << msg->depth << std::endl;

        // Write the received sensor data with date and time to the CSV file
        outputFile << dateTime << "," << msg->temperature << "," << msg->conductivity << "," << msg->depth << std::endl;
    }
}

int main(int argc, char** argv) {
    // Initialize the ROS node
    ros::init(argc, argv, "sensor_subscriber");

    // Create a ROS node handle
    ros::NodeHandle nh;

    // Open the CSV file for writing
    outputFile.open("sensor_data.csv");
    if (!outputFile.is_open()) {
        ROS_ERROR("Failed to open the CSV file!");
        return 1;
    }

    // Subscribe to the sensor data topic
    ros::Subscriber sub = nh.subscribe("/sensor", 10, sensorCallback); // Adjust the topic name accordingly

    // Loop to listen for keyboard input
    while (ros::ok()) {
        // Get keyboard input
        char input;
        std::cout << "Press 't' to toggle recording: ";
        std::cin >> input;

        // Toggle recording on 't' key press
        if (input == 't') {
            isRecording = !isRecording;

            // If recording is toggled off, close the file
            if (!isRecording) {
                outputFile.close();
                std::cout << "Recording toggled off. File closed." << std::endl;
            } else {
                std::cout << "Recording toggled on." << std::endl;
            }
        }
    }

    return 0;
}

