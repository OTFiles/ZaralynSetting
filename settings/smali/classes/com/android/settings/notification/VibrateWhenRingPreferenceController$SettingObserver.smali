.class final Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "VibrateWhenRingPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/VibrateWhenRingPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field private final VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0
    .param p2, "preference"    # Landroid/support/v7/preference/Preference;

    .line 104
    iput-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    .line 105
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 99
    const-string p1, "vibrate_when_ringing"

    .line 100
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    .line 106
    iput-object p2, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    .line 107
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 120
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 124
    :cond_0
    return-void
.end method

.method public register(Z)V
    .locals 3
    .param p1, "register"    # Z

    .line 110
    iget-object v0, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->this$0:Lcom/android/settings/notification/VibrateWhenRingPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/VibrateWhenRingPreferenceController;->access$000(Lcom/android/settings/notification/VibrateWhenRingPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 111
    .local v0, "cr":Landroid/content/ContentResolver;
    if-eqz p1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/settings/notification/VibrateWhenRingPreferenceController$SettingObserver;->VIBRATE_WHEN_RINGING_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 116
    :goto_0
    return-void
.end method
