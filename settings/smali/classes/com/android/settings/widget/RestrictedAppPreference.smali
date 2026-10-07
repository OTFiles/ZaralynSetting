.class public Lcom/android/settings/widget/RestrictedAppPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "RestrictedAppPreference.java"


# instance fields
.field private mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private userRestriction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0, p2}, Lcom/android/settings/widget/RestrictedAppPreference;->initialize(Landroid/util/AttributeSet;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;Ljava/lang/String;)V
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "userRestriction"    # Ljava/lang/String;

    .line 56
    const v0, 0x7f0d0182

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/RestrictedAppPreference;->setWidgetLayoutResource(I)V

    .line 57
    new-instance v0, Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 58
    iput-object p2, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method public checkRestrictionAndSetDisabled()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    iget-object v1, p0, Lcom/android/settings/widget/RestrictedAppPreference;->userRestriction:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/RestrictedPreferenceHelper;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 111
    return-void
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V
    .locals 1
    .param p1, "preferenceManager"    # Landroid/support/v7/preference/PreferenceManager;

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onAttachedToHierarchy()V

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onAttachedToHierarchy(Landroid/support/v7/preference/PreferenceManager;)V

    .line 104
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 65
    const v0, 0x7f0a035a

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "restrictedIcon":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 69
    :cond_1
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/widget/RestrictedAppPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    invoke-super {p0}, Lcom/android/settings/widget/AppPreference;->performClick()V

    .line 76
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/widget/RestrictedAppPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->setEnabled(Z)V

    .line 84
    return-void
.end method
