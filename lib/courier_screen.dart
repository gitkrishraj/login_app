import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SelectCourierScreen extends StatefulWidget {
  @override
  _SelectCourierScreenState createState() => _SelectCourierScreenState();
}

class _SelectCourierScreenState extends State<SelectCourierScreen> {
  int _selectedValue = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Select Courier',
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {
              
              showSearch(context: context, delegate: CustomSearchDelegate());
            },
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Stack(
        children: [
          
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.red.withOpacity(0.5), width: 3), // Light red border
                borderRadius: BorderRadius.circular(20),
              ),
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'assets/images/map.png', 
                  fit: BoxFit.cover, 
                ),
              ),
            ),
          ),

          
          Positioned(
            left: 100, 
            top: 100, 
            right: 50, 
            bottom: 300, 
            child: Image.asset(
              'assets/images/distance.png', 
              fit: BoxFit.contain, 
            ),
          ),

          
          Positioned(
            left: 84, 
            top: 282,
            child: Image.asset('assets/images/green.png', height: 61, width: 62),
          ),
          Positioned(
            right: 34, 
            top: 43,
            child: Image.asset('assets/images/red.png', height: 61, width: 62),
          ),

          
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min, 
              children: [
                
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.95), 
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Where is it going?",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RadioListTile(
                          value: 0,
                          groupValue: _selectedValue,
                          onChanged: (val) {
                            setState(() {
                              _selectedValue = val as int;
                            });
                          },
                          title: Text(
                            "Current location",
                            style: GoogleFonts.poppins(
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.green.withOpacity(0.1), 
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: RadioListTile(
                          value: 2,
                          groupValue: _selectedValue,
                          onChanged: (val) {
                            setState(() {
                              _selectedValue = val as int;
                            });
                          },
                          title: Text(
                            "Choose recipient's location",
                            style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                          ),
                          activeColor: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 15), 

                
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: EdgeInsets.symmetric(horizontal: 110, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    
                  },
                  child: Text(
                    "Continue",
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                
                SizedBox(height: 10), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Custom Search Delegate class to handle search functionality
class CustomSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text("Search result for '$query'"),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = ['Location 1', 'Location 2', 'Location 3']
        .where((location) => location.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(suggestions[index]),
          onTap: () {
            query = suggestions[index];
            showResults(context);
          },
        );
      },
    );
  }
}
