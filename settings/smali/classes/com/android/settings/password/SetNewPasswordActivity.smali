.class public Lcom/android/settings/password/SetNewPasswordActivity;
.super Landroid/app/Activity;
.source "SetNewPasswordActivity.java"

# interfaces
.implements Lcom/android/settings/password/SetNewPasswordController$Ui;


# instance fields
.field private mNewPasswordAction:Ljava/lang/String;

.field private mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public launchChooseLock(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "chooseLockFingerprintExtras"    # Landroid/os/Bundle;

    .line 58
    invoke-static {p0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 59
    .local v0, "isInSetupWizard":Z
    if-eqz v0, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 60
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    invoke-virtual {v1, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v1}, Lcom/android/settings/password/SetNewPasswordActivity;->startActivity(Landroid/content/Intent;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 42
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    .line 45
    const-string v0, "android.app.action.SET_NEW_PASSWORD"

    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mNewPasswordAction:Ljava/lang/String;

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    const-string v0, "SetNewPasswordActivity"

    const-string v1, "Unexpected action to launch this activity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->finish()V

    .line 49
    return-void

    .line 51
    :cond_0
    nop

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetNewPasswordActivity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 51
    invoke-static {p0, p0, v0, v1}, Lcom/android/settings/password/SetNewPasswordController;->create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordActivity;->mSetNewPasswordController:Lcom/android/settings/password/SetNewPasswordController;

    invoke-virtual {v0}, Lcom/android/settings/password/SetNewPasswordController;->dispatchSetNewPasswordIntent()V

    .line 54
    return-void
.end method
