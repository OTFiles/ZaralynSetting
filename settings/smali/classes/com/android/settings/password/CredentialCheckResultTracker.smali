.class public Lcom/android/settings/password/CredentialCheckResultTracker;
.super Landroid/app/Fragment;
.source "CredentialCheckResultTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/CredentialCheckResultTracker$Listener;
    }
.end annotation


# instance fields
.field private mHasResult:Z

.field private mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

.field private mResultData:Landroid/content/Intent;

.field private mResultEffectiveUserId:I

.field private mResultMatched:Z

.field private mResultTimeoutMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public clearResult()V
    .locals 2

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 72
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 73
    iput v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 74
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setRetainInstance(Z)V

    .line 40
    return-void
.end method

.method public setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V
    .locals 7
    .param p1, "listener"    # Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    .line 43
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-ne v0, p1, :cond_0

    .line 44
    return-void

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    .line 48
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    if-eqz v0, :cond_1

    .line 49
    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    .line 52
    :cond_1
    return-void
.end method

.method public setResult(ZLandroid/content/Intent;II)V
    .locals 7
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    .line 56
    iput-object p2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    .line 57
    iput p3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    .line 58
    iput p4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    .line 60
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 61
    iget-object v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    if-eqz v0, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mListener:Lcom/android/settings/password/CredentialCheckResultTracker$Listener;

    iget-boolean v2, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultMatched:Z

    iget-object v3, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultData:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultTimeoutMs:I

    iget v5, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mResultEffectiveUserId:I

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/android/settings/password/CredentialCheckResultTracker$Listener;->onCredentialChecked(ZLandroid/content/Intent;IIZ)V

    .line 64
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/CredentialCheckResultTracker;->mHasResult:Z

    .line 66
    :cond_0
    return-void
.end method
