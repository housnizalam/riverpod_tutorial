# **Notifier Provider**

## **Definition**

Der **Notifier Provider** ist eine Optimierung für den **StateNotifierProvider**. Mit ihm reicht es aus, nur eine `StateNotifier`-Klasse zu schreiben, in der die Attribute der `State`-Klasse definiert werden. Das bedeutet, dass die `State`-Klasse und die `StateNotifier`-Klasse in einer einzigen Klasse verpackt werden, was die Codeklarheit verbessert.

## **Aufbau**

Dieser Provider verlangt eine `NotifierKlass`-Klasse, die von der eingebauten `Notifier`-Klasse erbt. Anders als die `StateNotifier`-Klasse verlangt die `Notifier`-Klasse keinen Konstruktor, sondern eine `build`-Methode, die einen Standardwert der `State` zurückgibt.

Der Aufbau des Providers sieht so aus:

```dart
// Wie ersichtlich, verlangt der NotifierProvider kein ref, daher können in diesem Provider keine anderen Providers aufgerufen werden
final provider = NotifierProvider<NotifierKlasse, NotifierKlasse>(() => NotifierKlasse());
```

Wie man Methoden baut oder im GUI benutzt, ist der `NotifierProvider` ganz ähnlich wie der `StateNotifierProvider`.
