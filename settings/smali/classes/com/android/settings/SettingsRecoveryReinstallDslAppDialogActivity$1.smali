.class Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;
.super Ljava/lang/Object;
.source "SettingsRecoveryReinstallDslAppDialogActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->prompteUserInstallReadboyApps(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iret:I


# direct methods
.method constructor <init>(ILandroid/content/Context;)V
    .locals 0

    .line 463
    iput p1, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;->val$iret:I

    iput-object p2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 467
    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====divhee=========prompteUserInstallReadboyApps======iret5="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;->val$iret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object v2, p0, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    const v4, 0x7f120453

    const v5, 0x7f120b85

    const v6, 0x7f120b80

    const v7, 0x7f120b7f

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/settings/SettingsRecoveryReinstallDslAppDialogActivity;->startRecoverReinstallReadboyAppsDialog(Landroid/content/Context;IIIIIZ)V

    .line 477
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 478
    .end local v0
    :goto_0
    return-void
.end method
