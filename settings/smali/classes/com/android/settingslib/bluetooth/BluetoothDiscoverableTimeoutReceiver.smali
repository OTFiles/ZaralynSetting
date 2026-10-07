.class public Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDiscoverableTimeoutReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelDiscoverableAlarm(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 57
    const-string v0, "BluetoothDiscoverableTimeoutReceiver"

    const-string v1, "cancelDiscoverableAlarm(): Enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 61
    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 63
    .local v1, "pending":Landroid/app/PendingIntent;
    if-eqz v1, :cond_0

    .line 65
    const-string v2, "alarm"

    .line 66
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 68
    .local v2, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 70
    .end local v2
    :cond_0
    return-void
.end method

.method public static setDiscoverableAlarm(Landroid/content/Context;J)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "alarmTime"    # J

    .line 36
    const-string v0, "BluetoothDiscoverableTimeoutReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDiscoverableAlarm(): alarmTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/android/settingslib/bluetooth/BluetoothDiscoverableTimeoutReceiver;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 40
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 42
    .local v2, "pending":Landroid/app/PendingIntent;
    const-string v3, "alarm"

    .line 43
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    .line 45
    .local v3, "alarmManager":Landroid/app/AlarmManager;
    if-eqz v2, :cond_0

    .line 47
    invoke-virtual {v3, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 48
    const-string v4, "BluetoothDiscoverableTimeoutReceiver"

    const-string v5, "setDiscoverableAlarm(): cancel prev alarm"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 53
    invoke-virtual {v3, v1, p1, p2, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 54
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.intent.DISCOVERABLE_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 77
    :cond_0
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v0

    .line 78
    .local v0, "localBluetoothAdapter":Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    if-eqz v0, :cond_1

    .line 79
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_1

    .line 80
    const-string v1, "BluetoothDiscoverableTimeoutReceiver"

    const-string v2, "Disable discoverable..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setScanMode(I)V

    goto :goto_0

    .line 83
    :cond_1
    const-string v1, "BluetoothDiscoverableTimeoutReceiver"

    const-string v2, "localBluetoothAdapter is NULL!!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return-void

    .line 75
    .end local v0
    :cond_2
    :goto_1
    return-void
.end method
