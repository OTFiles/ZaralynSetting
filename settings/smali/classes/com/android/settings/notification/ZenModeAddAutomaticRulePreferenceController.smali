.class public Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;
    }
.end annotation


# instance fields
.field private final mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/utils/ZenServiceListing;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/app/Fragment;
    .param p3, "serviceListing"    # Lcom/android/settings/utils/ZenServiceListing;
    .param p4, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 37
    const-string v0, "zen_mode_add_automatic_rule"

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    .line 39
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    const-string v0, "zen_mode_add_automatic_rule"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 55
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 56
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 57
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 43
    const-string v0, "zen_mode_add_automatic_rule"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 61
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mParent:Landroid/app/Fragment;

    new-instance v2, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$RuleSelectionListener;-><init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V

    iget-object v3, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;->mZenServiceListing:Lcom/android/settings/utils/ZenServiceListing;

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->show(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settings/notification/ZenRuleSelectionDialog$PositiveClickListener;Lcom/android/settings/utils/ZenServiceListing;)V

    .line 63
    const/4 v0, 0x1

    return v0
.end method
