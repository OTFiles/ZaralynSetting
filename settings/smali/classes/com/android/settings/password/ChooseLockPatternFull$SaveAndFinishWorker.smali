.class public Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;
.super Lcom/android/settings/password/SaveChosenLockWorkerBase;
.source "ChooseLockPatternFull.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPatternFull;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveAndFinishWorker"
.end annotation


# instance fields
.field private mChosenPattern:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPattern:Ljava/lang/String;

.field private mLockVirgin:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 800
    invoke-direct {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .line 847
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mLockVirgin:Z

    if-eqz v0, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 851
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    .line 852
    return-void
.end method

.method public bridge synthetic onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 800
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected saveAndVerifyInBackground()Landroid/content/Intent;
    .locals 6

    .line 822
    const/4 v0, 0x0

    .line 823
    .local v0, "result":Landroid/content/Intent;
    iget v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUserId:I

    .line 824
    .local v1, "userId":I
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    .line 826
    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mHasChallenge:Z

    if-eqz v2, :cond_1

    .line 829
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    iget-wide v4, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mChallenge:J

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/android/internal/widget/LockPatternUtils;->verifyPattern(Ljava/util/List;JI)[B

    move-result-object v2

    .line 832
    .local v2, "token":[B
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 830
    .end local v2
    :catch_0
    move-exception v2

    .line 831
    .local v2, "e":Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;
    const/4 v2, 0x0

    .line 834
    .local v2, "token":[B
    :goto_0
    if-nez v2, :cond_0

    .line 835
    const-string v3, "ChooseLockPattern"

    const-string v4, "critical: no token returned for known good pattern"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v0, v3

    .line 839
    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 842
    .end local v2
    :cond_1
    return-object v0
.end method

.method public bridge synthetic setBlocking(Z)V
    .locals 0

    .line 800
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setBlocking(Z)V

    return-void
.end method

.method public bridge synthetic setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 0

    .line 800
    invoke-super {p0, p1}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    return-void
.end method

.method public start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/util/List;Ljava/lang/String;I)V
    .locals 7
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p7, "currentPattern"    # Ljava/lang/String;
    .param p8, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "ZZJ",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 809
    .local p6, "chosenPattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p8

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V

    .line 811
    iput-object p7, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mCurrentPattern:Ljava/lang/String;

    .line 812
    iput-object p6, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mChosenPattern:Ljava/util/List;

    .line 813
    iput p8, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUserId:I

    .line 815
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isPatternEverChosen(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->mLockVirgin:Z

    .line 817
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPatternFull$SaveAndFinishWorker;->start()V

    .line 818
    return-void
.end method
