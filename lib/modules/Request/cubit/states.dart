abstract class RequestStates {}

class RequestInitialStates extends RequestStates {}

class RequestLoadingState extends RequestStates {}
class RequestSuccessState extends RequestStates {}
class RequestErrorState extends RequestStates {}
