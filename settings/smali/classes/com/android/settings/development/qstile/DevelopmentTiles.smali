.class public abstract Lcom/android/settings/development/qstile/DevelopmentTiles;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isEnabled()Z
.end method

.method public onClick()V
    .locals 2

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    .line 91
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    .line 93
    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 53
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    .line 55
    return-void
.end method

.method public refresh()V
    .locals 5

    .line 59
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    .line 63
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 65
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .local v0, "cn":Landroid/content/ComponentName;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 70
    const-string v1, "statusbar"

    .line 71
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 70
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    .line 72
    .local v1, "statusBarService":Lcom/android/internal/statusbar/IStatusBarService;
    if-eqz v1, :cond_1

    .line 73
    const v2, 0x534e4554

    const-string v3, "117770924"

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 74
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V

    .line 79
    .end local v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "DevelopmentTiles"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to modify QS tile for component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 80
    .end local v1
    :goto_0
    const/4 v0, 0x0

    .line 81
    .local v0, "state":I
    goto :goto_1

    .line 82
    .end local v0
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v1

    .line 84
    .restart local v0
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/quicksettings/Tile;->updateTile()V

    .line 86
    return-void
.end method

.method protected abstract setIsEnabled(Z)V
.end method
