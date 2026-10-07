.class Lcom/android/settings/SettingsExtraMoreSettings$2;
.super Ljava/lang/Object;
.source "SettingsExtraMoreSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsExtraMoreSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsExtraMoreSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsExtraMoreSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SettingsExtraMoreSettings;

    .line 445
    iput-object p1, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 449
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-virtual {v0}, Lcom/android/settings/SettingsExtraMoreSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "readboy_ai_assist_wakeup_switch_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 451
    .local v0, "aiAssistWakeupMode":I
    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v4}, Lcom/android/settings/SettingsExtraMoreSettings;->access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v4

    if-eq v3, v4, :cond_2

    .line 452
    iget-object v3, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v3}, Lcom/android/settings/SettingsExtraMoreSettings;->access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 453
    iget-object v3, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v3}, Lcom/android/settings/SettingsExtraMoreSettings;->access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v3

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v1}, Lcom/android/settings/SettingsExtraMoreSettings;->access$000(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 456
    :cond_2
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v1}, Lcom/android/settings/SettingsExtraMoreSettings;->access$200(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v2}, Lcom/android/settings/SettingsExtraMoreSettings;->access$100(Lcom/android/settings/SettingsExtraMoreSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v1}, Lcom/android/settings/SettingsExtraMoreSettings;->access$200(Lcom/android/settings/SettingsExtraMoreSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsExtraMoreSettings$2;->this$0:Lcom/android/settings/SettingsExtraMoreSettings;

    invoke-static {v2}, Lcom/android/settings/SettingsExtraMoreSettings;->access$100(Lcom/android/settings/SettingsExtraMoreSettings;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 461
    .end local v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    .end local v0
    :goto_1
    return-void
.end method
