.class public Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;
.super Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;
.source "AutoSyncWorkDataPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 31
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {v0}, Lcom/android/settings/Utils;->getManagedProfileWithDisabled(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 32
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 36
    const-string v0, "auto_sync_work_account_data"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 41
    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 42
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    return v1
.end method
