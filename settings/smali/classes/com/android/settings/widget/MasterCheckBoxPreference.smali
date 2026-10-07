.class public Lcom/android/settings/widget/MasterCheckBoxPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mEnableCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterCheckBoxPreference;

    .line 33
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterCheckBoxPreference;

    .line 33
    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/widget/MasterCheckBoxPreference;
    .param p1, "x1"    # Z

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 58
    const v0, 0x7f0d0157

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 63
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 64
    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 65
    .local v0, "widgetView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 66
    new-instance v1, Lcom/android/settings/widget/MasterCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    :cond_0
    const v1, 0x7f0a00dd

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 83
    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 86
    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 88
    :cond_1
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 112
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 101
    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 105
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 92
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    .line 94
    return-void
.end method
