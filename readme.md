# 4Rent.ca Clone
The 4Rent Mobile App Clone is an iOS application built using SwiftUI and Firebase. It provides functionalities similar to 4rent.ca, allowing landlords to list rental properties, tenants to search and request properties, and guests to browse the market.

## Features

### User Roles

#### Landlord:
- List/delist rental properties.
- Update property details.
- Receive and approve/deny tenant requests.
- Search for rental properties.

#### Tenant:
- Search for rental properties.
- View property details.
- Shortlist properties.
- Send/withdraw requests for properties.
- Share property details.

#### Guest:
- Search for rental properties.
- View property details.

### Authentication
- User registration and login using FirebaseAuth.
- "Remember Me" functionality using UserDefaults.
- Role-based access (Landlord, Tenant, Guest).

### Database
- Cloud Firestore for data persistence:
- users: Stores user profiles.
- properties: Stores property details.
- requests: Stores tenant requests.
- shortlists: Stores tenant shortlisted properties.

### UI/UX
- Built using SwiftUI.
- Intuitive navigation with tab-based interfaces.
- Real-time updates for property listings and requests.

## Screenshots
<div class="inline-block">
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%201.png" alt="Screenshot 1" width="200">
  &nbsp;
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%202.png" alt="Screenshot 2" width="200">
  &nbsp;
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%203.png" alt="Screenshot 3" width="200">
  &nbsp;
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%204.png" alt="Screenshot 4" width="200">
  &nbsp;
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%205.png" alt="Screenshot 5" width="200">
  &nbsp;
  <img src="https://github.com/KetanPaliwal2000/Rent4U-Project/blob/main/Screenshot%206.png" alt="Screenshot 6" width="200">
</div>

## Setup Instructions
### Prerequisites
- Xcode 13 or later.
- iOS 15 or later.
- Firebase account (for authentication and Firestore).

### Steps to Run the Project
1. Clone Repository
  - git clone [https://github.com/KetanPaliwal2000/Rent4U-Project.git](https://github.com/KetanPaliwal2000/Rent4U-Project.git)
3. Set Up Firebase:
  - Create a new project on the [Firebase Console](https://console.firebase.google.com/).
  - Add an iOS app to your Firebase project and download the GoogleService-Info.plist file.
  - Place the GoogleService-Info.plist file in the Project directory.
3. Install Dependencies:
  - Open the project in Xcode.
  - Add Firebase dependencies using Swift Package Manager:
    - FirebaseAuth
    - FirebaseFirestore
    - FirebaseFirestoreSwift
4. Run the App:
  - Select a simulator or connect a physical device.
  - Click the Run button in Xcode (or press Cmd + R).

## Technologies Used
- SwiftUI: For building the user interface.
- Firebase:
  - FirebaseAuth: For user authentication.
  - Cloud Firestore: For data persistence.
- UserDefaults: For storing login credentials.
- EnvironmentObject: For shared state management.
