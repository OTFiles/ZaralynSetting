.class public Lcom/android/settings/display/AmbientDisplayPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AmbientDisplayPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private final mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

.field private final mKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/hardware/AmbientDisplayConfiguration;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/android/internal/hardware/AmbientDisplayConfiguration;
    .param p3, "key"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    .line 39
    iput-object p3, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mIsAvailable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    invoke-virtual {v0}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->available()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 49
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    const v0, 0x7f1200eb

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->pulseOnNotificationEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    const v0, 0x7f1200ec

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/AmbientDisplayPreferenceController;->mConfig:Lcom/android/internal/hardware/AmbientDisplayConfiguration;

    sget v1, Lcom/android/settings/display/AmbientDisplayPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1}, Lcom/android/internal/hardware/AmbientDisplayConfiguration;->enabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const v0, 0x7f120e47

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 57
    :cond_2
    const v0, 0x7f120e45

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 59
    :goto_0
    return-void
.end method
