.class public Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.super Landroid/app/Activity;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static createIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 3
    .param p0, "title"    # Ljava/lang/CharSequence;
    .param p1, "details"    # Ljava/lang/CharSequence;

    .line 43
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    .line 45
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 47
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method private getTitleFromOrganizationName(I)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 118
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 120
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getOrganizationNameForUser(I)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 122
    .local v2, "organizationNameForUser":Ljava/lang/CharSequence;
    :goto_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    :cond_1
    return-object v1
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 114
    instance-of v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$InternalActivity;

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v1, p0

    .line 64
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 67
    .local v2, "intent":Landroid/content/Intent;
    const-string v0, "android.app.extra.TITLE"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, "title":Ljava/lang/String;
    const-string v0, "android.app.extra.DESCRIPTION"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 69
    .local v13, "details":Ljava/lang/String;
    const-string v0, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 71
    .local v14, "alternateButton":Ljava/lang/String;
    const-string v0, "android.app.action.CONFIRM_FRP_CREDENTIAL"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 73
    .local v15, "frp":Z
    invoke-static/range {p0 .. p0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v4

    .line 74
    .local v4, "userId":I
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v0

    .line 79
    .end local v4
    .local v0, "userId":I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    .end local v0
    .restart local v4
    :catch_0
    move-exception v0

    .line 78
    .local v0, "se":Ljava/lang/SecurityException;
    sget-object v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v6, "Invalid intent extra"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v0
    :cond_0
    move v0, v4

    .end local v4
    .local v0, "userId":I
    :goto_0
    invoke-static/range {p0 .. p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v16

    .line 84
    .local v16, "isManagedProfile":Z
    if-nez v3, :cond_1

    if-eqz v16, :cond_1

    .line 85
    invoke-direct {v1, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->getTitleFromOrganizationName(I)Ljava/lang/String;

    move-result-object v3

    .line 87
    :cond_1
    new-instance v4, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v4, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    move-object v12, v4

    .line 88
    .local v12, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    new-instance v4, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v4, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-object v10, v4

    .line 93
    .local v10, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    if-eqz v15, :cond_2

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v12, v4, v3, v13, v14}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    .line 103
    .local v4, "launched":Z
    move-object/from16 v19, v10

    move-object/from16 v17, v12

    goto :goto_1

    .line 95
    .end local v4
    :cond_2
    if-eqz v16, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 96
    invoke-virtual {v10, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 99
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-wide/16 v17, 0x0

    move-object v4, v12

    move-object v7, v3

    move-object v8, v13

    move-object/from16 v19, v10

    move-wide/from16 v10, v17

    .end local v10
    .local v19, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    move-object/from16 v17, v12

    move v12, v0

    .end local v12
    .local v17, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    invoke-virtual/range {v4 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z

    move-result v4

    .restart local v4
    goto :goto_1

    .line 103
    .end local v4
    .end local v17
    .end local v19
    .restart local v10
    .restart local v12
    :cond_3
    move-object/from16 v19, v10

    move-object/from16 v17, v12

    .end local v10
    .end local v12
    .restart local v17
    .restart local v19
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object/from16 v4, v17

    move-object v7, v3

    move-object v8, v13

    move v11, v0

    invoke-virtual/range {v4 .. v11}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z

    move-result v4

    .line 106
    .restart local v4
    :goto_1
    if-nez v4, :cond_4

    .line 107
    sget-object v5, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v6, "No pattern, password or PIN set."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    .line 110
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    .line 111
    return-void
.end method
