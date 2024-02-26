import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app2/views/Select%20type/Property.dart';

class PropertyList extends StatefulWidget {
  final List<Property> properties;

  PropertyList({required this.properties});

  @override
  _PropertyListScreenState createState() => _PropertyListScreenState();
}

class _PropertyListScreenState extends State<PropertyList> {
  String selectedArea = 'Any';
  int selectedBedrooms = 0;
  int selectedBathrooms = 0;

  List<Property> getFilteredProperties() {
    return widget.properties.where((property) {
      bool areaMatches = selectedArea == 'Any' || property.area == selectedArea;
      bool bedroomsMatch = selectedBedrooms == 0 || property.bedrooms == selectedBedrooms;
      bool bathroomsMatch = selectedBathrooms == 0 || property.bathrooms == selectedBathrooms;

      return areaMatches && bedroomsMatch && bathroomsMatch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Property> filteredProperties = getFilteredProperties();

    return Scaffold(
      body: Column(
        children: [
          // Filtering options
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Area dropdown
                DropdownButton<String>(
                  value: selectedArea,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedArea = newValue!;
                    });
                  },
                  items: ['Any', 'Downtown', 'Suburb', 'City Center']
                      .map((value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  ))
                      .toList(),
                ),
                // Bedroom number dropdown
                DropdownButton<int>(
                  value: selectedBedrooms,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedBedrooms = newValue!;
                    });
                  },
                  items: [0, 1, 2, 3, 4]
                      .map((value) => DropdownMenuItem<int>(
                    value: value,
                    child: Text(value == 0 ? 'Any' : value.toString()),
                  ))
                      .toList(),
                ),
                // Bathroom count dropdown
                DropdownButton<int>(
                  value: selectedBathrooms,
                  onChanged: (int? newValue) {
                    setState(() {
                      selectedBathrooms = newValue!;
                    });
                  },
                  items: [0, 1, 2, 3, 4]
                      .map((value) => DropdownMenuItem<int>(
                    value: value,
                    child: Text(value == 0 ? 'Any' : value.toString()),
                  ))
                      .toList(),
                ),
              ],
            ),
          ),
          // Display filtered properties
          Expanded(
            child: ListView.builder(
              itemCount: filteredProperties.length,
              itemBuilder: (context, index) {
                Property property = filteredProperties[index];
                return ListTile(
                  title: Text(property.name),
                  subtitle: Text(
                      'Area: ${property.area}, Bedrooms: ${property.bedrooms}, Bathrooms: ${property.bathrooms}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
