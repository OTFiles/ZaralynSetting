.class public Lcom/android/settings/notification/ZenModeAutomationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ZenModeAutomationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance v0, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-direct {v0, p1}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    .line 34
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "zen_mode_automation_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAutomationPreferenceController;->mSummaryBuilder:Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeSettings$SummaryBuilder;->getAutomaticRulesSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 49
    return-void
.end method
