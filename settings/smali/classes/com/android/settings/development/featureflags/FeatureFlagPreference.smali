.class public Lcom/android/settings/development/featureflags/FeatureFlagPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "FeatureFlagPreference.java"


# instance fields
.field private final mIsPersistent:Z

.field private final mKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;

    .line 30
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p2, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    .line 32
    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setKey(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    invoke-static {p2}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isPersistent(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mIsPersistent:Z

    .line 36
    iget-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mIsPersistent:Z

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1, p2}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .local v0, "isFeatureEnabled":Z
    goto :goto_0

    .line 39
    .end local v0
    :cond_0
    invoke-static {p1, p2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 41
    .restart local v0
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setCheckedInternal(Z)V

    .line 42
    return-void
.end method

.method private setCheckedInternal(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .line 55
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 56
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 2
    .param p1, "isChecked"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->setCheckedInternal(Z)V

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mIsPersistent:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/settings/development/featureflags/FeatureFlagPersistent;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/development/featureflags/FeatureFlagPreference;->mKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/FeatureFlagUtils;->setEnabled(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    :goto_0
    return-void
.end method
