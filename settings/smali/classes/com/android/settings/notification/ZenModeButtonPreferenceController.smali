.class public Lcom/android/settings/notification/ZenModeButtonPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeButtonPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mFragment:Landroid/app/FragmentManager;

.field private mZenButtonOff:Landroid/widget/Button;

.field private mZenButtonOn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;
    .param p3, "fragment"    # Landroid/app/FragmentManager;

    .line 43
    const-string v0, "zen_mode_settings_button_container"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 44
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mFragment:Landroid/app/FragmentManager;

    .line 45
    return-void
.end method

.method public static synthetic lambda$updateState$0(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/16 v3, 0x4f4

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 74
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$1(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 103
    new-instance v0, Lcom/android/settings/notification/SettingsEnableZenModeDialog;

    invoke-direct {v0}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;-><init>()V

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mFragment:Landroid/app/FragmentManager;

    const-string v2, "EnableZenModeButton"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/SettingsEnableZenModeDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$2(Lcom/android/settings/notification/ZenModeButtonPreferenceController;Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    .line 111
    return-void
.end method

.method public static synthetic lambda$updateZenButtonOnClickListener$3(Lcom/android/settings/notification/ZenModeButtonPreferenceController;ILandroid/view/View;)V
    .locals 4
    .param p1, "zenDuration"    # I
    .param p2, "v"    # Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x4f4

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, p1}, Lcom/android/settings/notification/ZenModeBackend;->setZenModeForDuration(I)V

    .line 118
    return-void
.end method

.method private updateButtons()V
    .locals 3

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->getZenMode()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateZenButtonOnClickListener()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 85
    :pswitch_0    # 0x2 0x3 0x1
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 87
    nop

    .line 94
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0    # 0x1
        :pswitch_0    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private updateZenButtonOnClickListener()V
    .locals 3

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->getZenDuration()I

    move-result v0

    .line 98
    .local v0, "zenDuration":I
    packed-switch v0, :pswitch_data_0

    .line 114
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$NQfCfaUFz6J6tbPXZDP09CGnoAo;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 107
    :pswitch_0    # 0x0
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$16-xvFNOTseGHNtlUJrmr4Oa8o8;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$16-xvFNOTseGHNtlUJrmr4Oa8o8;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    goto :goto_0

    .line 100
    :pswitch_1    # -0x1
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$KAk_Mj51Obvq4mW4RobrcR4_CRM;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$KAk_Mj51Obvq4mW4RobrcR4_CRM;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    nop

    .line 120
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1    # -0x1
        :pswitch_0    # 0x0
    .end packed-switch
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "zen_mode_settings_button_container"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    if-nez v0, :cond_0

    .line 62
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a050a

    .line 63
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOn:Landroid/widget/Button;

    .line 64
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateZenButtonOnClickListener()V

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0509

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->mZenButtonOff:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RnfY8k3LZN005jbH9s0d6akYfFk;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$ZenModeButtonPreferenceController$RnfY8k3LZN005jbH9s0d6akYfFk;-><init>(Lcom/android/settings/notification/ZenModeButtonPreferenceController;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeButtonPreferenceController;->updateButtons()V

    .line 78
    return-void
.end method
