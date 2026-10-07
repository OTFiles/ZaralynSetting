.class public Lcom/android/settings/display/BrightnessLevelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mMaxBrightness:I

.field private final mMaxVrBrightness:I

.field private final mMinBrightness:I

.field private final mMinVrBrightness:I

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 64
    const-string v0, "screen_brightness_for_vr"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    .line 65
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 68
    new-instance v0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 78
    if-eqz p2, :cond_0

    .line 79
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 81
    :cond_0
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 82
    .local v0, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    .line 83
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    .line 84
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    .line 85
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    .line 86
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/display/BrightnessLevelPreferenceController;

    .line 45
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/display/BrightnessLevelPreferenceController;
    .param p1, "x1"    # Landroid/support/v7/preference/Preference;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method private getCurrentBrightness()D
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v4, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getCurrentBrightness(Landroid/content/ContentResolver;IIII)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentBrightness(Landroid/content/ContentResolver;IIII)D
    .locals 3
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "mMinVrBrightness"    # I
    .param p2, "mMaxVrBrightness"    # I
    .param p3, "mMinBrightness"    # I
    .param p4, "mMaxBrightness"    # I

    .line 168
    invoke-static {}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    const-string v0, "screen_brightness_for_vr"

    invoke-static {p0, v0, p4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 171
    .local v0, "value":I
    int-to-double v1, v0

    invoke-static {v1, v2, p1, p2}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v1

    return-wide v1

    .line 173
    .end local v0
    :cond_0
    const-string v0, "screen_brightness"

    invoke-static {p0, v0, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 175
    .restart local v0
    int-to-double v1, v0

    invoke-static {v1, v2, p3, p4}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v1

    return-wide v1
.end method

.method private static getPercentage(DII)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 180
    int-to-double v0, p3

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 181
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    .line 183
    :cond_0
    int-to-double v0, p2

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 184
    const-wide/16 v0, 0x0

    return-wide v0

    .line 186
    :cond_1
    int-to-double v0, p2

    sub-double v0, p0, v0

    sub-int v2, p3, p2

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method private static getValueByPercentage(DII)D
    .locals 4
    .param p0, "value"    # D
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 197
    int-to-double v0, p3

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 198
    int-to-double v0, p3

    return-wide v0

    .line 200
    :cond_0
    int-to-double v0, p2

    cmpg-double v0, p0, v0

    if-gez v0, :cond_1

    .line 201
    int-to-double v0, p2

    return-wide v0

    .line 204
    :cond_1
    sub-int v0, p3, p2

    int-to-double v0, v0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    int-to-double v2, p2

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static isInVrMode()Z
    .locals 4

    .line 238
    invoke-static {}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->safeGetVrManager()Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 239
    .local v0, "vrManager":Landroid/service/vr/IVrManager;
    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v1

    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BrightnessPrefCtrl"

    const-string v3, "Failed to check vr mode!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    .end local v1
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static nowSetCurrentBrightness(ILandroid/content/ContentResolver;IIII)Z
    .locals 4
    .param p0, "value"    # I
    .param p1, "contentResolver"    # Landroid/content/ContentResolver;
    .param p2, "mMinVrBrightness"    # I
    .param p3, "mMaxVrBrightness"    # I
    .param p4, "mMinBrightness"    # I
    .param p5, "mMaxBrightness"    # I

    .line 218
    invoke-static {}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 219
    int-to-double v2, p0

    invoke-static {v2, v3, p2, p3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getValueByPercentage(DII)D

    move-result-wide v2

    double-to-int v0, v2

    .line 220
    .local v0, "valueSettings":I
    const-string v2, "screen_brightness_for_vr"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 221
    return v1

    .line 223
    .end local v0
    :cond_0
    int-to-double v2, p0

    invoke-static {v2, v3, p4, p5}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getValueByPercentage(DII)D

    move-result-wide v2

    double-to-int v0, v2

    .line 224
    .restart local v0
    const-string v2, "screen_brightness"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 226
    return v1
.end method

.method public static safeGetVrManager()Landroid/service/vr/IVrManager;
    .locals 1

    .line 232
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    return-object v0
.end method

.method private updatedSummary(Landroid/support/v7/preference/Preference;)V
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 123
    if-eqz p1, :cond_0

    .line 124
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getCurrentBrightness()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 126
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 101
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 102
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 103
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 96
    const-string v0, "brightness"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 120
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 107
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroid/support/v7/preference/Preference;)V

    .line 108
    return-void
.end method
