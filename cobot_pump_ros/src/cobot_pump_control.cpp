#include <iostream>
#include <chrono>
#include "ros/ros.h"
#include <thread>
#include <franka/vacuum_gripper.h>
#include <franka/exception.h>

void basic_demo() {
    try {
        // Initialize the Vacuum Gripper
        franka::VacuumGripper vacuum_gripper("172.16.0.2");

        // Good pressure values seem to be around 100 - 300 for a fairly heavy box of quaker oats
        // specifiedNumber = 10 * mBar, so 300 = 3Bar
        int vacuumStrength = 300;
        int timeout_ms = 1000;

        // Start the pump with the desired vacuum pressure
        bool vacuum_success = vacuum_gripper.vacuum(vacuumStrength, std::chrono::milliseconds(timeout_ms));

        std::cout << "Status of vacuum is: " << std::boolalpha << vacuum_success << std::endl;

        if (vacuum_success) {
            std::cout << "Vacuum established, checking if item is attached..." << std::endl;

            // Check if an item is attached
            franka::VacuumGripperState state = vacuum_gripper.readOnce();
            if (state.part_present) {
                std::cout << "Item still attached" << std::endl;
            } else {
                std::cout << "Item lost" << std::endl;
                return;
            }

            // Wait 3 seconds and check if the object is still attached
            std::this_thread::sleep_for(std::chrono::seconds(3));
            state = vacuum_gripper.readOnce();
            if (state.part_present) {
                std::cout << "Item still attached after 3 seconds" << std::endl;

                // Wait 3 more seconds and then drop the item
                std::this_thread::sleep_for(std::chrono::seconds(3));
                bool drop_success = vacuum_gripper.dropOff(std::chrono::milliseconds(timeout_ms));
                if (drop_success) {
                    std::cout << "Dropping item now" << std::endl;
                } else {
                    std::cout << "Failed to drop the item" << std::endl;
                }
            } else {
                std::cout << "Item lost during hold" << std::endl;
            }
        } else {
            std::cout << "Vacuum not established" << std::endl;
        }

    } catch (const franka::Exception& e) {
        std::cerr << "Franka exception occurred: " << e.what() << std::endl;
    }
}

int main(int argc, char **argv){
    ros::init(argc, argv, "cobot_pump_control");
    ros::NodeHandle nh;
    // Run the basic demo
    
    basic_demo();

    return 0;
}
