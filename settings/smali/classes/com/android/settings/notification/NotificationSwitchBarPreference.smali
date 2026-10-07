.class public Lcom/android/settings/notification/NotificationSwitchBarPreference;
.super Lcom/android/settings/applications/LayoutPreference;
.source "NotificationSwitchBarPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mEnableSwitch:Z

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Lcom/android/settings/widget/ToggleSwitch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSwitchBarPreference;

    .line 28
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSwitchBarPreference;

    .line 28
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settings/notification/NotificationSwitchBarPreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationSwitchBarPreference;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    return p1
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/applications/LayoutPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 40
    const v0, 0x1020040

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ToggleSwitch;

    iput-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 41
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;-><init>(Lcom/android/settings/notification/NotificationSwitchBarPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    iget-boolean v1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mEnableSwitch:Z

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setEnabled(Z)V

    .line 58
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 65
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mChecked:Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference;->mSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ToggleSwitch;->setChecked(Z)V

    .line 69
    :cond_0
    return-void
.end method
