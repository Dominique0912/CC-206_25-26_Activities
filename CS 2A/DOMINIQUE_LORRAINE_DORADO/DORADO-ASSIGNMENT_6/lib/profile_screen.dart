import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Builds the UI layout of the Profile Screen
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.blue.shade50, Colors.blue.shade200],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Section: header displaying page title
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue.shade400, Colors.blue.shade700],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Dominique Lorraine O. Dorado",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 24),

              // Section: profile picture and name
              Row(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile.png'),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      "Dominique Lorraine O. Dorado",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 24),

              // Section: user information rows
              _infoRow(Icons.email, "Email", "dominiquelorraine.dorado@wvsu.edu.ph"),
              _infoRow(Icons.cake, "Birthday", "September 12, 2006"),
              _infoRow(Icons.sports_esports, "Hobbies", "Sleeping, Gaming, Reading, Driving, Dancing"),
              _infoRow(Icons.music_note, "Favorite Artists", "BTS, Seventeen"),
              _infoRow(Icons.book, "Favorite Book", "Mid-September Letters by Soyen"),

              SizedBox(height: 24),

              // Section: biography description
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.blue.shade200,
                      blurRadius: 6,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Biography: Who is Dominique?",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue.shade900,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      "Dominique Lorraine Dorado is a 19-year-old Computer Science student from Guimaras."
                      " Growing up in a place known for its natural beauty and simplicity, she developed a grounded yet curious outlook on life."
                      " Passionate about technology and innovation, Dominique is currently building her skills in programming and problem-solving, preparing herself for a future in the tech industry." 
                      " She carries a “YOLO” (You Only Live Once) mindset, which drives her to take opportunities, explore new experiences, and embrace challenges without hesitation."
                      " Balancing ambition with a vibrant approach to life, Dominique continues to grow both personally and academically as she works toward her goals.",
                      style: TextStyle(fontSize: 16, color: Colors.blue.shade800, height: 1.4),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method: builds a reusable row for displaying labeled profile info
  Widget _infoRow(IconData icon, String label, String data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade100,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.blue.shade700, size: 26),
          SizedBox(width: 12),
          Text(
            "$label: ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade900,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              data,
              style: TextStyle(color: Colors.blue.shade800, fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}