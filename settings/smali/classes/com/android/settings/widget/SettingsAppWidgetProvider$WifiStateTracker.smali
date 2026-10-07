.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .line 358
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .param p0, "wifiState"    # I

    .line 416
    packed-switch p0, :pswitch_data_0

    .line 426
    const/4 v0, 0x4

    return v0

    .line 420
    :pswitch_0    # 0x3
    const/4 v0, 0x1

    return v0

    .line 424
    :pswitch_1    # 0x2
    const/4 v0, 0x2

    return v0

    .line 418
    :pswitch_2    # 0x1
    const/4 v0, 0x0

    return v0

    .line 422
    :pswitch_3    # 0x0
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 373
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 374
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    return v1

    .line 377
    :cond_0
    const/4 v1, 0x4

    return v1
.end method

.method public getButtonDescription()I
    .locals 1

    .line 362
    const v0, 0x7f120677

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 360
    const v0, 0x7f0a01f2

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 364
    if-eqz p1, :cond_0

    const v0, 0x7f080132

    goto :goto_0

    .line 365
    :cond_0
    const v0, 0x7f080131

    .line 364
    :goto_0
    return v0
.end method

.method public getContainerId()I
    .locals 1

    .line 359
    const v0, 0x7f0a00a6

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 361
    const v0, 0x7f0a01fa

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 369
    const/4 v0, 0x0

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 404
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    const-string v0, "wifi_state"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 408
    .local v0, "wifiState":I
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 409
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .line 382
    const-string v0, "wifi"

    .line 383
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 384
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_0

    .line 385
    const-string v1, "SettingsAppWidgetProvider"

    const-string v2, "No wifiManager."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    return-void

    .line 393
    :cond_0
    new-instance v1, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;

    invoke-direct {v1, p0, v0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker;Landroid/net/wifi/WifiManager;Z)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 399
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 400
    return-void
.end method
