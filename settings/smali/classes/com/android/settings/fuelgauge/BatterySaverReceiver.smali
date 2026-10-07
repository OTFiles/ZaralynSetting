.class public Lcom/android/settings/fuelgauge/BatterySaverReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;
    }
.end annotation


# instance fields
.field private mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

.field private mContext:Landroid/content/Context;

.field private mRegistered:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz v1, :cond_2

    .line 44
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onPowerSaveModeChanged()V

    goto :goto_0

    .line 46
    :cond_0
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 48
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    if-eqz v1, :cond_2

    .line 49
    const-string v1, "plugged"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v1, v2

    .line 50
    .local v1, "pluggedIn":Z
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    invoke-interface {v2, v1}, Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;->onBatteryChanged(Z)V

    .line 53
    .end local v1
    :cond_2
    :goto_0
    return-void
.end method

.method public setBatterySaverListener(Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;)V
    .locals 0
    .param p1, "lsn"    # Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    .line 69
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mBatterySaverListener:Lcom/android/settings/fuelgauge/BatterySaverReceiver$BatterySaverListener;

    .line 70
    return-void
.end method

.method public setListening(Z)V
    .locals 2
    .param p1, "listening"    # Z

    .line 56
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    .local v0, "ifilter":Landroid/content/IntentFilter;
    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    .line 62
    .end local v0
    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatterySaverReceiver;->mRegistered:Z

    .line 66
    :cond_1
    :goto_0
    return-void
.end method
