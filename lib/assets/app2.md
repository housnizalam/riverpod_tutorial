# **Riverpod Aufbau und der normale Provider**

Der Aufbau von Riverpod folgt den folgenden Schritten:

1. **Riverpod installieren**: Entweder im Terminal mit dem Befehl `flutter pub add flutter_riverpod` oder manuell, indem man es in der `pubspec.yaml`-Datei hinzufügt.

2. **MyApp im `main()` in der `runApp()`-Funktion im `ProviderScope` einbinden**: Der `ProviderScope` stellt den Bereich bereit, in dem die Provider erkannt und verwaltet werden.

3. **Verwendung von `ConsumerWidget` statt `StatelessWidget` oder `StatefulWidget`**: Um auf den Zustand eines Providers zuzugreifen und darauf zu reagieren, sollte man `ConsumerWidget` verwenden.

4. **Provider erstellen**: Ein Provider ist ein Objekt der Klasse `Provider` und kann wie folgt erstellt werden:

   ```dart
   //  Provider: Es handelt sich um eine Klasse, von der der Provider instanziiert wird.
   // <int>: Legt fest, dass der Rückgabewert des Providers vom Typ Integer ist.
   // ref: Ein Objekt der Klasse WidgetRef, das alle Provider in der App zuweisen und kontrollieren kann.
   // (ref) =>: Die Klasse Provider erwartet eine Funktion als Parameter.
   final provider = Provider<int>((ref) => 10);
   ```

5. **Provider beobachten**:  
   In einem Widget, in dem der Wert des Providers dargestellt oder verwendet werden soll, kann man den Provider beobachten, um seinen Rückgabewert zu erhalten:  

   ```dart
   final value = ref.watch(providerName);
   ```

**Wichtiger Hinweis:**
Damit ist der Aufbau eines normalen Providers in Riverpod abgeschlossen. Dieser Provider kann einen Wert an die GUI liefern, jedoch nicht ändern, da er keinen Notifier besitzt.
