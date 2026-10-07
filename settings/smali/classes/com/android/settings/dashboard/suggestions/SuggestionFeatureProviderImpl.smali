.class public Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SuggestionFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 105
    .local v0, "appContext":Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 107
    return-void
.end method


# virtual methods
.method public dismissSuggestion(Landroid/content/Context;Lcom/android/settingslib/suggestions/SuggestionControllerMixin;Landroid/service/settings/suggestions/Suggestion;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mixin"    # Lcom/android/settingslib/suggestions/SuggestionControllerMixin;
    .param p3, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 123
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v1, 0x183

    .line 128
    invoke-virtual {p3}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/util/Pair;

    .line 126
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 129
    invoke-virtual {p2, p3}, Lcom/android/settingslib/suggestions/SuggestionControllerMixin;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 130
    return-void

    .line 124
    :cond_1
    :goto_0
    return-void
.end method

.method public getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 100
    const-string v0, "suggestions"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionServiceComponent()Landroid/content/ComponentName;
    .locals 3

    .line 65
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings.intelligence"

    const-string v2, "com.android.settings.intelligence.suggestions.SuggestionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public isSuggestionComplete(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "component"    # Landroid/content/ComponentName;

    .line 77
    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "className":Ljava/lang/String;
    const-class v1, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    invoke-static {p1}, Lcom/android/settings/wallpaper/WallpaperSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 80
    :cond_0
    const-class v1, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 81
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 82
    :cond_1
    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    invoke-static {p1}, Lcom/android/settings/fingerprint/FingerprintEnrollSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 84
    :cond_2
    const-class v1, Lcom/android/settings/password/ScreenLockSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 85
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 86
    :cond_3
    const-class v1, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    invoke-static {p1}, Lcom/android/settings/wifi/calling/WifiCallingSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 88
    :cond_4
    const-class v1, Lcom/android/settings/Settings$NightDisplaySuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    invoke-static {p1}, Lcom/android/settings/display/NightDisplayPreferenceController;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 90
    :cond_5
    const-class v1, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 91
    invoke-static {p1}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 92
    :cond_6
    const-class v1, Lcom/android/settings/notification/ZenSuggestionActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 93
    invoke-static {p1}, Lcom/android/settings/notification/ZenOnboardingActivity;->isSuggestionComplete(Landroid/content/Context;)Z

    move-result v1

    return v1

    .line 95
    :cond_7
    const/4 v1, 0x0

    return v1
.end method

.method public isSuggestionEnabled(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    const-string v0, "activity"

    .line 59
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 60
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method
