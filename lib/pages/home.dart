import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_library_example/bloc/bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final CounterBloc _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc Library example"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterBloc, CounterState>(
              bloc: _bloc,
              builder: (BuildContext blocContext, CounterState state) {
                return Text(
                      '${state.counterValue}',
                      style: Theme.of(blocContext).textTheme.display1,
                    );
              }
            )
          ],
        ),
      ),
      floatingActionButton: Row(
				mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
					FloatingActionButton(
						onPressed: () => _bloc.dispatch(IncrementCounter()),
						tooltip: 'Increment',
						child: Icon(Icons.add),
					),
					SizedBox(width: 10,),
					FloatingActionButton(
									onPressed: () => _bloc.dispatch(DecrementCounter()),
									tooltip: 'Increment',
									child: Icon(Icons.remove),
					),
        ],
      )
		);
  }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }
}
