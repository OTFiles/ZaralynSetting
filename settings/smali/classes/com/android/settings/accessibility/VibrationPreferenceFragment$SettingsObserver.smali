.class Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;


# direct methods
.method public constructor <init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    .line 220
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 221
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 234
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->updateCandidates()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->playVibrationPreview()V

    .line 236
    return-void
.end method

.method public register()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    .line 225
    invoke-virtual {v1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 224
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 226
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->this$0:Lcom/android/settings/accessibility/VibrationPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 230
    return-void
.end method
