.class final Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;
.super Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;
.source "SettingsAppWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SettingsAppWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BluetoothStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$StateTracker;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings/widget/SettingsAppWidgetProvider$1;

    .line 434
    invoke-direct {p0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;-><init>()V

    return-void
.end method

.method private static bluetoothStateToFiveState(I)I
    .locals 1
    .param p0, "bluetoothState"    # I

    .line 492
    packed-switch p0, :pswitch_data_0

    .line 502
    const/4 v0, 0x4

    return v0

    .line 500
    :pswitch_0    # 0xd
    const/4 v0, 0x3

    return v0

    .line 496
    :pswitch_1    # 0xc
    const/4 v0, 0x1

    return v0

    .line 498
    :pswitch_2    # 0xb
    const/4 v0, 0x2

    return v0

    .line 494
    :pswitch_3    # 0xa
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3    # 0xa
        :pswitch_2    # 0xb
        :pswitch_1    # 0xc
        :pswitch_0    # 0xd
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 446
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_1

    .line 447
    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 448
    .local v0, "manager":Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    const/4 v1, 0x4

    if-nez v0, :cond_0

    .line 449
    return v1

    .line 451
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$802(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 452
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    if-nez v2, :cond_1

    .line 453
    return v1

    .line 456
    .end local v0
    :cond_1
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v0

    return v0
.end method

.method public getButtonDescription()I
    .locals 1

    .line 438
    const v0, 0x7f120666

    return v0
.end method

.method public getButtonId()I
    .locals 1

    .line 436
    const v0, 0x7f0a01e9

    return v0
.end method

.method public getButtonImageId(Z)I
    .locals 1
    .param p1, "on"    # Z

    .line 440
    if-eqz p1, :cond_0

    const v0, 0x7f080127

    goto :goto_0

    .line 441
    :cond_0
    const v0, 0x7f080126

    .line 440
    :goto_0
    return v0
.end method

.method public getContainerId()I
    .locals 1

    .line 435
    const v0, 0x7f0a0094

    return v0
.end method

.method public getIndicatorId()I
    .locals 1

    .line 437
    const v0, 0x7f0a01f6

    return v0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 480
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    return-void

    .line 483
    :cond_0
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 484
    .local v0, "bluetoothState":I
    invoke-static {v0}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->bluetoothStateToFiveState(I)I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 485
    return-void
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "desiredState"    # Z

    .line 461
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->access$800()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 462
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "No LocalBluetoothManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return-void

    .line 469
    :cond_0
    new-instance v0, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;-><init>(Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 475
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsAppWidgetProvider$BluetoothStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    return-void
.end method
