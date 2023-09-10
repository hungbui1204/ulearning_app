abstract class HomeEvent {
  const HomeEvent();
}

class SliderHomeEvent extends HomeEvent {
  final int index;
  const SliderHomeEvent(this.index);
}
