# React Native Crashlytics Answers

[![npm version](http://img.shields.io/npm/v/react-native-crashlytics-answers.svg?style=flat-square)](https://npmjs.org/package/react-native-crashlytics-answers "View this project on npm")
[![npm version](http://img.shields.io/npm/dm/react-native-crashlytics-answers.svg?style=flat-square)](https://npmjs.org/package/react-native-crashlytics-answers "View this project on npm")

[Crashlytics](https://fabric.io/kits/ios/crashlytics) and [Answers](https://fabric.io/kits/ios/answers) wrapper module for React native Android and iOS

## Getting Started
- [Installation](#installation)
- [Setup iOS](#setup-ios)
- [Setup Android](#setup-android)
- [Usage](#usage)

## Installation

`npm install react-native-crashlytics-answers --save`

## Setup iOS
See React Native documentation on [Linking Libraries](https://facebook.github.io/react-native/docs/linking-libraries-ios.html#content)

1. Open your project in XCode
2. Right click on `Libraries` and click `Add Files to "YOUR_PROJECT _NAME"`
3. Add `libRNCrashlyticsAnswers.a` to `Build Phases -> Link Binary With Libraries`

## Setup Android

#### In `settings.gradle`

Add to bottom:

```java
include ':CrashlyticsAnswers'
project(':CrashlyticsAnswers').projectDir = new File(rootProject.projectDir, '../../../zinuzoid/react-native-crashlytics-answers/android')
```

#### In `android/build.gradle`

```java
allprojects {
  repositories {
    mavenLocal()
    jcenter()
    maven { url 'https://maven.fabric.io/public' }   <--- ADD THIS
  }
}
```

#### In `android/app/build.gradle`

```java
dependencies {
  compile fileTree(dir: 'libs', include: ['*.jar'])
  compile 'com.android.support:appcompat-v7:23.0.0'
  compile 'com.facebook.react:react-native:0.14.+'
  compile project(':CrashlyticsAnswers')           <--- ADD THIS
}
```

#### In `MainApplication.java`

```java
import com.zinuzoid.reactnativecrashlyticsanswers.CrashlyticsAnswersPackage;  <--- ADD THIS

public class MainApplication extends Application implements ReactApplication {

    private final ReactNativeHost mReactNativeHost = new ReactNativeHost(this) {
        @Override
        protected boolean getUseDeveloperSupport() {
            return BuildConfig.DEBUG;
        }

        @Override
        protected List<ReactPackage> getPackages() {
            return Arrays.<ReactPackage>asList(
                    new MainReactPackage(),
                    new CrashlyticsAnswersPackage());                         <--- ADD THIS
        }
    };

    @Override
    public ReactNativeHost getReactNativeHost() {
        return mReactNativeHost;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        SoLoader.init(this, /* native exopackage */ false);
    }
}
 ```
 
#### In `AndroidManifest.xml`

Add this inside the `application` tag.

```xml
<meta-data
  android:name="io.fabric.ApiKey"
  android:value="YOUR_API_KEY" />
```

## Usage

```javascript
import Fabric from 'react-native-crashlytics-answers'

Fabric.Crashlytics.crash()
Fabric.Crashlytics.setUserIdentify('LEET')
Fabric.Crashlytics.setUserName('Jimmy Fab')
Fabric.Crashlytics.setUserEmail('jimmy@not.valid')
Fabric.Crashlytics.logError('error: API response 500')

Fabric.Answers.logEvent('login.success')

```
