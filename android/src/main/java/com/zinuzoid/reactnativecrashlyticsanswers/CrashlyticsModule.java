package com.zinuzoid.reactnativecrashlyticsanswers;

import android.util.Log;

import com.crashlytics.android.Crashlytics;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class CrashlyticsModule extends ReactContextBaseJavaModule {

    public CrashlyticsModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "CrashlyticsModule";
    }

    @ReactMethod
    public void setUserIdentify(String identifier) {
        Crashlytics.getInstance().core.setUserIdentifier(identifier);
    }

    @ReactMethod
    public void setUserName(String name) {
        Crashlytics.getInstance().core.setUserName(name);
    }

    @ReactMethod
    public void setUserEmail(String email) {
        Crashlytics.getInstance().core.setUserEmail(email);
    }

    @ReactMethod
    public void crash() {
        Crashlytics.getInstance().crash();
    }

    @ReactMethod
    public void logError(String tag, String message) {
        Crashlytics.getInstance().core.log(Log.DEBUG, tag, message);
    }

}
