.class public abstract Lcom/android/settings/core/TogglePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TogglePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "TogglePrefController"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferenceKey"    # Ljava/lang/String;

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public getSliceType()I
    .locals 1

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public abstract isChecked()Z
.end method

.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 63
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->setChecked(Z)Z

    move-result v0

    return v0
.end method

.method public abstract setChecked(Z)Z
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 52
    instance-of v0, p1, Landroid/support/v7/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 53
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 54
    :cond_0
    instance-of v0, p1, Lcom/android/settings/widget/MasterSwitchPreference;

    if-eqz v0, :cond_1

    .line 55
    move-object v0, p1

    check-cast v0, Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->refreshSummary(Landroid/support/v7/preference/Preference;)V

    .line 59
    :goto_0
    return-void
.end method
