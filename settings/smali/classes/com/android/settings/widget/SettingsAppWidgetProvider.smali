.class public Lcom/android/settings/widget/SettingsAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field private static final IND_DRAWABLE_MID:[I

.field private static final IND_DRAWABLE_OFF:[I

.field private static final IND_DRAWABLE_ON:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static final sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private static final sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

.field private static final sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 58
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SettingsAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 62
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 85
    const/4 v1, 0x3

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    sput-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    .line 91
    new-array v2, v1, [I

    fill-array-data v2, :array_1

    sput-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    .line 97
    new-array v1, v1, [I

    fill-array-data v1, :array_2

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    .line 108
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 109
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 110
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$LocationStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    .line 111
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;

    invoke-direct {v1, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    sput-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800b3
        0x7f0800b2
        0x7f0800b4
    .end array-data

    :array_1
    .array-data 4
        0x7f0800b0
        0x7f0800af
        0x7f0800b1
    .end array-data

    :array_2
    .array-data 4
        0x7f0800b6
        0x7f0800b5
        0x7f0800b7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static synthetic access$400()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_OFF:[I

    return-object v0
.end method

.method static synthetic access$500()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_ON:[I

    return-object v0
.end method

.method static synthetic access$600()[I
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->IND_DRAWABLE_MID:[I

    return-object v0
.end method

.method static synthetic access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 55
    sput-object p0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 673
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0d0230

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 675
    .local v0, "views":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    const v2, 0x7f0a00a6

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 677
    nop

    .line 678
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 677
    const v2, 0x7f0a0095

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 680
    nop

    .line 681
    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 680
    const v2, 0x7f0a00a5

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 683
    nop

    .line 684
    const/4 v1, 0x3

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 683
    const v2, 0x7f0a009e

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 685
    nop

    .line 686
    const/4 v1, 0x4

    invoke-static {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 685
    const v2, 0x7f0a0094

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 689
    invoke-static {v0, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 690
    return-object v0
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 638
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 639
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 640
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 641
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->startObserving()V

    .line 643
    :cond_0
    return-void
.end method

.method private static getBrightness(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 832
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 834
    .local v0, "brightness":I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 835
    .end local v0
    :catch_0
    move-exception v0

    .line 837
    const/4 v0, 0x0

    return v0
.end method

.method private static getBrightnessMode(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 848
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 850
    .local v1, "brightnessMode":I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    nop

    :cond_0
    return v0

    .line 851
    .end local v1
    :catch_0
    move-exception v1

    .line 852
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "SettingsAppWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrightnessMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    .end local v1
    return v0
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buttonId"    # I

    .line 772
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 773
    .local v0, "launchIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 774
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 775
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 776
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 778
    .local v1, "pi":Landroid/app/PendingIntent;
    return-object v1
.end method

.method private toggleBrightness(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .line 864
    :try_start_0
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 865
    .local v0, "dm":Landroid/hardware/display/DisplayManager;
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 867
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 868
    .local v2, "cr":Landroid/content/ContentResolver;
    const-string v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 870
    .local v3, "brightness":I
    const/4 v4, 0x0

    .line 872
    .local v4, "brightnessMode":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x112001f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 874
    const-string v5, "screen_brightness_mode"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    move v4, v5

    .line 880
    :cond_0
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 881
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v5

    move v3, v5

    .line 882
    const/4 v4, 0x0

    goto :goto_0

    .line 883
    :cond_1
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 884
    invoke-virtual {v1}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 885
    :cond_2
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 886
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v5

    move v3, v5

    goto :goto_0

    .line 888
    :cond_3
    const/4 v4, 0x1

    .line 889
    invoke-virtual {v1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v5

    move v3, v5

    .line 892
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 895
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "screen_brightness_mode"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 900
    :cond_4
    const/4 v4, 0x0

    .line 902
    :goto_1
    if-nez v4, :cond_5

    .line 903
    invoke-virtual {v0, v3}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(I)V

    .line 904
    const-string v5, "screen_brightness"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 908
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    .end local v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    .line 906
    :catch_0
    move-exception v0

    .line 907
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v1, "SettingsAppWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toggleBrightness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    .end local v0
    :goto_2
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 12
    .param p0, "views"    # Landroid/widget/RemoteViews;
    .param p1, "context"    # Landroid/content/Context;

    .line 713
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 714
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 715
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 716
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v0, p1, p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->setImageViewResources(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 718
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightnessMode(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0800b7

    const v2, 0x7f0a01f7

    const v3, 0x7f0a01ea

    const/4 v4, 0x0

    const/4 v5, 0x1

    const v6, 0x7f12066b

    const v7, 0x7f0a0095

    if-eqz v0, :cond_0

    .line 719
    new-array v0, v5, [Ljava/lang/Object;

    const v5, 0x7f120667

    .line 721
    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    .line 720
    invoke-virtual {p1, v6, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 719
    invoke-virtual {p0, v7, v0}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 722
    const v0, 0x7f080128

    invoke-virtual {p0, v3, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 724
    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 727
    :cond_0
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->getBrightness(Landroid/content/Context;)I

    move-result v0

    .line 728
    .local v0, "brightness":I
    const-class v8, Landroid/os/PowerManager;

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 730
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v9

    int-to-float v9, v9

    const v10, 0x3f4ccccd    # 0.8f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 732
    .local v9, "full":I
    invoke-virtual {v8}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v10

    int-to-float v10, v10

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v11

    float-to-int v10, v10

    .line 734
    .local v10, "half":I
    if-le v0, v9, :cond_1

    .line 735
    new-array v5, v5, [Ljava/lang/Object;

    const v11, 0x7f120668

    .line 737
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    .line 736
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 735
    invoke-virtual {p0, v7, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 738
    const v4, 0x7f080129

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 740
    :cond_1
    if-le v0, v10, :cond_2

    .line 741
    new-array v5, v5, [Ljava/lang/Object;

    const v11, 0x7f120669

    .line 743
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    .line 742
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 741
    invoke-virtual {p0, v7, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 744
    const v4, 0x7f08012a

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 747
    :cond_2
    new-array v5, v5, [Ljava/lang/Object;

    const v11, 0x7f12066a

    .line 749
    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v5, v4

    .line 748
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 747
    invoke-virtual {p0, v7, v4}, Landroid/widget/RemoteViews;->setContentDescription(ILjava/lang/CharSequence;)V

    .line 750
    const v4, 0x7f08012b

    invoke-virtual {p0, v3, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 754
    :goto_0
    if-le v0, v10, :cond_3

    .line 755
    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 758
    :cond_3
    const v1, 0x7f0800b4

    invoke-virtual {p0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 762
    .end local v0
    .end local v8
    .end local v9
    .end local v10
    :goto_1
    return-void
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 699
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 701
    .local v0, "views":Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 702
    .local v1, "gm":Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SettingsAppWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 703
    invoke-static {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 704
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 663
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 664
    sget-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;->stopObserving()V

    .line 665
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SettingsAppWidgetProvider$SettingsObserver;

    .line 667
    :cond_0
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 658
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 659
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 789
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 790
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 791
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 793
    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 794
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 795
    :cond_1
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 796
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 797
    :cond_2
    sget-object v1, Landroid/content/ContentResolver;->ACTION_SYNC_CONN_STATUS_CHANGED:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 798
    sget-object v1, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v1, p1, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 799
    :cond_3
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 800
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 801
    .local v1, "data":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 802
    .local v2, "buttonId":I
    if-nez v2, :cond_4

    .line 803
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sWifiState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 804
    :cond_4
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 805
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->toggleBrightness(Landroid/content/Context;)V

    goto :goto_0

    .line 806
    :cond_5
    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 807
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sSyncState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 808
    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 809
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sLocationState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto :goto_0

    .line 810
    :cond_7
    const/4 v3, 0x4

    if-ne v2, v3, :cond_8

    .line 811
    sget-object v3, Lcom/android/settings/widget/SettingsAppWidgetProvider;->sBluetoothState:Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;

    invoke-virtual {v3, p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 813
    .end local v1
    .end local v2
    :cond_8
    :goto_0
    nop

    .line 821
    :goto_1
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 822
    return-void

    .line 817
    :cond_9
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .line 649
    invoke-static {p1}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 651
    .local v0, "view":Landroid/widget/RemoteViews;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 652
    aget v2, p3, v1

    invoke-virtual {p2, v2, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 651
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 654
    .end local v1
    :cond_0
    return-void
.end method
