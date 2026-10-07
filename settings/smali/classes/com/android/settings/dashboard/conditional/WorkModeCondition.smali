.class public Lcom/android/settings/dashboard/conditional/WorkModeCondition;
.super Lcom/android/settings/dashboard/conditional/Condition;
.source "WorkModeCondition.java"


# instance fields
.field private mUm:Landroid/os/UserManager;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 2
    .param p1, "conditionManager"    # Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/Condition;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    .line 40
    return-void
.end method

.method private updateUserHandle()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 44
    .local v0, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 45
    .local v1, "profilesCount":I
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    .line 46
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 47
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 48
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 50
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    .line 51
    goto :goto_1

    .line 46
    .end local v3
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    .end local v2
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public getActions()[Ljava/lang/CharSequence;
    .locals 3

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    .line 80
    invoke-virtual {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203d8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsConstant()I
    .locals 1

    .line 105
    const/16 v0, 0x17f

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203da

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onActionClick(I)V
    .locals 3
    .param p1, "index"    # I

    .line 93
    if-nez p1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    .line 97
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    .line 101
    return-void

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPrimaryClick()V
    .locals 4

    .line 86
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mManager:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/android/settings/Settings$AccountDashboardActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 88
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 86
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 89
    return-void
.end method

.method public refreshState()V
    .locals 2

    .line 58
    invoke-direct {p0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->updateUserHandle()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUm:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/conditional/WorkModeCondition;->setActive(Z)V

    .line 60
    return-void
.end method
