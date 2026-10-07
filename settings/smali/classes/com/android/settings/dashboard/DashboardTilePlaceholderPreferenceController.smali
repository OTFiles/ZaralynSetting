.class Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "DashboardTilePlaceholderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mOrder:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 46
    .local v0, "pref":Landroid/support/v7/preference/Preference;
    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v1

    iput v1, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    .line 48
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 50
    :cond_0
    return-void
.end method

.method public getOrder()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/android/settings/dashboard/DashboardTilePlaceholderPreferenceController;->mOrder:I

    return v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "dashboard_tile_placeholder"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method
