.class public abstract Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AbstractConnectivityPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;
    }
.end annotation


# instance fields
.field private final mConnectivityReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$1;-><init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 60
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;

    .line 38
    invoke-direct {p0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->getHandler()Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method private getHandler()Landroid/os/Handler;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;

    invoke-direct {v0, p0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController$ConnectivityEventHandler;-><init>(Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;)V

    iput-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Landroid/os/Handler;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract getConnectivityIntents()[Ljava/lang/String;
.end method

.method public onStart()V
    .locals 6

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 70
    .local v0, "connectivityIntentFilter":Landroid/content/IntentFilter;
    invoke-virtual {p0}, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->getConnectivityIntents()[Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "intents":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 72
    .local v4, "intent":Ljava/lang/String;
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    .end local v4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "android.permission.CHANGE_NETWORK_STATE"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;->mConnectivityReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method protected abstract updateConnectivity()V
.end method
