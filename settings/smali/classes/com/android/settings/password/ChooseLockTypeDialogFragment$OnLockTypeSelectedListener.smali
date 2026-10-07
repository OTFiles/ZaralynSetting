.class public interface abstract Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
.super Ljava/lang/Object;
.source "ChooseLockTypeDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLockTypeSelectedListener"
.end annotation


# virtual methods
.method public abstract onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
.end method

.method public startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V
    .locals 6
    .param p1, "selectedLockType"    # Lcom/android/settings/password/ScreenLockType;
    .param p2, "activity"    # Landroid/app/Activity;

    .line 70
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 71
    .local v0, "activityIntent":Landroid/content/Intent;
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 72
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x2000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    const-string v2, "has_challenge"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 77
    const-string v2, "show_options_button"

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    .line 79
    const-string v2, "choose_lock_generic_extras"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    const-string v2, "choose_lock_generic_extras"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 84
    :cond_0
    const-string v2, "lockscreen.password_type"

    iget v3, p1, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 85
    const-string v2, "challenge"

    const-string v3, "challenge"

    const-wide/16 v4, 0x0

    .line 86
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 85
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 87
    invoke-static {v0, v1}, Lcom/android/setupwizardlib/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p2, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 89
    invoke-virtual {p2}, Landroid/app/Activity;->finish()V

    .line 90
    return-void
.end method
