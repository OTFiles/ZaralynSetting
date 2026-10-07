.class public Lcom/android/settings/notification/NotificationAppPreference;
.super Lcom/android/settings/widget/MasterSwitchPreference;
.source "NotificationAppPreference.java"


# instance fields
.field private mChecked:Z

.field private mEnableSwitch:Z

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/MasterSwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationAppPreference;)Landroid/widget/Switch;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppPreference;

    .line 31
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationAppPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppPreference;

    .line 31
    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/NotificationAppPreference;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/notification/NotificationAppPreference;
    .param p1, "x1"    # Z

    .line 31
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 56
    const v0, 0x7f0d0158

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 63
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    .local v0, "widgetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/android/settings/notification/NotificationAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationAppPreference$1;-><init>(Lcom/android/settings/notification/NotificationAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    :cond_0
    const v1, 0x7f0a043a

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    .line 82
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    iget-boolean v2, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 87
    :cond_1
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 94
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mChecked:Z

    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 98
    :cond_0
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1
    .param p1, "admin"    # Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 112
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAppPreference;->setSwitchEnabled(Z)V

    .line 113
    return-void
.end method

.method public setSwitchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/notification/NotificationAppPreference;->mEnableSwitch:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppPreference;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 105
    :cond_0
    return-void
.end method
