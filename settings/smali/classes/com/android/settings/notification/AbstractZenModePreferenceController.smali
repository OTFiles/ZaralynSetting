.class public abstract Lcom/android/settings/notification/AbstractZenModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractZenModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;,
        Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;
    }
.end annotation


# static fields
.field protected static mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;


# instance fields
.field private final KEY:Ljava/lang/String;

.field protected final mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field protected mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field protected mScreen:Landroid/support/v7/preference/PreferenceScreen;

.field protected mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    .line 63
    if-eqz p3, :cond_0

    .line 64
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 66
    :cond_0
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    .line 67
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 71
    .local v0, "featureFactory":Lcom/android/settings/overlay/FeatureFactory;
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 72
    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 73
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)J
    .locals 2
    .param p0, "x0"    # Landroid/content/Context;

    .line 45
    invoke-static {p0}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->getNextAlarm(Landroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getNextAlarm(Landroid/content/Context;)J
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 221
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 222
    .local v0, "alarms":Landroid/app/AlarmManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v1

    .line 223
    .local v1, "info":Landroid/app/AlarmManager$AlarmClockInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mScreen:Landroid/support/v7/preference/PreferenceScreen;

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 85
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 86
    new-instance v1, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;-><init>(Lcom/android/settings/notification/AbstractZenModePreferenceController;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    .line 88
    :cond_0
    return-void
.end method

.method protected getPolicy()Landroid/app/NotificationManager$Policy;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->KEY:Ljava/lang/String;

    return-object v0
.end method

.method protected getZenDuration()I
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_duration"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getZenMode()I
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "zen_mode"

    iget-object v2, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget v2, v2, Lcom/android/settings/notification/ZenModeBackend;->mZenMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 103
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->register(Landroid/content/ContentResolver;)V

    .line 94
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->mSettingObserver:Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/AbstractZenModePreferenceController$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 96
    :cond_0
    return-void
.end method
