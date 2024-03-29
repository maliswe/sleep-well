
<p align="center">
  <img width="400" height="400" src="https://i.imgur.com/26s7duQ.png">
  <h3 align="center">Sleep Well</h3>
</p>



<div align="center">

  [![Status](https://img.shields.io/badge/status-active-success.svg)]() 
  [![GitHub Issues](https://img.shields.io/github/issues/kylelobo/The-Documentation-Compendium.svg)](https://git.chalmers.se/courses/dit113/2023/group-1/sleep-well/-/issues/23)
  [![GitHub Pull Requests](https://img.shields.io/github/issues-pr/kylelobo/The-Documentation-Compendium.svg)](https://git.chalmers.se/courses/dit113/2023/group-1/sleep-well/-/branches)
 
</div>

---

<p align="center"> Sleep Well project utilizes the Wio Terminal as a powerful tool for monitoring the sleep environment and providing users with valuable insights into their sleep quality. Through continuous data collection of temperature, humidity, light, and noise levels throughout the night, the system generates a comprehensive sleep quality score. This score serves as a reliable metric for users to evaluate the effectiveness of their sleep and make informed decisions to enhance their overall sleep experience. 



</p>

## 📝 Table of Contents
- [About](#about)
- [Features](#Features)
- [Getting Started](#getting_started)
- [User Manual](#user_manual)
- [Deployment](#deployment)
- [Usage](#usage)
- [Prerequisites](#Prerequisites)
- [Built Using](#built_using)
- [TODO](../TODO.md)
- [Contributing](../CONTRIBUTING.md)
- [Acknowledgments](#acknowledgement)
- [Authors and Contributions](#authors)


## 🧐 About <a name = "about"></a>
Our project aims to leverage the Wio Terminal, an Arduino-based device, to monitor sleep environments and provide users with valuable insights into their sleep quality. By collecting data on temperature, humidity, light, and noise levels throughout the night, our project enables users to gain a comprehensive understanding of their sleep patterns. The collected data is analyzed and presented to users through a simple score, indicating the quality of their sleep. By providing easy access to this information via a mobile application, our project empowers users to make informed decisions about their sleep habits and improve their overall sleep quality.


## ⌨️ Features <a name = "Features"></a>
* Real-time monitoring of temperature, humidity, light, and noise levels during sleep.
* Data collection and storage for analysis.
* Calculation of sleep quality score based on collected data.
* Visualization of sleep patterns and trends.
* Notifications and alerts for abnormal sleep conditions.
* User-friendly mobile application interface.

##  User Manual <a name = "user_manual"></a>
Wio:
<br>

There are 5 different buttons, making the screen view different things:<br>
Up: Light sensor information only.<br>
Left: Loudness sensor information only.<br>
Down: Temperature sensor information only.<br>
Right: Humidity sensor information only.<br>
Press: All sensor values at the same time (Home Screen).
<br>
<p align="center">
  <img width="300" height="200" src="https://cdn.cnx-software.com/wp-content/uploads/2022/09/Wio-Terminal-Joystick.png?lossy=0&strip=none&ssl=1">
</p>

App:<br>

- Home Screen: From here, you can either start taking a nap by clicking on the bed, look at the previous days data by clicking on the calendar icon on the right side of the screen.
<br>
<p align="center">
  <img width="200" height="450" src="https://cdn.discordapp.com/attachments/1088094287994040412/1109889244912169010/Screenshot_2023-05-21-19-00-29-06_08947ea61cab213e023e5a75e69ec1b6.jpg">
</p>

<br>
- log screen: There are two buttons, top left of the screen to go back to the Home Screen and clicking on "More Details" for everyday gives more indepth information about that certain day.
<br>
<p align="center">
  <img width="200" height="450" src="https://cdn.discordapp.com/attachments/1088094287994040412/1109889244631138344/Screenshot_2023-05-21-19-00-35-57_08947ea61cab213e023e5a75e69ec1b6.jpg">
</p>
<br>
- Sleep Screen: Once you are here, the Wio is recording and sending values to the App. You can stop this and end the session by sliding the slide. That way, ending the napping session. 
<br>
<p align="center">
  <img width="200" height="450" src="https://cdn.discordapp.com/attachments/1031887940663652362/1110577638881378345/Screenshot_2023-05-23-16-38-30-00_08947ea61cab213e023e5a75e69ec1b6.jpg">
</p>

## 🏁 Getting Started <a name = "getting_started"></a>
[]()

To get started with your GitLab project for Arduino and Flutter, follow these steps:

1. Set up [Arduino](https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE) and [Flutter](https://docs.flutter.dev/get-started/install) frameworks: Before proceeding, make sure you have both Arduino and Flutter frameworks installed on your system.

2. Prepare Wio Seeed Terminal: To upload code to the Wio Seeed Terminal using Arduino IDE, ensure you have the terminal device connected to your system. Additionally, connect the necessary sensors to the terminal, as they will be used in the project.

3. Before utilizing GitLab, ensure that [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) is installed on your device. 

4. [Clone](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository) the repository: To begin working on the project, clone the repository to your local machine. This will create a local copy of the project that you can modify and contribute to. 

5. Utilize MQTT protocol: The project makes use of the MQTT protocol, and the developers have chosen to use mosquitto for this purpose. Familiarize yourself with MQTT and set up [mosquitto](https://git.chalmers.se/courses/dit113/2023/group-1/sleep-well/-/wikis/Instruction#mqtt-configuration) to enable communication within the project.

6. Run project automated: You need to open your terminal, and open the path of the flutter project, 
`C:\...\sleep-well\sleep_well` 
then write command
`bulid.bat`


## Usage <a name = "usage"></a>
As metioned above, the project measures environmental variables during sleep to optimize sleep conditions and has potential applications in research. It provides a score indicating whether the sleeping environment was favorable or unfavorable, which can be used to adjust conditions to improve sleep quality. By analyzing the data collected, patterns and trends can be iSdentified, contributing to a better understanding of factors that influence sleep quality.


## Prerequisites <a name = "Prerequisites"></a>

* Flutter SDK <a href="https://docs.flutter.dev/get-started/install" target="Flutter">(installation guide)</a>  
* Dart SDK <a href="https://dart.dev/get-dart" target="Dart">(installation guide)</a>  



### Installing

To install and run this project, follow these steps:

1) Install Arduino IDE and the necessary libraries.
2) Install the Flutter SDK and an IDE of your choice.
3) Connect the Wio Seeed Terminal and sensors.
4) Clone the repository.
5) Install Mosquitto.


## Acknowledgement <a name = "acknowledgement"></a>
We want to give a shout-out to everyone who helped us out with this project! First off, a huge thank you to our amazing proffessor and his loyal TAs, Francisco Gomes, Luiz Rosane and Nicole Quinstedt, for being there every step of the way with their awesome advice and encouragement. We couldn't have done it without you! Also, big ups to all of our classmates and friends who gave us feedback and support along the way. You guys are the best! And finally, a special thanks to Göteborg's University for hooking us up with the cash to make this happen. We appreciate your support more than you know. Last but not least, our group members with all the hard work they did during the course period.
Thanks again, everyone!


## Authors and contributions <a name = "authors"></a>
Here is a short list of all the members and their contribution to this project:
1. @josefab: I did thourough research in flutter (udemy course) before starting with the implementation process. After coming up with ideas i started with the layout build. We then started working on the gui. I manily participated in creating the homescreen (and the widgets around it) and a big part of the sleep log screen. I also worked on the logic side of the app with the score alogithm. 
2. @muhmmad: implementing the sound sensor for the Wio device. Additionally, I added download and installation instructions to the wiki page, created the score screen and loading screen, and refactored the code to adhere to SOLID principles. These enhancements significantly improve the code's functionality, readability, and usability.
3. @yousefab: 
I was in charge of creating the sleep screen functionality, ensuring that our users have a seamless and user-friendly experience.
I created the initial sleep well design , as I focused on creating an appealing interface.
Furthermore, I was in charge of developing the logo for our sleep well application.
In addition, I prepared our marketing video which successfully demonstrate the capabilities and benefits of our project to stakeholders and potential consumers.
4. @qutaiba: I worked on several tasks for the Wio project. I implemented the light sensor code for the GUI, worked on the sleep log screen, redesigned some parts of the app, fixed bugs and wrapped up some end losses. Additionally, I worked on documentation for the GitLab.
5. @elhasan: 
At first for the Arduino code, I implemented the wifi connection, and the client connection, refactored the Arduino Ccode after have sensors implemented, make the loudness sensor work when plug it in the wio terminal. For the software system, I had implemented the MQTT part of the system, which was hard to figure out because of the online sources was missing for Dart packages, then I worked on the Back-End of the system, like make the score calculating algorithm, create database for the system (Firebase) and connect it with the system, connect the screen with each other. At last, be sured that the system is going to run automated with using gradle on the terminal. 
6. @nawrask: For the WIO, I worked on the screen so it displays 5 different screens and implementing the temperature sensor. For the app i worked on the log screen and the log screen controller. Polished and cleaned up some classes. Finally, i reviewd the code implementation for some of the issues we had during this project.

Information about our amazing team and the team contract can be found <a href= "https://git.chalmers.se/courses/dit113/2023/group-1/sleep-well/-/wikis/Team"> here</a>



