# Add project specific ProGuard rules here.
# You can control the set of applied configuration files using the
# proguardFiles setting in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Preserve line number information for debugging stack traces
-keepattributes SourceFile,LineNumberTable
-renamesourcefileattribute SourceFile

# Keep inject and lhooker classes (used by FakeLocation loader via reflection)
-keep class com.kail.location.inject.** { *; }
-keep class com.kail.location.lib.lhooker.** { *; }

# Keep native methods
-keepclasseswithmembernames class * {
    native <methods>;
}

# Keep WebView JavaScript interface
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}

# OkHttp
-dontwarn okhttp3.**
-dontwarn okio.**
-keep class okhttp3.** { *; }

# Baidu Map SDK
-keep class com.baidu.** { *; }
-keep class com.baidu.location.** { *; }
-keep class com.baidu.mapapi.** { *; }
-keep class com.baidu.platform.** { *; }
-keep class com.baidu.vi.** { *; }
-keep class com.baidu.vcom.** { *; }
-keep class com.baidu.veh.** { *; }
-dontwarn com.baidu.**

# Room Database
-keep class * extends androidx.room.RoomDatabase
-keep @androidx.room.Entity class *
-keep @androidx.room.Dao class *
-keepclassmembers class * {
    @androidx.room.* <methods>;
}

# Firebase
-keep class com.google.firebase.** { *; }
-dontwarn com.google.firebase.**

# Keep Serializable classes
-keepclassmembers class * implements java.io.Serializable {
    static final long serialVersionUID;
    private static final java.io.ObjectStreamField[] serialPersistentFields;
    !static !transient <fields>;
    private void writeObject(java.io.ObjectOutputStream);
    private void readObject(java.io.ObjectInputStream);
    java.lang.Object writeReplace();
    java.lang.Object readResolve();
}

# Keep enum values
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}

# Keep Parcelable
-keepclassmembers class * implements android.os.Parcelable {
    public static final ** CREATOR;
}

# Markwon
-keep class io.noties.markwon.** { *; }
-dontwarn io.noties.markwon.**

# Coil
-keep class coil.** { *; }
-dontwarn coil.**

# Dobby
-keep class io.github.vvb2060.ndk.dobby.** { *; }
-dontwarn io.github.vvb2060.ndk.dobby.**

# ZXing
-keep class com.google.zxing.** { *; }
-dontwarn com.google.zxing.**

# Kotlin Coroutines
-keepnames class kotlinx.coroutines.internal.MainDispatcherFactory {}
-keepnames class kotlinx.coroutines.CoroutineExceptionHandler {}
-keepclassmembers class kotlinx.coroutines.** {
    volatile <fields>;
}

# Keep application classes
-keep class com.kail.location.** { *; }

# General dontwarn rules
-dontwarn javax.annotation.**
-dontwarn sun.misc.Unsafe
-dontwarn org.codehaus.mojo.animal_sniffer.**
-dontwarn org.conscrypt.**
-dontwarn org.bouncycastle.**
-dontwarn org.openjsse.**
