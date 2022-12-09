using Toybox.Application as App;

class Steps2FitApp extends App.AppBase {

    hidden var _Steps2FitView;

    function initialize() {
        AppBase.initialize();
        _Steps2FitView = new Steps2FitView();
    }

    // onStart() is called on application start up
    function onStart(state) {
        _Steps2FitView.onStart(self, state);
    }

    // onStop() is called when your application is exiting
    function onStop(state) {
        _Steps2FitView.onStop(self, state);
    }

    // Return the initial view of your application here
    function getInitialView() {
        return [ _Steps2FitView ];
    }

}