.class public Lcom/android/settings/display/ColorModePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorModePreferenceFragment.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_COLOR_MODE_AUTOMATIC:Ljava/lang/String; = "color_mode_automatic"

.field static final KEY_COLOR_MODE_BOOSTED:Ljava/lang/String; = "color_mode_boosted"

.field static final KEY_COLOR_MODE_NATURAL:Ljava/lang/String; = "color_mode_natural"

.field static final KEY_COLOR_MODE_SATURATED:Ljava/lang/String; = "color_mode_saturated"


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 76
    new-instance v0, Lcom/android/settings/applications/LayoutPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d005c

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 78
    .local v0, "preview":Lcom/android/settings/applications/LayoutPreference;
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->configureAndInstallPreview(Lcom/android/settings/applications/LayoutPreference;Landroid/support/v7/preference/PreferenceScreen;)V

    .line 79
    return-void
.end method

.method configureAndInstallPreview(Lcom/android/settings/applications/LayoutPreference;Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "preview"    # Lcom/android/settings/applications/LayoutPreference;
    .param p2, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 70
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->setSelectable(Z)V

    .line 71
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 72
    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    .local v0, "c":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1070016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    .line 87
    .local v1, "availableColorModes":[I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v2, "candidates":Ljava/util/List;, "Ljava/util/List<Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;>;"
    if-eqz v1, :cond_4

    .line 89
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget v5, v1, v4

    .line 90
    .local v5, "colorMode":I
    const/4 v6, 0x1

    if-nez v5, :cond_0

    .line 91
    new-instance v7, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v8, 0x7f1203b1

    .line 92
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "color_mode_natural"

    invoke-direct {v7, v8, v9, v6}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 91
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 94
    :cond_0
    if-ne v5, v6, :cond_1

    .line 95
    new-instance v7, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v8, 0x7f1203b0

    .line 96
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "color_mode_boosted"

    invoke-direct {v7, v8, v9, v6}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 95
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    const/4 v7, 0x2

    if-ne v5, v7, :cond_2

    .line 99
    new-instance v7, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v8, 0x7f1203b2

    .line 100
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "color_mode_saturated"

    invoke-direct {v7, v8, v9, v6}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 99
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 102
    :cond_2
    const/4 v7, 0x3

    if-ne v5, v7, :cond_3

    .line 103
    new-instance v7, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v8, 0x7f1203af

    .line 104
    invoke-virtual {v0, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "color_mode_automatic"

    invoke-direct {v7, v8, v9, v6}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 103
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    .end local v5
    :cond_3
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    :cond_4
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getColorMode()I

    move-result v0

    .line 115
    .local v0, "colorMode":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 116
    const-string v1, "color_mode_automatic"

    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 118
    const-string v1, "color_mode_saturated"

    return-object v1

    .line 119
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 120
    const-string v1, "color_mode_boosted"

    return-object v1

    .line 122
    :cond_2
    const-string v1, "color_mode_natural"

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 146
    const/16 v0, 0x477

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 65
    const v0, 0x7f15002e

    return v0
.end method

.method public onAccessibilityTransformChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 180
    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/display/ColorModePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 183
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v0, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 51
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 52
    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onDetach()V

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    .line 59
    iput-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 61
    :cond_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x78f30bbe

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x2c14dd15

    if-eq v0, v1, :cond_2

    const v1, -0x15c4c717

    if-eq v0, v1, :cond_1

    const v1, 0x2da6f855

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "color_mode_saturated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_1
    const-string v0, "color_mode_natural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "color_mode_automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_3
    const-string v0, "color_mode_boosted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v5

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 138
    :pswitch_0    # 0x3
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v2}, Lcom/android/internal/app/ColorDisplayController;->setColorMode(I)V

    goto :goto_2

    .line 135
    :pswitch_1    # 0x2
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/ColorDisplayController;->setColorMode(I)V

    .line 136
    goto :goto_2

    .line 132
    :pswitch_2    # 0x1
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v5}, Lcom/android/internal/app/ColorDisplayController;->setColorMode(I)V

    .line 133
    goto :goto_2

    .line 129
    :pswitch_3    # 0x0
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v3}, Lcom/android/internal/app/ColorDisplayController;->setColorMode(I)V

    .line 130
    nop

    .line 141
    :goto_2
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3    # 0x0
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method
