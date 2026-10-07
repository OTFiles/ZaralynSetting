.class public abstract Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RingtonePreferenceControllerBase.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 32
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 33
    return-void
.end method


# virtual methods
.method public abstract getRingtoneType()I
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 47
    iget-object v0, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 48
    .local v0, "ringtoneUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 50
    .local v1, "summary":Ljava/lang/CharSequence;
    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 53
    :cond_0
    return-void
.end method
