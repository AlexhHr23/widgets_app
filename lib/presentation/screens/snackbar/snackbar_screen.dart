import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackbarScreen extends StatelessWidget {
  static const String name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbar(BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'OK!', onPressed: (){}),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);

  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: Text('¿Estas seguro?'),
        content: Text('Tempor dolor qui fugiat officia eu minim pariatur Lorem exercitation dolore sunt non sunt. Consectetur ea elit sit aliqua sint laborum elit aute laboris. Sit veniam dolore esse deserunt nulla adipisicing et velit sint consequat ut. Aute reprehenderit quis dolore nulla sunt esse fugiat.'),
        actions: [
          TextButton(onPressed: () => context.pop(), child: Text('Cancelar')),
          
          FilledButton(onPressed: () => context.pop(), child: Text('Aceptar'))
        ],
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Snackbars y Diálogos'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _CiustomFilledButton(
                onPressed: (){
                  showAboutDialog(
                    context: context,
                    children: [
                      const Text('Ex ullamco ea proident deserunt eu dolor irure consequat enim tempor exercitation ad. Incididunt qui nostrud quis laboris eu quis laboris nulla eiusmod duis. Reprehenderit laboris eu tempor aliqua ipsum qui nisi nulla. Nostrud pariatur duis non irure esse dolore esse in excepteur nostrud laborum adipisicing. Exercitation eiusmod pariatur reprehenderit ut reprehenderit velit cupidatat. Adipisicing eiusmod sit excepteur tempor et duis occaecat dolore culpa est duis ex deserunt. Duis nulla id aliqua enim adipisicing eu fugiat cillum sunt ipsum.')
                    ]
                  );
                },
                text: 'Licencias usadas',
              ),
              _CiustomFilledButton(
                onPressed: () => openDialog(context),
                text: 'Mostrar diálogo',
              ),
            ],
          ),
          ),
        floatingActionButton: FloatingActionButton.extended(
          label: Text('Monstar Snackbar'),
          icon: Icon(Icons.remove_red_eye_outlined),
          onPressed: () => showCustomSnackbar(context),
        ));
  }
}

class _CiustomFilledButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  const _CiustomFilledButton({
    super.key, required this.text, required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      child: Text(text)
    );
  }
}
