.class public Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "ShutDownTimerSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/ShutDownTimerSettings$ConfirmShutDownTimeFragment;
    }
.end annotation


# instance fields
.field private final REQUEST_PARENT_PASSWORD_SHUTDOWNTIMER:I

.field private isHaveRightParentPassword:I

.field private mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

.field private final mAtTimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mAtTimePowerOffListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

.field private mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

.field private mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private final mChargingPowerOffEnableChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mChargingTurnOffPadEnableSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private final mDelaytimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private final mDelaytimePowerOffSetTimeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

.field private mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

.field private mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

.field private mHandler:Landroid/os/Handler;

.field private mListContainer:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 91
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    .line 93
    const/16 v0, 0x271a

    iput v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->REQUEST_PARENT_PASSWORD_SHUTDOWNTIMER:I

    .line 94
    new-instance v0, Lcom/android/settings/BeanVariable;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/BeanVariable;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    .line 95
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mHandler:Landroid/os/Handler;

    .line 447
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$2;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    .line 673
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$3;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 704
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$4;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimePowerOffSetTimeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 734
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$5;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimePowerOffListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 752
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$6;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 819
    new-instance v0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$8;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingPowerOffEnableChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/TimeoutListPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;
    .param p1, "x1"    # I

    .line 57
    iput p1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Lcom/android/settings/BeanVariable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fuelgauge/ShutDownTimerSettings;

    .line 57
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static isChargingTurnOffPadEnabled()Z
    .locals 3

    .line 444
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "db_charging_turn_off_pad_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method


# virtual methods
.method public ChargingPowerOffPadEnableChangeEvent(Z)V
    .locals 4
    .param p1, "newValue"    # Z

    .line 807
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$7;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 817
    return-void
.end method

.method public checkUserSettingsShutDownEnable()Z
    .locals 5

    .line 207
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/16 v1, 0x64

    if-nez v0, :cond_0

    .line 209
    iput v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    .line 211
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 212
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 214
    iput v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    .line 217
    :cond_2
    iget v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    if-eq v0, v3, :cond_4

    iget v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 220
    :cond_3
    const/4 v0, 0x0

    return v0

    .line 218
    :cond_4
    :goto_0
    return v3
.end method

.method public getAutoTurnOffPadSummary(Landroid/app/Activity;J)Ljava/lang/String;
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "timeout"    # J

    .line 472
    const-string v0, ""

    .line 474
    .local v0, "result":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, "arrValue":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 476
    .local v2, "iorder":I
    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    .local v2, "inum":I
    .local v4, "iorder":I
    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    .line 477
    aget-object v5, v1, v2

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-long v5, v5

    cmp-long v5, v5, p2

    if-gez v5, :cond_0

    .line 478
    add-int/lit8 v4, v4, 0x1

    .line 476
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 481
    .end local v2
    :cond_1
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f03000d

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 482
    .local v2, "arrShow":[Ljava/lang/String;
    if-ltz v4, :cond_2

    array-length v5, v2

    if-ge v4, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    move v4, v5

    .line 483
    const v5, 0x7f120b14

    invoke-virtual {p1, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v4

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 485
    .end local v1
    .end local v2
    .end local v4
    goto :goto_2

    .line 484
    :catch_0
    move-exception v1

    .line 486
    :goto_2
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 167
    const/16 v0, 0x51

    return v0
.end method

.method public getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "instance"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 178
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 179
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 183
    .end local v0
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return-object v1
.end method

.method public mAtTimePowerOffChangeEvent(Z)V
    .locals 9
    .param p1, "newValue"    # Z

    .line 771
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 772
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_at_time_turn_off_pad"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 774
    .local v1, "sAtTimeTurnOffPadTimeout":Ljava/lang/String;
    const/4 v2, 0x0

    .line 776
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 777
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 781
    :cond_0
    goto :goto_0

    .line 779
    :catch_0
    move-exception v3

    .line 780
    .local v3, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 783
    .end local v3
    :goto_0
    const/4 v3, 0x1

    if-nez v2, :cond_1

    .line 784
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v2, v4

    .line 785
    const-string v4, "shutdown_time"

    const-string v5, "%02d:%02d"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0x17

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 789
    :catch_1
    move-exception v4

    goto :goto_2

    .line 787
    :cond_1
    :goto_1
    const-string v4, "shutdown_switch"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "db_at_time_turn_off_pad"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 790
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 789
    :goto_2
    nop

    .line 792
    :goto_3
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    if-eqz v4, :cond_2

    .line 793
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    invoke-virtual {v5}, Lcom/android/settings/BeanVariable;->getProperty()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    xor-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/settings/BeanVariable;->setProperty(Ljava/lang/Object;)V

    .line 796
    :cond_2
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->setAtTimePowerOffKeeperBroadcastReceiver(Landroid/content/Context;)V

    .line 798
    invoke-static {v0}, Lcom/android/settings/fuelgauge/PowerOffKeeperService;->startPowerOffKeeperService(Landroid/content/Context;)V

    .line 800
    .end local v1
    .end local v2
    :cond_3
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    .line 193
    .local v0, "listView":Landroid/support/v7/widget/RecyclerView;
    const-string v1, "mItemDecorations"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 194
    .local v1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/widget/RecyclerView$ItemDecoration;>;"
    if-eqz v1, :cond_0

    .line 195
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 200
    .end local v0
    .end local v1
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 266
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 267
    const/16 v0, 0x271a

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 269
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 270
    const/4 p2, 0x1

    .line 272
    :cond_1
    const/4 v0, 0x1

    const/16 v1, 0x64

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    iget v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    if-ne v0, v1, :cond_6

    .line 273
    :cond_2
    iget v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, p2

    :goto_0
    iput v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    .line 274
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 276
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v2

    if-eqz v2, :cond_4

    const/16 v1, 0x8

    nop

    :cond_4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 277
    :catch_0
    move-exception v0

    .line 278
    :goto_1
    goto :goto_2

    .line 280
    :cond_5
    iput v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->isHaveRightParentPassword:I

    .line 296
    :cond_6
    :goto_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 106
    .local v0, "activity":Landroid/app/Activity;
    const v1, 0x7f15009e

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->addPreferencesFromResource(I)V

    .line 108
    const-string v1, "charging_turn_off_pad_enable"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingTurnOffPadEnableSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateChargingTurnOffPadEnableStatus()V

    .line 111
    const-string v1, "category_at_time_turn_off_pad"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 112
    const-string v1, "at_time_turn_off_pad"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 113
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 114
    const-string v1, "at_time_turn_off_pad_set_time"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    .line 115
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimePowerOffListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateAtTimeTurnOffPad()V

    .line 118
    const-string v1, "category_delay_time_turn_off_pad"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 119
    const-string v1, "delaytime_turn_off_pad_timeout"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    .line 120
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    const-string v1, "delaytime_turn_off_pad_timeout_set_time"

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/TimeoutListPreference;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateDelayTimeTurnOffPad()V

    .line 124
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 129
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 133
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 134
    .local v0, "child":Landroid/view/View;
    const v1, 0x102003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 135
    .local v1, "list_container":Landroid/view/ViewGroup;
    if-eqz v1, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :cond_0
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    .line 140
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    const v4, 0x7f0a01de

    invoke-virtual {v2, v4}, Landroid/view/View;->setId(I)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    new-instance v4, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings$1;-><init>(Lcom/android/settings/fuelgauge/ShutDownTimerSettings;)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    const v4, -0x7f000001

    invoke-virtual {v2, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 155
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 156
    .local v2, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {v1, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mListContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->checkUserSettingsShutDownEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 159
    :catch_0
    move-exception v3

    .line 162
    .end local v2
    :cond_2
    :goto_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 336
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 322
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 332
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 300
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 301
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->removePropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeBeanVariable:Lcom/android/settings/BeanVariable;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeStatusChangeListener:Ljava/beans/PropertyChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/BeanVariable;->addPropertyChangeListener(Ljava/beans/PropertyChangeListener;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateAtTimeTurnOffPad()V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->updateDelayTimeTurnOffPad()V

    .line 318
    return-void
.end method

.method public runCheckParentPassword(I)I
    .locals 5
    .param p1, "request"    # I

    .line 224
    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 226
    return v1

    .line 228
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 230
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 231
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cn.dream.ebag.action.SETTING_TEACHER_CHECK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 234
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    .line 238
    .end local v0
    :catch_0
    move-exception v0

    .line 239
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_0

    .line 235
    :catch_1
    move-exception v0

    .line 236
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 237
    const-string v1, ""

    const-string v2, "===322=divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .end local v0
    nop

    .line 241
    :goto_0
    return v3

    .line 243
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isParentMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SettingsActivity;->isDreamMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 244
    :cond_2
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "dream_launcher_mode_lable"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 245
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->onActivityResult(IILandroid/content/Intent;)V

    .line 246
    return v1

    .line 250
    :cond_3
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.readboy.parentmanager.INPUT_PASSWORD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    return v2

    .line 258
    .end local v0
    :catch_2
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0
    goto :goto_1

    .line 255
    :catch_3
    move-exception v0

    .line 256
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 257
    const-string v1, ""

    const-string v2, "====divhee========android.readboy.parentmanager.INPUT_PASSWORD=d=not=install==="

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    .end local v0
    nop

    .line 261
    :goto_1
    return v3
.end method

.method public updateAtTimeTurnOffPad()V
    .locals 10

    .line 343
    const/4 v0, 0x0

    .line 344
    .local v0, "isSwitchOpened":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    .local v1, "sbTime":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "db_at_time_turn_off_pad"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "sAtTimeTurnOffPadTimeout":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 348
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "shutdown_time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 349
    const-string v5, "shutdown_time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :try_start_1
    const-string v5, "shutdown_switch"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 354
    const-string v5, "shutdown_switch"

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v5

    .line 357
    :cond_1
    goto :goto_0

    .line 356
    :catch_0
    move-exception v5

    .line 360
    .end local v3
    .end local v4
    :goto_0
    goto :goto_1

    .line 358
    :catch_1
    move-exception v3

    .line 361
    :goto_1
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 362
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 363
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v3, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 366
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v3, :cond_9

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 368
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 370
    :cond_3
    move-object v3, v4

    .line 372
    .local v3, "arrTime":[Ljava/lang/String;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 374
    goto :goto_2

    .line 373
    :catch_2
    move-exception v4

    .line 375
    :goto_2
    const/4 v4, 0x2

    if-eqz v3, :cond_4

    array-length v5, v3

    if-eq v5, v4, :cond_5

    .line 376
    :cond_4
    const-string v5, "23:00"

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 378
    :cond_5
    const/16 v5, 0x17

    .line 380
    .local v5, "hourTime":I
    :try_start_3
    aget-object v6, v3, v2

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move v5, v6

    .line 382
    goto :goto_3

    .line 381
    :catch_3
    move-exception v6

    .line 383
    :goto_3
    const-string v6, "%s %d:%s"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v8, 0xd

    if-lt v5, v8, :cond_6

    const-string v9, "\u4e0b\u5348"

    goto :goto_4

    :cond_6
    const-string v9, "\u4e0a\u5348"

    :goto_4
    aput-object v9, v7, v2

    if-lt v5, v8, :cond_7

    add-int/lit8 v2, v5, -0xc

    goto :goto_5

    :cond_7
    move v2, v5

    :goto_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    aget-object v2, v3, v8

    aput-object v2, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 384
    .local v2, "atTime":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {v4, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 387
    .end local v2
    .end local v3
    .end local v5
    :goto_6
    if-eqz v0, :cond_8

    .line 388
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v3, "at_time_turn_off_pad_set_time"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_9

    .line 389
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_7

    .line 392
    :cond_8
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v3, "at_time_turn_off_pad_set_time"

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 393
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mAtTimeTurnOffPadSetTime:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 397
    :cond_9
    :goto_7
    return-void
.end method

.method public updateChargingTurnOffPadEnableStatus()V
    .locals 4

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 431
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 432
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_charging_turn_off_pad_enable"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v1, v2

    .line 433
    .local v1, "isSwitchOpened":Z
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingTurnOffPadEnableSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 434
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingTurnOffPadEnableSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 435
    iget-object v2, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingTurnOffPadEnableSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mChargingPowerOffEnableChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v2, v3}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 437
    .end local v1
    :cond_1
    return-void
.end method

.method public updateDelayTimeTurnOffPad()V
    .locals 7

    .line 400
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 401
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    .line 402
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "db_delaytime_turn_off_pad_timeout"

    const-wide/16 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 403
    .local v1, "currentTimeout":J
    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 404
    .local v3, "isSwitchOpened":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 405
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 406
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadSwitch:Landroid/support/v14/preference/SwitchPreference;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimePowerOffChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 408
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 409
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimePowerOffSetTimeChange:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v5}, Lcom/android/settings/TimeoutListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 410
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->getAutoTurnOffPadSummary(Landroid/app/Activity;J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 411
    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "====divhee=======updateDelayTimeTurnOffPad========"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz v4, :cond_2

    .line 413
    if-eqz v3, :cond_1

    .line 414
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v5, "delaytime_turn_off_pad_timeout_set_time"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-nez v4, :cond_2

    .line 415
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 418
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    const-string v5, "delaytime_turn_off_pad_timeout_set_time"

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 419
    iget-object v4, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelayTimeTurnOffPadCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/ShutDownTimerSettings;->mDelaytimeTurnOffPadTimeoutSetTime:Lcom/android/settings/TimeoutListPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 424
    .end local v1
    .end local v3
    :cond_2
    :goto_1
    return-void
.end method
