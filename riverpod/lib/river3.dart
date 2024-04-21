import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final counterProvider = StateNotifierProvider<CounterNotifier, int>((ref) {
  return CounterNotifier();
});

class CounterNotifier extends StateNotifier<int> {
  CounterNotifier() : super(0);

  void increment() {
    state++;
  }

  void decrement() {
    state--;
  }
}

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        home: CounterApp(),
      ),
    ),
  );
}

class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riverpod Counter App'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Consumer(
          builder: (context, ref, _) {
            final count = ref.watch(counterProvider);

            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                 ),
                // IconButton(
                //   icon: Icon(Icons.remove),
                //   onPressed: () {
                //     ref.read(counterProvider.notifier).decrement();
                //   },
                // ),
                Text(
                  '$count',
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),

                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                    FloatingActionButton(
                      onPressed: (){
                      ref.read(counterProvider.notifier).increment();
                    },
                    tooltip: 'Increment',
                    child: const Icon(Icons.add),
                    ),
                  
                    FloatingActionButton(
                      onPressed: (){
                      ref.read(counterProvider.notifier).decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                    )
                  ],),
                )
              ],
            );
          },
        ),
      ),
    
    );
  }
}
