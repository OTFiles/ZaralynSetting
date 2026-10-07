.class Lcom/android/settings/PadModeSettings$8;
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

    .line 1174
    iput-object p1, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressAnimEnd()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->updateCurrentLauncherStatus()V

    .line 1184
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$200(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1185
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$000(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1186
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-static {v0}, Lcom/android/settings/PadModeSettings;->access$300(Lcom/android/settings/PadModeSettings;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1187
    return-void
.end method

.method public onProgressAnimStart()V
    .locals 3

    .line 1177
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "export_standard_launcher_mode_lable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1178
    invoke-static {}, Lcom/android/settings/SettingsApp;->getInstance()Lcom/android/settings/SettingsApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/SettingsApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dream_launcher_mode_lable"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1179
    iget-object v0, p0, Lcom/android/settings/PadModeSettings$8;->this$0:Lcom/android/settings/PadModeSettings;

    invoke-virtual {v0}, Lcom/android/settings/PadModeSettings;->autoChangeToBestFitLauncherVerions()V

    .line 1180
    return-void
.end method
