.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 58
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 63
    const v0, 0x7f0d0154

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 79
    const v0, 0x7f0a00de

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    .local v0, "buttonFrame":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    .line 84
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    :cond_1
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 89
    .local v1, "gear":Landroid/view/View;
    const v2, 0x7f0a04a5

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 90
    .local v2, "divider":Landroid/view/View;
    iget-object v3, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v3, :cond_2

    .line 91
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 95
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v0, :cond_1

    .line 127
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00de

    if-ne v0, v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .line 106
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    .line 67
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    .line 69
    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    .line 74
    return-void
.end method
