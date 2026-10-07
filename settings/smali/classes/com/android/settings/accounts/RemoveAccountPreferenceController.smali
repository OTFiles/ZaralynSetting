.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mParentFragment:Landroid/app/Fragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/app/Fragment;

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    .line 62
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    const-string v0, "remove_account"

    .line 68
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    .line 69
    .local v0, "removeAccountPreference":Lcom/android/settings/applications/LayoutPreference;
    const v1, 0x7f0a00ad

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 70
    .local v1, "removeAccountButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "remove_account"

    return-object v0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userHandle"    # Landroid/os/UserHandle;

    .line 98
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 99
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 100
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_modify_accounts"

    iget-object v2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 87
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 86
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 88
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-eqz v0, :cond_0

    .line 89
    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 90
    return-void

    .line 94
    .end local v0
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {v0, v1, v2}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroid/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    .line 95
    return-void
.end method
