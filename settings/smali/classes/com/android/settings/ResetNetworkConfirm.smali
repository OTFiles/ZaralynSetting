.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;,
        Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field mEraseEsim:Z

.field mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

.field private mSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 247
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 67
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .line 67
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 67
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->getProgressDialog()Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetworkConfirm;)Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 67
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/ResetNetworkConfirm;Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;)Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;
    .param p1, "x1"    # Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    .line 67
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/ResetNetworkConfirm;

    .line 67
    iget v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return v0
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a017f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 277
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    return-void
.end method

.method private getProgressDialog()Landroid/app/ProgressDialog;
    .locals 3

    .line 233
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 234
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 235
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 236
    nop

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120bd5

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 238
    nop

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f120bd4

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 240
    return-object v0
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "__"    # Landroid/content/DialogInterface;

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method esimFactoryReset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 266
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    .line 268
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 270
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 334
    const/16 v0, 0x54

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 302
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 306
    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 308
    const-string v1, "erase_esim"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    .line 310
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 283
    nop

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 283
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 285
    .local v0, "admin":Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "no_network_reset"

    .line 286
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 285
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 287
    const v1, 0x7f0d00f2

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1

    .line 288
    :cond_0
    if-eqz v0, :cond_1

    .line 289
    new-instance v1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string v2, "no_network_reset"

    .line 290
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;

    invoke-direct {v2, p0}, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    .line 291
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 293
    new-instance v1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object v1

    .line 295
    :cond_1
    const v1, 0x7f0d0180

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 296
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 297
    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object v1
.end method

.method public onDestroy()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->cancel(Z)Z

    .line 316
    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 321
    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    invoke-virtual {v0}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;->cancel(Z)Z

    .line 326
    iput-object v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mResetNetworkTask:Lcom/android/settings/ResetNetworkConfirm$ResetNetworkAyncTask;

    .line 329
    :cond_2
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 330
    return-void
.end method
