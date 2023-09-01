class WelcomeStates {
  int page;
  WelcomeStates({required this.page});
}

class WelcomeInitState extends WelcomeStates {
  WelcomeInitState() : super(page: 0);
}
