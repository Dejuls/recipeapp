// import 'package:flutter/material.dart';
// import 'package:recipeapp/models/events.dart';
// import 'package:table_calendar/table_calendar.dart';

// class MealPlan extends StatefulWidget {
//   const MealPlan({super.key});

//   @override
//   State<MealPlan> createState() => _MealPlanState();
// }

// class _MealPlanState extends State<MealPlan> {
//   DateTime? _selectedDay;
//   DateTime _focusedDate = DateTime.now();
//   Map<DateTime, List<Events>> events = {};
//   void _onDaySelect(DateTime selectedDay, DateTime focusedDay) {
//     if (!isSameDay(_selectedDay, selectedDay)) {
//       setState(() {
//         _selectedDay = selectedDay;
//         _focusedDate = focusedDay;
//         _selEvents.value = retrieveEvents(selectedDay);
//       });
//     }
//   }

//   TextEditingController eventController = TextEditingController();
//   late final ValueNotifier<List<Events>> _selEvents;
//   List<Events> retrieveEvents(DateTime day) {
//     return events[day] ?? [];
//   }

//   @override
//   void dispose() {
//     // TODO: implement dispose
//     super.dispose();
//   }

//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     _selectedDay = _focusedDate;
//     _selEvents = ValueNotifier(retrieveEvents(_selectedDay!));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Shedule your tasks now', style: TextStyle(fontSize: 20)),
//         centerTitle: true,
//       ),
//       backgroundColor: Theme.of(context).colorScheme.surface,
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: Text(
//                 'Personalized meal plans that fit your lifestyle. Plan for the week, save time, and eat healthy.',
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//             Container(
//               child: TableCalendar(
//                   focusedDay: _focusedDate,
//                   selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
//                   eventLoader: retrieveEvents,
//                   calendarStyle: CalendarStyle(outsideDaysVisible: false),
//                   onDaySelected: _onDaySelect,
//                   firstDay: DateTime.utc(2024, 01, 01),
//                   onPageChanged: (focusedDay) {
//                     setState(() {
//                       _focusedDate = focusedDay;
//                     });
//                   },
//                   lastDay: DateTime.utc(2030, 12, 31)),
//             ),
//             SizedBox(
//               height: 100,
//               width: 200,
//               child: ValueListenableBuilder<List<Events>>(
//                   valueListenable: _selEvents,
//                   builder: (context, value, _) {
//                     return ListView.builder(
//                         shrinkWrap: true,
//                         itemCount: value.length,
//                         itemBuilder: (context, index) {
//                           return Container(child: Text('${value[index]}'));
//                         });
//                   }),
//             )
//           ],
//         ),
//       ),
//       floatingActionButton: ElevatedButton(
//           style: ElevatedButton.styleFrom(
//               minimumSize: Size(10, 60),
//               backgroundColor: Theme.of(context).colorScheme.tertiary),
//           child: Text('+ Add Task',
//               style: TextStyle(
//                   color: Theme.of(context).colorScheme.inversePrimary,
//                   fontSize: 17,
//                   fontWeight: FontWeight.bold)),
//           onPressed: () => showDialog(
//               context: context,
//               builder: (_) => AlertDialog(
//                     backgroundColor: Theme.of(context).colorScheme.secondary,
//                     title: Text('Add task'),
//                     content: Padding(
//                       padding: EdgeInsets.all(10),
//                       child: TextField(
//                         controller: eventController,
//                         decoration: InputDecoration(
//                             filled: true,
//                             fillColor: Colors.grey,
//                             focusedBorder: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(20)),
//                             enabledBorder: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(20))),
//                       ),
//                     ),
//                     actions: [
//                       TextButton(
//                           onPressed: () => Navigator.pop, child: Text('Back')),
//                       TextButton(
//                           onPressed: () {
//                             if (events[_selectedDay] != null) {
//                               events[_selectedDay]!
//                                   .add(Events(eventController.text));
//                             } else {
//                               events[_selectedDay!] = [
//                                 Events(eventController.text)
//                               ];
//                             }
//                             _selEvents.value = retrieveEvents(_selectedDay!);
//                             eventController.clear(); // Clear the input field
//                             Navigator.pop(context);
//                           },
//                           child: Text(
//                             'Yes',
//                             style: TextStyle(color: Colors.greenAccent),
//                           ))
//                     ],
//                   ))),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:recipeapp/models/events.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:iconsax/iconsax.dart';

/*class Event {
  final String title;
  final String? description;
  final TimeOfDay? time;

  Event({
    required this.title,
    this.description,
    this.time,
  });

  @override
  String toString() => title;
}*/

class MealPlanScreen extends StatefulWidget {
  const MealPlanScreen({super.key});

  @override
  State<MealPlanScreen> createState() => _MealPlanScreenState();
}

class _MealPlanScreenState extends State<MealPlanScreen> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  final TextEditingController _eventController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  TimeOfDay? _selectedTime;
  
  CalendarFormat _calendarFormat = CalendarFormat.twoWeeks;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  Map<DateTime, List<Event>> _events = {};

  @override
  void initState() {
    super.initState();
    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    _selectedEvents.dispose();
    _eventController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime day) {
    return _events[DateTime(day.year, day.month, day.day)] ?? [];
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });
      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }

  Future<void> _showAddEventDialog() async {
    _eventController.clear();
    _descriptionController.clear();
    _selectedTime = null;

    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Theme.of(context).colorScheme.surface,
        title: const Text('Add Meal Plan'),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _eventController,
                decoration: InputDecoration(
                  labelText: 'Meal Title',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: _descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description (Optional)',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              ListTile(
                title: Text(_selectedTime == null 
                  ? 'Select Time (Optional)' 
                  : 'Time: ${_selectedTime!.format(context)}'),
                trailing: const Icon(Icons.access_time),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(color: Theme.of(context).dividerColor),
                ),
                onTap: () async {
                  final TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  if (time != null) {
                    setState(() => _selectedTime = time);
                  }
                },
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () {
              if (_eventController.text.isNotEmpty) {
                final event = Event(
                  title: _eventController.text,
                  description: _descriptionController.text.isEmpty 
                    ? null 
                    : _descriptionController.text,
                  time: _selectedTime,
                );
                
                final day = DateTime(
                  _selectedDay!.year,
                  _selectedDay!.month,
                  _selectedDay!.day,
                );

                if (_events[day] != null) {
                  _events[day]!.add(event);
                } else {
                  _events[day] = [event];
                }

                _selectedEvents.value = _getEventsForDay(_selectedDay!);
                Navigator.pop(context);
              }
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      backgroundColor: theme.colorScheme.background,
      appBar: AppBar(
        backgroundColor: theme.colorScheme.background,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          'Schedule your tasks now',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              'Personalized meal plans that fit your lifestyle. Plan for the week, save time, and eat healthy.',
              style: theme.textTheme.bodyLarge?.copyWith(
                color: theme.colorScheme.onBackground.withOpacity(0.8),
              ),
              textAlign: TextAlign.center,
            ),
          ).animate().fadeIn().slideY(),
          TableCalendar<Event>(
            firstDay: DateTime.utc(2024, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
            eventLoader: _getEventsForDay,
            startingDayOfWeek: StartingDayOfWeek.monday,
            calendarStyle: CalendarStyle(
              outsideDaysVisible: false,
              selectedDecoration: BoxDecoration(
                color: theme.colorScheme.primary,
                shape: BoxShape.circle,
              ),
              todayDecoration: BoxDecoration(
                color: theme.colorScheme.primary.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              markerDecoration: BoxDecoration(
                color: theme.colorScheme.secondary,
                shape: BoxShape.circle,
              ),
            ),
            onDaySelected: _onDaySelected,
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() => _calendarFormat = format);
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ).animate().fadeIn(),
          const SizedBox(height: 8),
          Expanded(
            child: ValueListenableBuilder<List<Event>>(
              valueListenable: _selectedEvents,
              builder: (context, events, _) {
                if (events.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Iconsax.calendar_1,
                          size: 48,
                          color: theme.colorScheme.primary,
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'No meals planned for this day',
                          style: theme.textTheme.titleMedium,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Tap the + button to add a meal plan',
                          style: theme.textTheme.bodyMedium?.copyWith(
                            color: theme.colorScheme.onBackground.withOpacity(0.6),
                          ),
                        ),
                      ],
                    ),
                  ).animate().fadeIn();
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: events.length,
                  itemBuilder: (context, index) {
                    final event = events[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 8),
                      child: ListTile(
                        title: Text(
                          event.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: event.description != null
                            ? Text(event.description!)
                            : null,
                        trailing: event.time != null
                            ? Text(event.time!.format(context))
                            : null,
                        leading: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary.withOpacity(0.1),
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Iconsax.calendar_1,
                            color: theme.colorScheme.primary,
                          ),
                        ),
                      ),
                    ).animate().fadeIn().slideX();
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _showAddEventDialog,
        icon: const Icon(Icons.add),
        label: const Text('Add Task'),
        backgroundColor: Colors.amber,
      ).animate().fadeIn().slideY(),
    );
  }
}