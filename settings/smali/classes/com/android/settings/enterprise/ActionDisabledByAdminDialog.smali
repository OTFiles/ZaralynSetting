.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;
.super Landroid/app/Activity;
.source "ActionDisabledByAdminDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 56
    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    .line 57
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    if-nez p1, :cond_0

    .line 58
    return-object v0

    .line 60
    :cond_0
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    iput-object v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 61
    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 62
    return-object v0
.end method

.method getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 67
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 68
    :cond_0
    const-string v0, "android.app.extra.RESTRICTION"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    nop

    .line 38
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 39
    .local v0, "enforcedAdmin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 40
    .local v1, "restriction":Ljava/lang/String;
    new-instance v2, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-direct {v2, p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    .line 41
    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 42
    invoke-virtual {v2, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 43
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 44
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->finish()V

    .line 74
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getAdminDetailsFromIntent(Landroid/content/Intent;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 50
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0, p1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->getRestrictionFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, "restriction":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialog;->mDialogHelper:Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 52
    return-void
.end method
