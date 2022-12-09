using Toybox.WatchUi as Ui;

class Steps2FitView extends Ui.SimpleDataField 
{
    // member variables
    hidden var fitContributor = null;

    // Set the label of the data field here.
    function initialize() {
        SimpleDataField.initialize();
        fitContributor = new FitContributor(self);
        label = Ui.loadResource( Rez.Strings.label );
    }

    function onStart(app, state) {
        fitContributor.onStart(app);
    }

    function onStop(app, state) {
        fitContributor.onStop(app);
    }

    // Return number of steps. 
    function compute(info) {
        return fitContributor.compute();
    }
    
    function onTimerStart() {
        fitContributor.onActivityStart();
    }
    
    function onTimerStop() {
        fitContributor.onActivityStop();
    }
    
    function onTimerResume() {
        fitContributor.onActivityStart();
    }
    
    function onTimerPause() {
        fitContributor.onActivityStop();
    }
    
    function onTimerLap() {
        fitContributor.onTimerLap();
    }
    
    function onTimerReset() {
        fitContributor.onTimerReset();
    }
    
    function onNextMultisportLeg() {
        fitContributor.onTimerReset();
    }
}