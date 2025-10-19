# DIT301-PJRelente-Act04

1. How did you implement event handling for user actions?
 I implemented event handling using the onPressed property of the ElevatedButton, which triggers the submitData() function when clicked. Inside this method, I used TextEditingController to get the values from the text fields and processed the input using validation and setState() to update the UI.

2. What techniques ensured smooth and stable interaction?

To ensure smooth interaction, I:

- Used TextEditingController to handle input properly.
- Added validation to check if fields were empty or if the age was invalid.
- Used ScaffoldMessenger.of(context).showSnackBar() to show feedback instead of crashing.
- Applied setState() to update the displayed message dynamically without refreshing the entire app.


3. What improvements would you add in future versions?

For future versions, I would like to add input formatting or dropdowns for better user experience.

Aside from that I will include form validation using form and TextFormField and display the greeting message in a dialog or a separate widget.

Lastly, add themes and UI styling to make it more visually appealing and store the submitted data or navigate to a new screen after submission.
