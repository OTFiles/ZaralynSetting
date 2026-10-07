.class public Lcom/android/settings/datetime/TimeChangeListenerMixin;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeListenerMixin.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/UpdateTimeAndDateCallback;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    .line 37
    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 53
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mCallback:Lcom/android/settings/datetime/UpdateTimeAndDateCallback;

    iget-object v1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/settings/datetime/UpdateTimeAndDateCallback;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 43
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 44
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 45
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/android/settings/datetime/TimeChangeListenerMixin;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 48
    return-void
.end method
