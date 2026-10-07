.class public abstract Lcom/android/settings/applications/AppStateBaseBridge;
.super Ljava/lang/Object;
.source "AppStateBaseBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStateBaseBridge$Callback;,
        Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;,
        Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;
    }
.end annotation


# instance fields
.field protected final mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field protected final mAppState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected final mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

.field protected final mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

.field protected final mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 3
    .param p1, "appState"    # Lcom/android/settingslib/applications/ApplicationsState;
    .param p2, "callback"    # Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 41
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 42
    iput-object p2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mCallback:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 46
    new-instance v0, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getBackgroundLooper()Landroid/os/Looper;

    move-result-object v2

    goto :goto_1

    .line 47
    :cond_1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    :goto_1
    invoke-direct {v0, p0, v2}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    .line 48
    new-instance v0, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;-><init>(Lcom/android/settings/applications/AppStateBaseBridge;Lcom/android/settings/applications/AppStateBaseBridge$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mMainHandler:Lcom/android/settings/applications/AppStateBaseBridge$MainHandler;

    .line 49
    return-void
.end method


# virtual methods
.method public forceUpdate(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 66
    return-void
.end method

.method protected abstract loadAllExtraInfo()V
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 101
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 106
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 76
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 91
    return-void
.end method

.method public onPackageListChanged()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 71
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .line 96
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 86
    .local p1, "apps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/settingslib/applications/ApplicationsState$AppEntry;>;"
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0
    .param p1, "running"    # Z

    .line 81
    return-void
.end method

.method public pause()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 58
    return-void
.end method

.method public release()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 62
    return-void
.end method

.method public resume()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mHandler:Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppStateBaseBridge$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 53
    iget-object v0, p0, Lcom/android/settings/applications/AppStateBaseBridge;->mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 54
    return-void
.end method

.method protected abstract updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
.end method
