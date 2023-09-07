class ApplicationStates {
  final int index;
  const ApplicationStates({required this.index});
}

class InitApplicationState extends ApplicationStates {
  const InitApplicationState() : super(index: 0);
}
