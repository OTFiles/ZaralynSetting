.class public abstract Lcom/android/settings/vpn2/ManageablePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "ManageablePreference.java"


# static fields
.field public static STATE_NONE:I


# instance fields
.field mIsAlwaysOn:Z

.field mState:I

.field mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 37
    sget v1, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    iput v1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 42
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setPersistent(Z)V

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setOrder(I)V

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ManageablePreference;->setUserId(I)V

    .line 45
    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    return v0
.end method

.method public setAlwaysOn(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .line 73
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eq v0, p1, :cond_0

    .line 74
    iput-boolean p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 77
    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 65
    iget v0, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    if-eq v0, p1, :cond_0

    .line 66
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->updateSummary()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->notifyHierarchyChanged()V

    .line 70
    :cond_0
    return-void
.end method

.method public setUserId(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 52
    iput p1, p0, Lcom/android/settings/vpn2/ManageablePreference;->mUserId:I

    .line 53
    const-string v0, "no_config_vpn"

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method protected updateSummary()V
    .locals 7

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ManageablePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 87
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f030082

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "states":[Ljava/lang/String;
    iget v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    sget v3, Lcom/android/settings/vpn2/ManageablePreference;->STATE_NONE:I

    if-ne v2, v3, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/android/settings/vpn2/ManageablePreference;->mState:I

    aget-object v2, v1, v2

    .line 89
    .local v2, "summary":Ljava/lang/String;
    :goto_0
    iget-boolean v3, p0, Lcom/android/settings/vpn2/ManageablePreference;->mIsAlwaysOn:Z

    if-eqz v3, :cond_2

    .line 90
    const v3, 0x7f120ffe

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    .local v3, "alwaysOnString":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    goto :goto_1

    :cond_1
    const v4, 0x7f120732

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {v0, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    move-object v2, v4

    .line 94
    .end local v3
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/vpn2/ManageablePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    return-void
.end method
