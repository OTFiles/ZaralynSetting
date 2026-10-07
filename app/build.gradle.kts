plugins {
    id("com.android.application")
    id("org.jetbrains.kotlin.android")
}

android {
    namespace = "com.readboy.installer"
    compileSdk = 34

    defaultConfig {
        applicationId = "com.readboy.installer"
        minSdk = 21
        targetSdk = 34
        versionCode = 2
        versionName = "1.1"
    }

    signingConfigs {
        create("release") {
            val keystoreFile = File(rootDir, "otf.jks")
            if (keystoreFile.exists()) {
                storeFile = keystoreFile
            } else {
                storeFile = file("otf.jks")
            }
            storePassword = System.getenv("KEYSTORE_PASSWORD") ?: "OTFiles-ABC345abc"
            keyAlias = System.getenv("KEY_ALIAS") ?: "OTFiles"
            keyPassword = System.getenv("KEY_PASSWORD") ?: "OTFiles-ABC345abc"
        }
    }

    buildTypes {
        release {
            isMinifyEnabled = false
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
            signingConfig = signingConfigs.getByName("release")
        }
    }

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_1_8
        targetCompatibility = JavaVersion.VERSION_1_8
        // Java 8+ API 脱糖：保证 Android 5.0~6.0（API 21~23）上不因默认方法报 NoSuchMethodError
        isCoreLibraryDesugaringEnabled = true
    }

    kotlinOptions {
        jvmTarget = "1.8"
    }

    buildFeatures {
        viewBinding = true
        buildConfig = true
    }
}

dependencies {
    implementation("androidx.core:core-ktx:1.12.0")
    implementation("androidx.appcompat:appcompat:1.6.1")
    implementation("com.google.android.material:material:1.11.0")
    implementation("androidx.constraintlayout:constraintlayout:2.1.4")
    implementation("androidx.recyclerview:recyclerview:1.3.2")
    implementation("androidx.cardview:cardview:1.0.0")
    implementation("androidx.viewpager2:viewpager2:1.0.0")
    implementation("androidx.fragment:fragment-ktx:1.5.7")
    coreLibraryDesugaring("com.android.tools:desugar_jdk_libs:2.0.4")
}