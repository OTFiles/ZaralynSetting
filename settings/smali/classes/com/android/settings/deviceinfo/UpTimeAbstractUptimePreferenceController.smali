.class public Lcom/android/settings/deviceinfo/UpTimeAbstractUptimePreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;
.source "UpTimeAbstractUptimePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "lifecycle"    # Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 12
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 36
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 37
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 31
    invoke-super {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 26
    invoke-super {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public onStart()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->onStart()V

    .line 17
    return-void
.end method

.method public onStop()V
    .locals 0

    .line 21
    invoke-super {p0}, Lcom/android/settingslib/deviceinfo/AbstractUptimePreferenceController;->onStop()V

    .line 22
    return-void
.end method
