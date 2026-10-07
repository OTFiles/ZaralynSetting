.class public final Lcom/android/settings/password/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 59
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 64
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 65
    return-void
.end method

.method private copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2
    .param p1, "inIntent"    # Landroid/content/Intent;
    .param p2, "outIntent"    # Landroid/content/Intent;

    .line 343
    const-string v0, "theme"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    .local v0, "theme":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 345
    const-string v1, "theme"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    :cond_0
    return-void
.end method

.method private copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 4
    .param p1, "inIntent"    # Landroid/content/Intent;
    .param p2, "outIntent"    # Landroid/content/Intent;

    .line 324
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    .line 325
    .local v0, "intentSender":Landroid/content/IntentSender;
    if-eqz v0, :cond_0

    .line 326
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 328
    :cond_0
    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 329
    .local v1, "taskId":I
    if-eq v1, v2, :cond_1

    .line 330
    const-string v3, "android.intent.extra.TASK_ID"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 336
    :cond_1
    if-nez v0, :cond_2

    if-eq v1, v2, :cond_3

    .line 337
    :cond_2
    const/high16 v2, 0x800000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 338
    const/high16 v2, 0x40000000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 340
    :cond_3
    return-void
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "message"    # Ljava/lang/CharSequence;
    .param p6, "returnCredentials"    # Z
    .param p7, "external"    # Z
    .param p8, "hasChallenge"    # Z
    .param p9, "challenge"    # J
    .param p11, "userId"    # I
    .param p12, "alternateButton"    # Ljava/lang/CharSequence;
    .param p13, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Class<",
            "*>;ZZZJI",
            "Ljava/lang/CharSequence;",
            "Landroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    .local p5, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p7

    .line 282
    move-object/from16 v3, p13

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 283
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "com.android.settings.ConfirmCredentials.title"

    move-object/from16 v6, p2

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 284
    const-string v5, "com.android.settings.ConfirmCredentials.header"

    move-object/from16 v7, p3

    invoke-virtual {v4, v5, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 285
    const-string v5, "com.android.settings.ConfirmCredentials.details"

    move-object/from16 v8, p4

    invoke-virtual {v4, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 286
    const-string v5, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    const-string v5, "com.android.settings.ConfirmCredentials.darkTheme"

    const/4 v9, 0x0

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 289
    const-string v5, "com.android.settings.ConfirmCredentials.showCancelButton"

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 290
    const-string v5, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 291
    const-string v5, "return_credentials"

    move/from16 v9, p6

    invoke-virtual {v4, v5, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 292
    const-string v5, "has_challenge"

    move/from16 v10, p8

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 293
    const-string v5, "challenge"

    move-wide/from16 v11, p9

    invoke-virtual {v4, v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 295
    const-string v5, ":settings:hide_drawer"

    const/4 v13, 0x1

    invoke-virtual {v4, v5, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    const-string v5, "android.intent.extra.USER_ID"

    move/from16 v14, p11

    invoke-virtual {v4, v5, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    const-string v5, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    move-object/from16 v15, p12

    invoke-virtual {v4, v5, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 298
    if-eqz v3, :cond_0

    .line 299
    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 301
    :cond_0
    const-string v5, "com.android.settings"

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v5, v13}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    if-eqz v2, :cond_2

    .line 303
    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 304
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v5, :cond_1

    .line 305
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 306
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5, v4}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 308
    :cond_1
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyOptionalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 309
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 312
    :cond_2
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v5, :cond_3

    .line 313
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 314
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v5, v4, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->copyInternalExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 317
    iget-object v5, v0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 320
    :goto_0
    const/4 v5, 0x1

    return v5
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I

    .line 228
    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILandroid/os/Bundle;)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I
    .param p11, "extras"    # Landroid/os/Bundle;

    .line 236
    const/4 v11, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method private launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z
    .locals 17
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "hasChallenge"    # Z
    .param p8, "challenge"    # J
    .param p10, "userId"    # I
    .param p11, "alternateButton"    # Ljava/lang/CharSequence;
    .param p12, "extras"    # Landroid/os/Bundle;

    move-object/from16 v14, p0

    .line 251
    iget-object v0, v14, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    move/from16 v13, p10

    invoke-virtual {v0, v13}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v12

    .line 252
    .local v12, "effectiveUserId":I
    const/4 v15, 0x0

    .line 254
    .local v15, "launched":Z
    iget-object v0, v14, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v12}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    .line 275
    move/from16 v16, v12

    goto/16 :goto_4

    .line 268
    :cond_0
    nop

    .line 269
    if-nez p5, :cond_2

    if-eqz p7, :cond_1

    goto :goto_0

    .line 271
    :cond_1
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword;

    goto :goto_1

    .line 270
    :cond_2
    :goto_0
    const-class v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    .line 268
    :goto_1
    move-object v5, v0

    move-object v0, v14

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move v11, v13

    move/from16 v16, v12

    move-object/from16 v12, p11

    .end local v12
    .local v16, "effectiveUserId":I
    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v15

    goto :goto_4

    .line 256
    .end local v16
    .restart local v12
    :cond_3
    move/from16 v16, v12

    .line 257
    .end local v12
    .restart local v16
    if-nez p5, :cond_5

    if-eqz p7, :cond_4

    goto :goto_2

    .line 259
    :cond_4
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern;

    goto :goto_3

    .line 258
    :cond_5
    :goto_2
    const-class v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    .line 256
    :goto_3
    move-object v5, v0

    move-object v0, v14

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-wide/from16 v9, p8

    move/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/Class;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v15

    .line 261
    nop

    .line 275
    :goto_4
    return v15
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 79
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J

    .line 167
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 168
    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    .line 167
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "challenge"    # J
    .param p7, "userId"    # I

    .line 185
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 186
    move/from16 v12, p7

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    .line 185
    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z
    .locals 12
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z

    .line 128
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 129
    invoke-static {v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;)I

    move-result v10

    .line 128
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "returnCredentials"    # Z
    .param p6, "external"    # Z
    .param p7, "userId"    # I

    .line 150
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 151
    move/from16 v12, p7

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    .line 150
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z
    .locals 7
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z

    .line 92
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "returnCredentials"    # Z
    .param p4, "userId"    # I

    .line 107
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 108
    move/from16 v12, p4

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    .line 107
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move/from16 v5, p3

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchConfirmationActivityForAnyUser(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "userId"    # I

    .line 218
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 219
    .local v0, "extras":Landroid/os/Bundle;
    const-string v1, "allow_any_user"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 220
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v11, p5

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILandroid/os/Bundle;)Z

    move-result v1

    return v1
.end method

.method public launchConfirmationActivityWithExternalAndChallenge(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZJI)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;
    .param p3, "header"    # Ljava/lang/CharSequence;
    .param p4, "description"    # Ljava/lang/CharSequence;
    .param p5, "external"    # Z
    .param p6, "challenge"    # J
    .param p8, "userId"    # I

    .line 206
    move-object v11, p0

    iget-object v0, v11, Lcom/android/settings/password/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 207
    move/from16 v12, p8

    invoke-static {v0, v12}, Lcom/android/settings/Utils;->enforceSameOwner(Landroid/content/Context;I)I

    move-result v10

    .line 206
    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object v0, v11

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJI)Z

    move-result v0

    return v0
.end method

.method public launchFrpConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 13
    .param p1, "request"    # I
    .param p2, "header"    # Ljava/lang/CharSequence;
    .param p3, "description"    # Ljava/lang/CharSequence;
    .param p4, "alternateButton"    # Ljava/lang/CharSequence;

    .line 242
    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, -0x270f

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v11, p4

    invoke-direct/range {v0 .. v12}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZZJILjava/lang/CharSequence;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
