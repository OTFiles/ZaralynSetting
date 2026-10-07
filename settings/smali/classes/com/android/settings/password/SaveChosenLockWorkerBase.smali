.class abstract Lcom/android/settings/password/SaveChosenLockWorkerBase;
.super Landroid/app/Fragment;
.source "SaveChosenLockWorkerBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;,
        Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;
    }
.end annotation


# instance fields
.field private mBlocking:Z

.field protected mChallenge:J

.field private mFinished:Z

.field protected mHasChallenge:Z

.field private mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

.field private mResultData:Landroid/content/Intent;

.field protected mUserId:I

.field protected mUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mWasSecureBefore:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected finish(Landroid/content/Intent;)V
    .locals 3
    .param p1, "resultData"    # Landroid/content/Intent;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    .line 101
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 102
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 105
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 48
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->setRetainInstance(Z)V

    .line 50
    return-void
.end method

.method protected prepare(Lcom/android/internal/widget/LockPatternUtils;ZZJI)V
    .locals 3
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;
    .param p2, "credentialRequired"    # Z
    .param p3, "hasChallenge"    # Z
    .param p4, "challenge"    # J
    .param p6, "userId"    # I

    .line 65
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 66
    iput p6, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    .line 68
    iput-boolean p3, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mHasChallenge:Z

    .line 69
    iput-wide p4, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mChallenge:J

    .line 71
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 77
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setCredentialRequiredToDecrypt(Z)V

    .line 81
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    .line 82
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    .line 83
    return-void
.end method

.method protected abstract saveAndVerifyInBackground()Landroid/content/Intent;
.end method

.method public setBlocking(Z)V
    .locals 0
    .param p1, "blocking"    # Z

    .line 108
    iput-boolean p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    .line 109
    return-void
.end method

.method public setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V
    .locals 3
    .param p1, "listener"    # Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    .line 53
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-ne v0, p1, :cond_0

    .line 54
    return-void

    .line 57
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    .line 58
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mFinished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mListener:Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;

    iget-boolean v1, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mWasSecureBefore:Z

    iget-object v2, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mResultData:Landroid/content/Intent;

    invoke-interface {v0, v1, v2}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;->onChosenLockSaveFinished(ZLandroid/content/Intent;)V

    .line 61
    :cond_1
    return-void
.end method

.method protected start()V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/password/SaveChosenLockWorkerBase;->mBlocking:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->saveAndVerifyInBackground()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SaveChosenLockWorkerBase;->finish(Landroid/content/Intent;)V

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;-><init>(Lcom/android/settings/password/SaveChosenLockWorkerBase;Lcom/android/settings/password/SaveChosenLockWorkerBase$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SaveChosenLockWorkerBase$Task;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 91
    :goto_0
    return-void
.end method
