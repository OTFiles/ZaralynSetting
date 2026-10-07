.class public Lcom/android/settings/password/ChooseLockGenericController;
.super Ljava/lang/Object;
.source "ChooseLockGenericController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I

    .line 42
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 45
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 46
    invoke-static {p1, p2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v1

    .line 42
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V

    .line 47
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/ManagedLockPasswordProvider;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "dpm"    # Landroid/app/admin/DevicePolicyManager;
    .param p4, "managedLockPasswordProvider"    # Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    .line 56
    iput p2, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    .line 57
    iput-object p4, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 58
    iput-object p3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 59
    return-void
.end method


# virtual methods
.method public getTitle(Lcom/android/settings/password/ScreenLockType;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "type"    # Lcom/android/settings/password/ScreenLockType;

    .line 117
    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    const/4 v0, 0x0

    return-object v0

    .line 127
    :pswitch_0    # 0x6
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f15

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 125
    :pswitch_1    # 0x5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 123
    :pswitch_2    # 0x4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 129
    :pswitch_3    # 0x3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 121
    :pswitch_4    # 0x2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f11

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 119
    :pswitch_5    # 0x1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f13

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5    # 0x1
        :pswitch_4    # 0x2
        :pswitch_3    # 0x3
        :pswitch_2    # 0x4
        :pswitch_1    # 0x5
        :pswitch_0    # 0x6
    .end packed-switch
.end method

.method public getVisibleScreenLockTypes(IZ)Ljava/util/List;
    .locals 7
    .param p1, "quality"    # I
    .param p2, "includeDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List<",
            "Lcom/android/settings/password/ScreenLockType;",
            ">;"
        }
    .end annotation

    .line 146
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result v0

    .line 147
    .local v0, "upgradedQuality":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v1, "locks":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/password/ScreenLockType;>;"
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    .line 150
    .local v5, "lock":Lcom/android/settings/password/ScreenLockType;
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 151
    if-nez p2, :cond_0

    invoke-virtual {p0, v5, v0}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 152
    :cond_0
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v5
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 156
    :cond_2
    return-object v1
.end method

.method public isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 4
    .param p1, "type"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "adminEnforcedQuality"    # I

    .line 105
    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge v0, p2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 106
    .local v0, "disabledByAdmin":Z
    :goto_0
    sget-object v3, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    if-ne p1, v3, :cond_3

    .line 107
    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 108
    invoke-virtual {v3}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :goto_2
    move v0, v1

    .line 110
    :cond_3
    return v0
.end method

.method public isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z
    .locals 1
    .param p1, "type"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "quality"    # I

    .line 95
    iget v0, p1, Lcom/android/settings/password/ScreenLockType;->maxQuality:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/settings/password/ScreenLockType;

    .line 74
    sget-object v0, Lcom/android/settings/password/ChooseLockGenericController$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 84
    return v1

    .line 82
    :pswitch_0    # 0x3
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isManagedPasswordChoosable()Z

    move-result v0

    return v0

    .line 78
    :pswitch_1    # 0x2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    .line 80
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 78
    :goto_0
    return v1

    .line 76
    :pswitch_2    # 0x1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f05000d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method public upgradeQuality(I)I
    .locals 3
    .param p1, "quality"    # I

    .line 67
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGenericController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGenericController;->mUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method
