.class public Lcom/android/settings/network/NetworkResetRestrictionChecker;
.super Ljava/lang/Object;
.source "NetworkResetRestrictionChecker.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mContext:Landroid/content/Context;

    .line 33
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mUserManager:Landroid/os/UserManager;

    .line 34
    return-void
.end method


# virtual methods
.method hasUserBaseRestriction()Z
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mContext:Landroid/content/Context;

    const-string v1, "no_network_reset"

    .line 39
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 38
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasUserRestriction()Z
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkResetRestrictionChecker;->hasUserBaseRestriction()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 49
    :goto_1
    return v0
.end method

.method isRestrictionEnforcedByAdmin()Z
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/android/settings/network/NetworkResetRestrictionChecker;->mContext:Landroid/content/Context;

    const-string v1, "no_network_reset"

    .line 45
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 44
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
