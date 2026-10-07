.class public final Lcom/android/settings/CredentialStorage;
.super Landroid/app/Activity;
.source "CredentialStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CredentialStorage$UnlockDialog;,
        Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;,
        Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;,
        Lcom/android/settings/CredentialStorage$ResetDialog;
    }
.end annotation


# instance fields
.field private mInstallBundle:Landroid/os/Bundle;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mRetriesRemaining:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 111
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CredentialStorage;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # I

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->clearLegacyVpnIfEstablished()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/CredentialStorage;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .line 96
    iget v0, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/CredentialStorage;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;
    .param p1, "x1"    # I

    .line 96
    iput p1, p0, Lcom/android/settings/CredentialStorage;->mRetriesRemaining:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/CredentialStorage;)Landroid/security/KeyStore;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .line 96
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/CredentialStorage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CredentialStorage;

    .line 96
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    return-void
.end method

.method private checkCallerIsCertInstallerOrSelfInProfile()Z
    .locals 7

    .line 434
    const-string v0, "com.android.certinstaller"

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getCallingPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 437
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 443
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getActivityToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v0

    .line 445
    .local v0, "launchedFromUid":I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    .line 446
    const-string v1, "CredentialStorage"

    const-string v3, "com.android.credentials.INSTALL must be started with startActivityForResult"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v2

    .line 449
    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 451
    return v2

    .line 453
    :cond_3
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .end local v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 457
    .local v0, "launchedFromUserId":I
    nop

    .line 456
    nop

    .line 459
    const-string v3, "user"

    invoke-virtual {p0, v3}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    .line 460
    .local v3, "userManager":Landroid/os/UserManager;
    invoke-virtual {v3, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v4

    .line 461
    .local v4, "parentInfo":Landroid/content/pm/UserInfo;
    if-eqz v4, :cond_5

    iget v5, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v5, v6, :cond_4

    goto :goto_1

    .line 465
    :cond_4
    return v1

    .line 463
    :cond_5
    :goto_1
    return v2

    .line 454
    .end local v0
    .end local v3
    .end local v4
    :catch_0
    move-exception v0

    .line 456
    .local v0, "re":Landroid/os/RemoteException;
    return v2
.end method

.method private checkKeyGuardQuality()Z
    .locals 3

    .line 211
    nop

    .line 212
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 213
    .local v0, "credentialOwner":I
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v1

    .line 214
    .local v1, "quality":I
    const/high16 v2, 0x10000

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private clearLegacyVpnIfEstablished()V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result v0

    .line 397
    .local v0, "isDone":Z
    if-eqz v0, :cond_0

    .line 398
    const v1, 0x7f121008

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 401
    :cond_0
    return-void
.end method

.method private confirmKeyGuard(I)Z
    .locals 4
    .param p1, "requestCode"    # I

    .line 472
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 473
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 475
    const v2, 0x7f120420

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 474
    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result v1

    .line 476
    .local v1, "launched":Z
    return v1
.end method

.method private ensureKeyGuard()V
    .locals 3

    .line 192
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/android/settings/security/ConfigureKeyGuardDialog;

    invoke-direct {v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;-><init>()V

    .line 195
    .local v0, "dialog":Lcom/android/settings/security/ConfigureKeyGuardDialog;
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConfigureKeyGuardDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 197
    return-void

    .line 200
    .end local v0
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/CredentialStorage;->confirmKeyGuard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 205
    return-void
.end method

.method private handleUnlockOrInstall()V
    .locals 3

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    sget-object v0, Lcom/android/settings/CredentialStorage$1;->$SwitchMap$android$security$KeyStore$State:[I

    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 183
    return-void

    .line 173
    :pswitch_0    # 0x3
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkKeyGuardQuality()Z

    move-result v0

    if-nez v0, :cond_1

    .line 174
    new-instance v0, Lcom/android/settings/security/ConfigureKeyGuardDialog;

    invoke-direct {v0}, Lcom/android/settings/security/ConfigureKeyGuardDialog;-><init>()V

    .line 175
    .local v0, "dialog":Lcom/android/settings/security/ConfigureKeyGuardDialog;
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "ConfigureKeyGuardDialog"

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/ConfigureKeyGuardDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 176
    return-void

    .line 178
    .end local v0
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->installIfAvailable()V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 180
    return-void

    .line 169
    :pswitch_1    # 0x2
    new-instance v0, Lcom/android/settings/CredentialStorage$UnlockDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$UnlockDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    .line 170
    return-void

    .line 165
    :pswitch_2    # 0x1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    .line 166
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2    # 0x1
        :pswitch_1    # 0x2
        :pswitch_0    # 0x3
    .end packed-switch
.end method

.method private installIfAvailable()V
    .locals 9

    .line 235
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 240
    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 242
    const-string v1, "install_as_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 244
    .local v1, "uid":I
    const/16 v3, 0x3f2

    if-eq v1, v2, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    invoke-static {v1, v4}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2

    .line 245
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 246
    .local v2, "dstUserId":I
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 249
    .local v4, "myUserId":I
    if-eq v1, v3, :cond_1

    .line 250
    const-string v3, "CredentialStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to install credentials as uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": cross-user installs may only target wifi uids"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 255
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.credentials.INSTALL"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x2000000

    .line 256
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v3

    .line 257
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    .line 258
    .local v3, "installIntent":Landroid/content/Intent;
    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, v2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v3, v5}, Lcom/android/settings/CredentialStorage;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 259
    return-void

    .line 262
    .end local v2
    .end local v3
    .end local v4
    :cond_2
    const-string v4, "user_private_key_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 263
    const-string v4, "user_private_key_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 264
    .local v4, "key":Ljava/lang/String;
    const-string v5, "user_private_key_data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 266
    .local v5, "value":[B
    const/4 v6, 0x1

    .line 267
    .local v6, "flags":I
    if-ne v1, v3, :cond_3

    invoke-direct {p0, v5}, Lcom/android/settings/CredentialStorage;->isHardwareBackedKey([B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 270
    const-string v3, "CredentialStorage"

    const-string v7, "Saving private key with FLAG_NONE for WIFI_UID"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const/4 v6, 0x0

    .line 274
    :cond_3
    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3, v4, v5, v1, v6}, Landroid/security/KeyStore;->importKey(Ljava/lang/String;[BII)Z

    move-result v3

    if-nez v3, :cond_4

    .line 275
    const-string v2, "CredentialStorage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as uid "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    return-void

    .line 284
    :cond_4
    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_5

    if-ne v1, v2, :cond_6

    .line 285
    :cond_5
    new-instance v3, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;

    const-string v7, "^USRPKEY_"

    const-string v8, ""

    .line 286
    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, p0, v7}, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;-><init>(Lcom/android/settings/CredentialStorage;Ljava/lang/String;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v3, v7}, Lcom/android/settings/CredentialStorage$MarkKeyAsUserSelectable;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 290
    .end local v4
    .end local v5
    .end local v6
    :cond_6
    const/4 v3, 0x0

    .line 292
    .local v3, "flags":I
    const-string v4, "user_certificate_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 293
    const-string v4, "user_certificate_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "certName":Ljava/lang/String;
    const-string v5, "user_certificate_data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 296
    .local v5, "certData":[B
    iget-object v6, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v4, v5, v1, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v6

    if-nez v6, :cond_7

    .line 297
    const-string v2, "CredentialStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void

    .line 302
    .end local v4
    .end local v5
    :cond_7
    const-string v4, "ca_certificates_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 303
    const-string v4, "ca_certificates_name"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 304
    .local v4, "caListName":Ljava/lang/String;
    const-string v5, "ca_certificates_data"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    .line 306
    .local v5, "caListData":[B
    iget-object v6, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v6, v4, v5, v1, v3}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    move-result v6

    if-nez v6, :cond_8

    .line 307
    const-string v2, "CredentialStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to install "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " as uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void

    .line 313
    .end local v4
    .end local v5
    :cond_8
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.security.action.KEYCHAIN_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 314
    .local v4, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/android/settings/CredentialStorage;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    invoke-virtual {p0, v2}, Lcom/android/settings/CredentialStorage;->setResult(I)V

    .line 317
    return-void

    .line 236
    .end local v0
    .end local v1
    .end local v3
    .end local v4
    :cond_9
    :goto_0
    return-void
.end method

.method private isHardwareBackedKey([B)Z
    .locals 5
    .param p1, "keyData"    # [B

    .line 219
    :try_start_0
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 220
    .local v0, "bIn":Lcom/android/org/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1InputStream;->readObject()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v1

    .line 221
    .local v1, "pki":Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "algOid":Ljava/lang/String;
    new-instance v3, Lsun/security/x509/AlgorithmId;

    new-instance v4, Lsun/security/util/ObjectIdentifier;

    invoke-direct {v4, v2}, Lsun/security/util/ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-virtual {v3}, Lsun/security/x509/AlgorithmId;->getName()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "algName":Ljava/lang/String;
    invoke-static {v3}, Landroid/security/KeyChain;->isBoundKeyAlgorithm(Ljava/lang/String;)Z

    move-result v4

    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    .line 225
    .end local v0
    .end local v1
    .end local v2
    .end local v3
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "CredentialStorage"

    const-string v2, "Failed to parse key data"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 486
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 487
    if-ne p2, v0, :cond_0

    .line 488
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 489
    .local v0, "password":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, v0}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 493
    return-void

    .line 497
    .end local v0
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    goto :goto_0

    .line 498
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 499
    if-ne p2, v0, :cond_2

    .line 500
    new-instance v0, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/CredentialStorage$ResetKeyStoreAndKeyChain;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 501
    return-void

    .line 504
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 506
    :cond_3
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 131
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "action":Ljava/lang/String;
    const-string v2, "user"

    invoke-virtual {p0, v2}, Lcom/android/settings/CredentialStorage;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 133
    .local v2, "userManager":Landroid/os/UserManager;
    const-string v3, "no_config_credentials"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 134
    const-string v3, "com.android.credentials.RESET"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance v3, Lcom/android/settings/CredentialStorage$ResetDialog;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/CredentialStorage$ResetDialog;-><init>(Lcom/android/settings/CredentialStorage;Lcom/android/settings/CredentialStorage$1;)V

    goto :goto_0

    .line 137
    :cond_0
    const-string v3, "com.android.credentials.INSTALL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->checkCallerIsCertInstallerOrSelfInProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 138
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CredentialStorage;->mInstallBundle:Landroid/os/Bundle;

    .line 141
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->handleUnlockOrInstall()V

    goto :goto_0

    .line 146
    :cond_2
    const-string v3, "com.android.credentials.UNLOCK"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/CredentialStorage;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v3}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v3

    sget-object v4, Landroid/security/KeyStore$State;->UNINITIALIZED:Landroid/security/KeyStore$State;

    if-ne v3, v4, :cond_3

    .line 147
    invoke-direct {p0}, Lcom/android/settings/CredentialStorage;->ensureKeyGuard()V

    goto :goto_0

    .line 149
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/CredentialStorage;->finish()V

    .line 152
    :goto_0
    return-void
.end method
