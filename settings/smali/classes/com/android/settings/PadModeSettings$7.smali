.class Lcom/android/settings/PadModeSettings$7;
.super Ljava/lang/Object;
.source "PadModeSettings.java"

# interfaces
.implements Lcom/android/settings/custom/CustomProgressBar$OnProgressBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/PadModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/PadModeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/PadModeSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/PadModeSettings;

    .line 1151
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$7;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressAnimEnd()V
    .locals 2

    .line 1167
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$7;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1168
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$7;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$7;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1170
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$7;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1171
    return-void
.end method

.method public onProgressAnimStart()V
    .locals 4

    .line 1154
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isEBagPadModel()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 1155
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Launch_version"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1157
    :cond_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->isNormalPadZxsModel()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1158
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "Launch_version"

    const/4 v3, 0x4

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 1160
    :cond_1
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "export_standard_launcher_mode_lable"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1163
    :goto_0
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dream_launcher_mode_lable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1164
    return-void
.end method
