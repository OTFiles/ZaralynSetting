.class public Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPassword:Ljava/lang/String;

.field private mCurrentPassword:Ljava/lang/String;

.field private mRequestedQuality:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1010
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1010
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 6

    .line 1031
    const/4 v0, 0x0

    .line 1032
    .local v0, "result":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1035
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v1, :cond_1

    .line 1038
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    iget-wide v3, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChallenge:J

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyPassword(Ljava/lang/String;JI)[B

    move-result-object v1

    .line 1041
    .local v1, "token":[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1039
    .end local v1
    :catch_0
    move-exception v1

    .line 1040
    .local v1, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v1, 0x0

    .line 1043
    .local v1, "token":[B
    :goto_0
    if-nez v1, :cond_0

    .line 1044
    const-string v2, "ChooseLockPassword"

    const-string v3, "critical: no token returned for known good password."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    move-object v0, v2

    .line 1048
    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1051
    .end local v1
    :cond_1
    return-object v0
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 1010
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 1010
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "required"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "chosenPassword"    # Ljava/lang/String;
    .param p7, "currentPassword"    # Ljava/lang/String;
    .param p8, "requestedQuality"    # I
    .param p9, "userId"    # I

    move-object v7, p0

    .line 1019
    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move/from16 v6, p9

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 1021
    move-object v0, p6

    iput-object v0, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mChosenPassword:Ljava/lang/String;

    .line 1022
    move-object v1, p7

    iput-object v1, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mCurrentPassword:Ljava/lang/String;

    .line 1023
    move/from16 v2, p8

    iput v2, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mRequestedQuality:I

    .line 1024
    move/from16 v3, p9

    iput v3, v7, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->mUserId:I

    .line 1026
    invoke-virtual {v7}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start()V

    .line 1027
    return-void
.end method
