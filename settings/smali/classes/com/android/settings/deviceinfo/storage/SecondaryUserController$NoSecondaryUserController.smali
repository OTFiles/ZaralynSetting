.class Lcom/android/settings/deviceinfo/storage/SecondaryUserController$NoSecondaryUserController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecondaryUserController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/storage/SecondaryUserController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NoSecondaryUserController"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 183
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 187
    const-string v0, "pref_secondary_users"

    .line 188
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    .line 189
    .local v0, "group":Landroid/support/v7/preference/PreferenceGroup;
    if-nez v0, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 193
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 202
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 197
    const/4 v0, 0x1

    return v0
.end method
