.class public Lcom/android/settings/accounts/AccountHeaderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mActivity:Landroid/app/Activity;

.field private mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

.field private final mHost:Landroid/support/v14/preference/PreferenceFragment;

.field private final mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;Landroid/support/v14/preference/PreferenceFragment;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "host"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p5, "args"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 55
    iput-object p3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 56
    iput-object p4, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHost:Landroid/support/v14/preference/PreferenceFragment;

    .line 57
    const/4 v0, 0x0

    if-eqz p5, :cond_0

    const-string v1, "account"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string v1, "account"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    goto :goto_0

    .line 60
    :cond_0
    iput-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 63
    :goto_0
    if-eqz p5, :cond_1

    const-string v1, "user_handle"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v0, "user_handle"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    goto :goto_1

    .line 66
    :cond_1
    iput-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 68
    :goto_1
    if-eqz p2, :cond_2

    .line 69
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 71
    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 85
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 86
    const-string v0, "account_header"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    .line 87
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "account_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResume()V
    .locals 5

    .line 91
    new-instance v0, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    .line 93
    .local v0, "helper":Lcom/android/settingslib/accounts/AuthenticatorHelper;
    iget-object v1, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHost:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mHeaderPreference:Lcom/android/settings/applications/LayoutPreference;

    .line 94
    const v4, 0x7f0a0169

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 96
    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 97
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Z)Landroid/view/View;

    .line 98
    return-void
.end method
