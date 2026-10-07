.class public Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;
.super Landroid/app/Activity;
.source "NewDeviceIntroSuggestionActivity.java"


# static fields
.field static final PERMANENT_DISMISS_THRESHOLD:J = 0x48190800L

.field static final PREF_KEY_SUGGGESTION_COMPLETE:Ljava/lang/String; = "pref_new_device_intro_suggestion_complete"

.field static final PREF_KEY_SUGGGESTION_FIRST_DISPLAY_TIME:Ljava/lang/String; = "pref_new_device_intro_suggestion_first_display_time_ms"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static canOpenUrlInBrowser(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 106
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 107
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 109
    return v1

    .line 112
    :cond_0
    nop

    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 114
    .local v2, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method static getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 126
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;

    move-result-object v0

    .line 128
    .local v0, "supportProvider":Lcom/android/settings/overlay/SupportFeatureProvider;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 129
    return-object v1

    .line 131
    :cond_0
    invoke-interface {v0, p0}, Lcom/android/settings/overlay/SupportFeatureProvider;->getNewDeviceIntroUrl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    return-object v1

    .line 135
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "android.intent.action.VIEW"

    .line 136
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v3, "android.intent.category.BROWSABLE"

    .line 137
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 138
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    return-object v1
.end method

.method private static hasLaunchedBefore(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 118
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 119
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 120
    .local v0, "featureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 121
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "pref_new_device_intro_suggestion_complete"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    return v2
.end method

.method private static isExpired(Landroid/content/Context;)Z
    .locals 12
    .param p0, "context"    # Landroid/content/Context;

    .line 84
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 85
    invoke-virtual {v0, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    .line 86
    .local v0, "featureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v0, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 87
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    .local v2, "currentTimeMs":J
    const-string v4, "pref_new_device_intro_suggestion_first_display_time_ms"

    invoke-interface {v1, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 91
    move-wide v4, v2

    .line 92
    .local v4, "firstDisplayTimeMs":J
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "pref_new_device_intro_suggestion_first_display_time_ms"

    invoke-interface {v6, v7, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 94
    .end local v4
    :cond_0
    const-string v4, "pref_new_device_intro_suggestion_first_display_time_ms"

    const-wide/16 v5, -0x1

    invoke-interface {v1, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 97
    .restart local v4
    :goto_0
    const-wide/32 v6, 0x48190800

    add-long/2addr v6, v4

    .line 99
    .local v6, "dismissTimeMs":J
    cmp-long v8, v2, v6

    if-lez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    .line 101
    .local v8, "expired":Z
    :goto_1
    const-string v9, "NewDeviceIntroSugg"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is suggestion expired: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return v8
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 71
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isTipsInstalledAsSystemApp(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->isExpired(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 74
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->hasLaunchedBefore(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 75
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->canOpenUrlInBrowser(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 71
    :goto_1
    return v0
.end method

.method private static isSupported(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    const v1, 0x7f050013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 79
    return v0
.end method

.method private static isTipsInstalledAsSystemApp(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 146
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.apps.tips"

    const/high16 v3, 0x100000

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 148
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 149
    .end local v1
    :catch_0
    move-exception v1

    .line 150
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "NewDeviceIntroSugg"

    const-string v3, "Cannot find the package: com.google.android.apps.tips"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    invoke-static {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 59
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 60
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 61
    invoke-virtual {v1, p0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v1

    .line 62
    .local v1, "featureProvider":Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    invoke-interface {v1, p0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 63
    .local v2, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_new_device_intro_suggestion_complete"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->startActivity(Landroid/content/Intent;)V

    .line 66
    .end local v1
    .end local v2
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/support/NewDeviceIntroSuggestionActivity;->finish()V

    .line 67
    return-void
.end method
