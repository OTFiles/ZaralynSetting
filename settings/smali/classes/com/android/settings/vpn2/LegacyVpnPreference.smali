.class public Lcom/android/settings/vpn2/LegacyVpnPreference;
.super Lcom/android/settings/vpn2/ManageablePreference;
.source "LegacyVpnPreference.java"


# instance fields
.field private mProfile:Lcom/android/internal/net/VpnProfile;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ManageablePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const v0, 0x7f08022d

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setIcon(I)V

    .line 39
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setIconSize(I)V

    .line 40
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 58
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    if-eqz v0, :cond_1

    .line 59
    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 61
    .local v0, "another":Lcom/android/settings/vpn2/LegacyVpnPreference;
    iget v1, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    iget v2, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    sub-int/2addr v1, v2

    move v2, v1

    .local v2, "result":I
    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    move v2, v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v3, v3, Lcom/android/internal/net/VpnProfile;->type:I

    sub-int/2addr v1, v3

    move v2, v1

    if-nez v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 66
    :cond_0
    return v2

    .line 67
    .end local v0
    .end local v2
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_3

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 70
    .local v0, "another":Lcom/android/settings/vpn2/AppPreference;
    iget v1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 71
    const/4 v1, 0x1

    return v1

    .line 74
    :cond_2
    const/4 v1, -0x1

    return v1

    .line 76
    .end local v0
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 82
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a03c3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->performClick()V

    .line 84
    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/vpn2/ManageablePreference;->onClick(Landroid/view/View;)V

    .line 87
    return-void
.end method

.method public setProfile(Lcom/android/internal/net/VpnProfile;)V
    .locals 3
    .param p1, "profile"    # Lcom/android/internal/net/VpnProfile;

    .line 47
    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v0, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 48
    .local v0, "oldLabel":Ljava/lang/String;
    :goto_0
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    nop

    .line 49
    .local v1, "newLabel":Ljava/lang/String;
    :cond_1
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 50
    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->notifyHierarchyChanged()V

    .line 53
    :cond_2
    iput-object p1, p0, Lcom/android/settings/vpn2/LegacyVpnPreference;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 54
    return-void
.end method
