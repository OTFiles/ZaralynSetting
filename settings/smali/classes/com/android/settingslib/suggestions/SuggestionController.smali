.class public Lcom/android/settingslib/suggestions/SuggestionController;
.super Ljava/lang/Object;
.source "SuggestionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
    }
.end annotation


# instance fields
.field private mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

.field private final mContext:Landroid/content/Context;

.field private mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private final mServiceIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/content/ComponentName;
    .param p3, "listener"    # Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    .line 73
    iput-object p3, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    .line 75
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/android/settingslib/suggestions/SuggestionController;Landroid/service/settings/suggestions/ISuggestionService;)Landroid/service/settings/suggestions/ISuggestionService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/suggestions/SuggestionController;
    .param p1, "x1"    # Landroid/service/settings/suggestions/ISuggestionService;

    .line 36
    iput-object p1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settingslib/suggestions/SuggestionController;)Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/settingslib/suggestions/SuggestionController;

    .line 36
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mConnectionListener:Lcom/android/settingslib/suggestions/SuggestionController$ServiceConnectionListener;

    return-object v0
.end method

.method private createServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 152
    new-instance v0, Lcom/android/settingslib/suggestions/SuggestionController$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/suggestions/SuggestionController$1;-><init>(Lcom/android/settingslib/suggestions/SuggestionController;)V

    return-object v0
.end method

.method private isReady()Z
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dismissSuggestions(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 3
    .param p1, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 117
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    const-string v0, "SuggestionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuggestionController not ready, cannot dismiss "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 122
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {v0, p1}, Landroid/service/settings/suggestions/ISuggestionService;->dismissSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 125
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SuggestionController"

    const-string v2, "Error when calling dismissSuggestion()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0
    :goto_0
    return-void
.end method

.method public getSuggestions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/settings/suggestions/Suggestion;",
            ">;"
        }
    .end annotation

    .line 102
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 103
    return-object v1

    .line 106
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {v0}, Landroid/service/settings/suggestions/ISuggestionService;->getSuggestions()Ljava/util/List;

    move-result-object v0

    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 110
    :catch_0
    move-exception v0

    .line 111
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SuggestionController"

    const-string v3, "Error when calling getSuggestion()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 112
    return-object v1

    .line 107
    .end local v0
    :catch_1
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "SuggestionController"

    const-string v3, "mRemote service detached before able to query"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    return-object v1
.end method

.method public launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 3
    .param p1, "suggestion"    # Landroid/service/settings/suggestions/Suggestion;

    .line 129
    invoke-direct {p0}, Lcom/android/settingslib/suggestions/SuggestionController;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const-string v0, "SuggestionController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SuggestionController not ready, cannot launch "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 135
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    invoke-interface {v0, p1}, Landroid/service/settings/suggestions/ISuggestionService;->launchSuggestion(Landroid/service/settings/suggestions/Suggestion;)V

    .line 138
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SuggestionController"

    const-string v2, "Error when calling launchSuggestion()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 139
    .end local v0
    :goto_0
    return-void
.end method

.method public start()V
    .locals 5

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceIntent:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 83
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 82
    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 84
    return-void
.end method

.method public stop()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    if-eqz v0, :cond_0

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mRemoteService:Landroid/service/settings/suggestions/ISuggestionService;

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/suggestions/SuggestionController;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 94
    :cond_0
    return-void
.end method
