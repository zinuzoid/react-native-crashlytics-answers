package com.zinuzoid.reactnativecrashlyticsanswers;

import com.crashlytics.android.answers.Answers;
import com.crashlytics.android.answers.CustomEvent;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;

public class AnswersModule extends ReactContextBaseJavaModule {

    public AnswersModule(ReactApplicationContext reactContext) {
        super(reactContext);
    }

    @Override
    public String getName() {
        return "AnswersModule";
    }

    @ReactMethod
    public void logEvent(String eventName) {
        Answers.getInstance().logCustom(new CustomEvent(eventName));
    }

}
