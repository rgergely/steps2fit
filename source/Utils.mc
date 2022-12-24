using Toybox.Application;

function storeProperty(key, value) {
    if (Application has :Properties) {
        Application.Properties.setValue(key, value);
    } else {
        Application.getApp().setProperty(key, value);
    }
}

function loadProperty(key) {
    if (Application has :Properties) {
        return Application.Properties.getValue(key);
    } else {
        return Application.getApp().getProperty(key);
    }
}
