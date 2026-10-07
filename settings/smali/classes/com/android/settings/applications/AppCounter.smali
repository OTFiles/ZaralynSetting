.class public abstract Lcom/android/settings/applications/AppCounter;
.super Landroid/os/AsyncTask;
.source "AppCounter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field protected final mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field protected final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageManager"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 34
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/settings/applications/AppCounter;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 36
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    .line 37
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .line 41
    const/4 v0, 0x0

    .line 42
    .local v0, "count":I
    iget-object v1, p0, Lcom/android/settings/applications/AppCounter;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 43
    .local v2, "user":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/android/settings/applications/AppCounter;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const v4, 0x8200

    .line 46
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_0

    const/high16 v5, 0x400000

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_1
    or-int/2addr v4, v5

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 44
    invoke-virtual {v3, v4, v5}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledApplicationsAsUser(II)Ljava/util/List;

    move-result-object v3

    .line 48
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 49
    .local v5, "info":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppCounter;->includeInCount(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    add-int/lit8 v0, v0, 0x1

    .line 52
    .end local v5
    :cond_1
    goto :goto_2

    .line 53
    .end local v2
    .end local v3
    :cond_2
    goto :goto_0

    .line 54
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 29
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppCounter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method executeInForeground()V
    .locals 1

    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppCounter;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppCounter;->onPostExecute(Ljava/lang/Integer;)V

    .line 64
    return-void
.end method

.method protected abstract includeInCount(Landroid/content/pm/ApplicationInfo;)Z
.end method

.method protected abstract onCountComplete(I)V
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "count"    # Ljava/lang/Integer;

    .line 59
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppCounter;->onCountComplete(I)V

    .line 60
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 29
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/AppCounter;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
