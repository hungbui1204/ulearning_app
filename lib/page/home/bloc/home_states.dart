class HomeStates {
  final int index;
  const HomeStates({required this.index});
}

class InitHomeState extends HomeStates {
  const InitHomeState() : super(index: 0);
}
